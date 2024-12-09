import os
import tiktoken
import json
from argparse import ArgumentParser
from pathlib import Path
from typing import Union
import stanza
from stanza.pipeline.core import DownloadMethod
from llm_planning.planning_set_up import create_game, get_game_class, set_up_configurations, get_gold_based_steps
from llm_planning.game_classes.pddl_game_env import PDDLWorldEnvironment


def count_input_tokens_problem(domain_nl_file: str, domain_pddl_file: str, instance_file: str, model: str, nlp_processor):
    """
    Count the tokens for the description of the initial state of the problem in the instance file
    :param domain_nl_file: nl domain description (.json file)
    :param domain_pddl_file: pddl domain description
    :param instance_file: pddl file with the problem
    :param model:
    :return:
    """
    with open(domain_nl_file, 'r') as nl_file:
        domain_nl = json.load(nl_file)

    domain_env = PDDLWorldEnvironment(domain_nl=domain_nl, instance_file=instance_file, domain_file=domain_pddl_file, nlp_processor=nlp_processor)

    initial_state = domain_env.get_description_initial_state()
    n_tokens = count_model_tokens(text=initial_state, model=model)

    return n_tokens


def count_initial_input_tokens(config_file: str, few_shot_id: int, seed: int) -> int:
    """
    Create the prompt using the template specified in the config file and the specified few-shot example
    in the format for the approach specified in the config
    Count the tokens of the prompt when encoded for the specific plan model
    Add all few-shot example text as well
    :param config_file:
    :param few_shot_id:
    :return:
    """
    config, few_shot_path = set_up_configurations(config_file, few_shot_id, seed=seed)
    encoding_type = config.get('encoding_type', 'automatic')
    thoughts = config['thoughts']
    planbench = True if encoding_type == 'planbench' else False

    game_class = get_game_class(thoughts=thoughts, planbench=planbench)
    task_num = config["task_nums"][0]
    instance_config = config.copy()
    instance_config.pop('run_config')

    game = create_game(task_num=task_num, instance_config=instance_config, few_shot_path=few_shot_path,
                       game_class=game_class)

    initial_content = ''
    initialized_model = game.llm_plan.model
    initial_history = initialized_model.get_initial_history()
    for entry in initial_history:
        initial_content += f"{entry['content']} "

    model = config['llm_config']['plan']['model_path']
    n_tokens = count_model_tokens(text=initial_content, model=model)

    return n_tokens, config


def count_model_tokens(text: str, model: str) -> int:
    """
    Count the number of tokens for encoding text using model
    :param text: the text for which tokens should be counted
    :param model: the model name, e.g. 'gpt-4'
    :return:
    """
    encoding = tiktoken.encoding_for_model(model)
    num_tokens = len(encoding.encode(text))
    return num_tokens


def get_token_counts_all_instances(config_file: str, few_shot_id: int, output_file: Union[str, None]):
    """

    :param config_file: the file with the configurations needed for creating the prompts
    :param few_shot_id:
    :param output_file: if None then will be printed to console otherwise token counts for each instance will
                        be written to the specified .json file
    :return:
    """
    with open(config_file, 'r') as f:
        config = json.load(f)

    tokens_per_inst = {}

    nlp_processor = stanza.Pipeline(lang='en',
                                    processors='tokenize,mwt,pos,lemma,depparse',
                                    download_method=DownloadMethod.REUSE_RESOURCES,
                                    logging_level='WARN', use_gpu=False)

    # TODO: all seeds?
    tokens_prompt, config = count_initial_input_tokens(config_file=config_file, few_shot_id=few_shot_id, seed=1)

    domain_pddl_file = config['domain_file']
    domain_nl_file = config['domain_nl_file']
    instance_dir = config['instance_dir']
    model = config['llm_config']['plan']['model_path']

    for inst_id in config['task_nums']:
        instance_file_name = f'instance-{inst_id}.pddl'
        instance_file = os.path.join(instance_dir, instance_file_name)
        instance_tokens = count_input_tokens_problem(domain_nl_file=domain_nl_file,
                                                     domain_pddl_file=domain_pddl_file,
                                                     instance_file=instance_file,
                                                     model=model,
                                                     nlp_processor=nlp_processor)
        total_tokens = tokens_prompt + instance_tokens

        max_steps = get_gold_based_steps(domain_dir=config['domain_dir'],
                                         task_num=inst_id)

        tokens_per_inst[instance_file_name] = {'prompt_tokens': tokens_prompt,
                                               'problem_tokens': instance_tokens,
                                               'total_tokens': total_tokens,
                                               'max_steps': max_steps}

    if output_file is not None:
        with open(output_file, 'w') as f:
            json.dump(tokens_per_inst, f)
    else:
        print(tokens_per_inst)

    return tokens_per_inst


