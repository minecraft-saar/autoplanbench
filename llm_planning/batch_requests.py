import os
import openai
import time
from diskcache import Cache
from openai import OpenAI
import json
from pathlib import Path
from copy import deepcopy
from utils.paths import get_cache_dir
from llm_planning.planning_set_up import get_game_class, set_up_configurations, get_gold_based_steps, create_game
from model_classes.openai_models import OpenAIChatModel
from set_env import set_env_vars

set_env_vars()
openai.api_key = os.environ['OPENAI_API_KEY']


"""
Code making batch API requests
"""


def create_batch_request_file(config_file, few_shot_id, batch_file_name, seed):

    batch_tasks = create_batch_tasks(config_file=config_file, few_shot_id=few_shot_id, seed=seed)

    path_batch_file = os.path.split(batch_file_name)[0]
    Path(path_batch_file).mkdir(exist_ok=True, parents=True)

    with open(batch_file_name, 'w') as bf:
        for obj in batch_tasks:
            bf.write(json.dumps(obj) + '\n')


def create_batch_tasks(config_file, few_shot_id, seed):

    config, few_shot_path = set_up_configurations(config_file, few_shot_id, seed)

    assert not config['incremental'], 'Warning: batch request is not implemented for incremental planning mechanisms!'

    encoding_type = config.get('encoding_type', 'automatic')
    thoughts = config['thoughts']
    planbench = True if encoding_type == 'planbench' else False

    if 'pddl' in config['planning_approach']:
        pddl = True
    else:
        pddl = False

    game_class = get_game_class(thoughts=thoughts, planbench=planbench, pddl=pddl)

    batch_tasks = []

    for task_index, task_num in enumerate(config["task_nums"]):
        instance_config = deepcopy(config)
        run_config = instance_config.pop('run_config')
        instance_config['llm_config']['plan']['batching'] = True

        if run_config['steps'] is None:
            steps = get_gold_based_steps(domain_dir=instance_config['domain_dir'],
                                         task_num=task_num)
            run_config['steps'] = steps
        game = create_game(task_num=task_num, instance_config=instance_config, few_shot_path=few_shot_path,
                           game_class=game_class)

        break_limit = run_config['break_limit']
        assert break_limit == 1

        plan_llm = game.run_instructions_all_complete(attempts=break_limit,
                                                      batching=True)

        batch_input = plan_llm.get_history()

        #custom_id = f"task-{task_index}"
        custom_id = f"task-{task_num}-{config_file}"
        task = {
            "custom_id": custom_id,
            "method": "POST",
            "url": "/v1/chat/completions",
            "body":
                {
                    "model": plan_llm.model.model_path,
                    "temperature": plan_llm.model.temp,
                    "max_tokens": plan_llm.model.max_tokens,
                    "seed": plan_llm.model.seed,
                    "logprobs": plan_llm.model.logprobs,
                    "messages": batch_input
                }
        }
        batch_tasks.append(task)

    return batch_tasks



def submit_batch_request(batch_request_file, batch_request_details_config):

    client = OpenAI()
    batch_input_file = client.files.create(
        file=open(batch_request_file, "rb"),
        purpose="batch"
    )

    time.sleep(120)
    print(f"BATCH openai.files.create() Uploaded jsonl file response: {batch_input_file}")

    batch_input_file_id = batch_input_file.id


    batch_job = client.batches.create(
        input_file_id=batch_input_file.id,
        endpoint='/v1/chat/completions',
        completion_window="24h",
        metadata={
            "description": "nightly eval job"
        }
    )

    print(f"BATCH client.batches.create() response: {batch_job}")
    batch_id = batch_job.id

    # Data to be written
    data = {
        "local_batch_input_file_path": batch_request_file,
        "batch_input_file_id": batch_input_file_id,
        "batch_id": batch_id
    }
    path_to_meta = os.path.split(batch_request_details_config)[0]
    Path(path_to_meta).mkdir(exist_ok=True, parents=True)

    # Write data to JSON file
    with open(batch_request_details_config, 'w') as f:
        json.dump(data, f, indent=4)

    print(f"Details written to {batch_request_details_config}")


