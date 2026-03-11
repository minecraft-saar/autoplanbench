import json
from diskcache import Cache
from argparse import ArgumentParser
from .utils.helpers import get_cache_dir


def parse_batch_request_output_and_add_to_cache(
        request_input_file: str,
        request_output_file: str,
        use_fingerprint: bool = True
):
    """

    :param request_input_file:
    :param request_output_file:
    :param use_fingerprint:
    :return:
    """
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
        model_fingerprint = outp['response']['body']

    # get model type and based on this the cache dir
    if use_fingerprint:
        cache_dir = get_cache_dir(f'openai_chat_{model_fingerprint}', None)
    else:
        cache_dir = get_cache_dir(f'openai_chat_{model_name}', None)

    for key, value in paired_data.items():

        cache_query = create_cache_query(value['input_content'], value['seed'])
        #print(cache_query)
        response = convert_completion_response(value['output_content'])
        #print(response)

        with Cache(directory=cache_dir) as cache:
            cache[cache_query] = response


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


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('--ri', required=True, help='Path to the batch request input file')
    parser.add_argument('--ro', required=True, help='Path to the batch request output file')
    parser.add_argument('--fp', required=False, default=True, help='Whether to use the system fingerprint to determine the cache directory (True) or only the general model name (False). Default is True')

    args = parser.parse_args()

    parse_batch_request_output_and_add_to_cache(
        request_input_file=args.ri,
        request_output_file=args.ro,
        use_fingerprint=args.fp
    )