def estimate_cost_prompt(num_tokens, price_per_1M, batching: bool):
    """

    :param num_tokens: number of tokens
    :param price_per_1k: price per 1 000 000 input tokens
    :return:
    """
    if batching:
        input_price = num_tokens / 1000000 * (price_per_1M * 0.5)
    else:
        input_price = num_tokens / 1000000 * price_per_1M

    print(f'Input price: {input_price}')

    return input_price


def estimate_costs(configs_dir,
                   config_subdir,
                   only_thoughts: bool = False):

    output_estimate_tokens = 100

    all_costs = dict()
    Path('cost_estimates').mkdir(exist_ok=True)
    Path('cost_estimates_thought_only').mkdir(exist_ok=True)

    dataset_costs = dict()

    print(f'Estimating costs for {config_subdir}')

    for config_file in os.listdir(os.path.join(configs_dir, config_subdir)):

        if only_thoughts:
            if 'cot' not in str(config_file) and 'react' not in str(config_file):
                continue

        config_file_path = os.path.join(configs_dir, config_subdir, config_file)
        with open(config_file_path, 'r') as f:
            config = json.load(f)

        if 'pddl' in config['planning_approach']:
            continue

        n_tokens_dict = get_token_counts_all_instances(config_file=config_file_path,
                                                        few_shot_id=0,
                                                        output_file=None)

        n_tokens_all_instances = 0
        n_tokens_output_estimates_all_instances = 0
        n_tokens_prompt = 0

        n_instances = len(config['task_nums'])

        if config['planning_approach'] in ['basic', 'cot']:
            for inst, token_dict in n_tokens_dict.items():
                n_tokens = token_dict['total_tokens']
                n_tokens_all_instances += n_tokens
                n_tokens_output_estimates_all_instances += output_estimate_tokens * token_dict['max_steps']
                n_tokens_prompt = token_dict['prompt_tokens']

            input_cost = estimate_cost_prompt(num_tokens=n_tokens_all_instances,
                                              price_per_1M=2.5,
                                              batching=True)
            output_cost = estimate_cost_prompt(num_tokens=n_tokens_output_estimates_all_instances,
                                               price_per_1M=10,
                                               batching=False)

        elif config['planning_approach'] in ['act', 'react']:
            for inst, token_dict in n_tokens_dict.items():
                n_tokens = token_dict['total_tokens'] * token_dict['max_steps']
                n_tokens_all_instances += n_tokens
                n_tokens_output_estimates_all_instances += output_estimate_tokens * token_dict['max_steps']
                n_tokens_prompt = token_dict['prompt_tokens']

            input_cost = estimate_cost_prompt(num_tokens=n_tokens_all_instances,
                                              price_per_1M=2.5,
                                              batching=False)
            output_cost = estimate_cost_prompt(num_tokens=n_tokens_output_estimates_all_instances,
                                               price_per_1M=10,
                                               batching=False)

        else:
            continue

        dataset_costs[config['planning_approach']] = {'input': input_cost,
                                                      'output': output_cost,
                                                      'n_initial_tokens': n_tokens_prompt,
                                                      'n_input_tokens': n_tokens_all_instances,
                                                      'n_instances': n_instances}

    all_costs[config_subdir] = dataset_costs

    suffix = '_thought_only' if only_thoughts else ''

    with open(f'cost_estimates{suffix}/{config_subdir}_costs.json', 'w') as f:
        json.dump(dataset_costs, f, indent=2)

    with open(f'cost_estimates{suffix}/{config_subdir}_costs.csv', 'w') as f:
        content = f'setup\tapproach\tinput_cost\toutput_cost\tn_instances\tn_initial_tokens\tn_input_tokens\n'
        for approach, data in dataset_costs.items():
            content_list = [config_subdir, approach, data['input'], data['output'],
                            data['n_instances'], data['n_initial_tokens'], data['n_input_tokens']]
            content_list = [str(c) for c in content_list]
            content += '\t'.join(content_list)
            content += '\n'
        f.write(content)


if __name__=='__main__':
    parser = ArgumentParser()
    parser.add_argument('--cd')
    parser.add_argument('--ot', required=False, default=False)

    args = parser.parse_args()

    estimate_costs(configs_dir='./configs',
                   config_subdir=args.cd,
                   only_thoughts=args.ot)

