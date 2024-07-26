import os
import openai
from ast import literal_eval
from argparse import ArgumentParser
from llm_planning.batch_requests import submit_batch_request, create_batch_request_file, retrieve_response_batch_request
from set_env import set_env_vars

set_env_vars()
openai.api_key = os.environ['OPENAI_API_KEY']


if __name__=='__main__':

    parser = ArgumentParser()
    # Option for creating batch request
    # Option for continuing with batch outcome
    parser.add_argument('-m', required=True, help="Mode to use: 'C' for creating batch request file, 'S' for submitting, 'CS' for creating + submitting, 'R' for retrieving")
    parser.add_argument('--config', required=True)
    parser.add_argument('--few-shot-id', required=False)

    args = parser.parse_args()

    batch_meta_dir = './batching/batch_submit_files'
    batch_request_dir = './batching/batch_requests'

    orig_dir_structure, config_file_name = os.path.split(args.config)
    dir_structure = orig_dir_structure.replace('./configs', batch_request_dir)
    dir_structure_meta = orig_dir_structure.replace('./configs', batch_meta_dir)

    if 'config_batching' in config_file_name:
        batch_file_name = config_file_name.replace('config_batching', 'batch_request')
    else:
        batch_file_name = config_file_name.replace('config', 'batch_request')

    batch_file_path = os.path.join(dir_structure, batch_file_name)

    meta_file_path = os.path.join(dir_structure_meta, batch_file_name)

    print(batch_file_name)
    print(batch_file_path)
    print(meta_file_path)

    if args.m in ['C', 'CS', 'S']:
        assert 'batch_request' in batch_file_name

    if args.m == 'C' or args.m == 'CS':
        create_batch_request_file(config_file=args.config,
                                  few_shot_id=args.few_shot_id,
                                  batch_file_name=batch_file_path)

    if args.m == 'S' or args.m == 'CS':
        submit_batch_request(batch_request_file=batch_file_path,
                             batch_request_details_config=meta_file_path)

    if args.m == 'R':
        retrieve_response_batch_request(batch_request_details_path=meta_file_path)