def retrieve_response_batch_request(batch_request_details_path):

    client = OpenAI()

    with open(batch_request_details_path, 'r') as file:
        data = json.load(file)
    batch_id = data['batch_id']
    print("Batch ID:", batch_id)

    retrieve_status = client.batches.retrieve(batch_id)
    print(f"BATCH  openai.batches.retrieve() response: {retrieve_status}")

    all_successfull = True
    not_finished = False

    if retrieve_status.output_file_id:
        output_file_id = retrieve_status.output_file_id
        content = client.files.content(output_file_id)
        print(f"BATCH obtained output_file_id: {output_file_id} content: {content}")

        failed_requests = retrieve_status.request_counts.failed
        if failed_requests != 0:
            all_successfull = False
            print(f'Batch request failed at {failed_requests} instances')

        batch_output_file_path = data['local_batch_input_file_path'].replace("batch_request_", "batch_response_")
        with open(batch_output_file_path, 'wb') as file:
            file.write(content.content)
        print(f"Content successfully saved to {batch_output_file_path}")

        parse_batch_request_output_and_add_to_cache(
            request_input_file=data['local_batch_input_file_path'],
        request_output_file=batch_output_file_path)

    elif retrieve_status.status == 'completed':
        error_file_id = retrieve_status.error_file_id
        content = client.files.content(error_file_id)
        all_successfull = False
        print(f'BATCH failed')

        path_for_error_file, name_detail_file = os.path.split(batch_request_details_path)
        error_file_name = name_detail_file.replace("batch_request_", "batch_errors_")

        error_output_file_path = os.path.join(path_for_error_file, error_file_name)
        with open(error_output_file_path, 'wb') as file:
            file.write(content.content)
    else:
        all_successfull = False
        not_finished = True
        print('Response not available yet.')

    return all_successfull, not_finished


def parse_batch_request_output_and_add_to_cache(
        request_input_file,
        request_output_file
):
    input_data = []
    output_data = []
    # loop over all responses in the file
    with open(request_input_file, 'r') as rif:
        for line in rif:
            input_data.append(json.loads(line.strip()))

    with open(request_output_file, 'r') as rof:
        for line in rof:
            output_data.append(json.loads(line.strip()))

    paired_data = dict()

    for inp in input_data:
        input_id = inp['custom_id']
        paired_data[input_id] = {'input_content': inp['body']['messages']}
        paired_data[input_id]['seed'] = inp['body']['seed']
        model_name = inp['body']['model']

    for outp in output_data:
        output_id = outp['custom_id']
        output_content = outp['response']['body']
        paired_data[output_id]['output_content'] = output_content

    # get model type and based on this the cache dir
    cache_dir = get_cache_dir(f'openai_chat_{model_name}', None)

    for key, value in paired_data.items():

        cache_query = create_cache_query(value['input_content'], value['seed'])
        try:
            response = convert_completion_response(value['output_content'])
            with Cache(directory=cache_dir) as cache:
                cache[cache_query] = response

        except KeyError:
            print(f'Error: There was not response generated for instance {key}')



def create_cache_query(history, seed):
    # put together everything that is in the chat history (this already includes the prompt)
    text_query = ''
    for entry in history:
        for role, content in entry.items():
            text_query += f'{role}: {content} // '
    # Add the seed as part of the cache query
    cache_query = (text_query, seed)

    return cache_query

def convert_completion_response(response_body):
    dict_response = dict()
    dict_response['id'] = response_body['id']
    dict_response['created'] = response_body['created']
    dict_response['model'] = response_body['model']
    dict_response['system_fingerprint'] = response_body['system_fingerprint']
    dict_response['usage'] = {"completion_tokens": response_body['usage']['completion_tokens'],
                              "prompt_tokens": response_body['usage']['prompt_tokens'],
                              "total_tokens": response_body['usage']['total_tokens']}
    dict_response['object'] = response_body['object']
    dict_response['choices'] = []
    for choice in response_body['choices']:
        current_choice = dict()
        current_choice['finish_reason'] = choice['finish_reason']
        current_choice['index'] = choice['index']
        current_choice['message'] = {'content': choice['message']['content'],
                                     'role': choice['message']['role']}
        if 'logprobs' in choice.keys():
            current_choice['logprobs'] = []
            for token_logprob in choice['logprobs']['content']:
                current_token = {'token': token_logprob['token'],
                                 'bytes': token_logprob['bytes'],
                                 'logprob': token_logprob['logprob'],
                                 'top_logprobs': token_logprob['top_logprobs']}
                current_choice['logprobs'].append(current_token)
        else:
            current_choice['logprobs'] = None
        dict_response['choices'].append(current_choice)

    return dict_response

