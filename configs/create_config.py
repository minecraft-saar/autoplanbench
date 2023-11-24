import os
import json
from copy import deepcopy
from pathlib import Path
from argparse import ArgumentParser
from typing import Union
from ast import literal_eval
from utils.paths import *


"""
Code to automatically generate the config files for the different 
planning approaches for a domain with the parameters used for the experiments
"""


def get_standard_config(config_template: Union[str, None]= None):
    if config_template is None:
        config_template = os.path.join(CONFIG_DIR, 'config_default_template.json')
    with open(config_template, 'r') as f:
        config = json.load(f)
    return config


def generate_configs(domain_name: str,
                     domain_dir: Union[str, None],
                     max_steps_inter: Union[int, None] = None,
                     break_limit_inter: Union[int, None] = None,
                     max_steps_noninter: Union[int, None] = None,
                     break_limit_noninter: Union[int, None] = None,
                     ex_id: Union[int, None] = None,
                     encoding: str = 'automatic',
                     model: str = 'gpt-4'):

    if not domain_dir:
        domain_dir = os.path.join(DATA_DIR, domain_name)

    domain_file = os.path.join(domain_dir, 'domain.pddl')
    domain_nl_file = os.path.join(domain_dir, 'domain_description.json')
    instance_dir = os.path.join(domain_dir, INST_FOLDER)

    config = get_standard_config()
    config['domain_dir'] = domain_dir
    config['domain_file'] = domain_file
    config['domain_nl_file'] = domain_nl_file
    config['instance_dir'] = instance_dir
    config['llm_config']['plan']['model_path'] = model
    config['llm_config']['translate']['model_path'] = model
    config['encoding_type'] = encoding

    config['llm_config']['translate']['prompt_file'] = './llm_planning/prompt_templates/translation_template.txt'
    config['llm_config']['translate']['examples_file'] = os.path.join(domain_dir, 'translation_examples.json')

    # task nums
    instances = get_available_inst_ids(domain_name=domain_name)
    if ex_id:
        assert ex_id in instances
        try:
            instances.remove(ex_id)
        except ValueError:
            print(f'Warning: No file for instance {ex_id} exists.')
    config['task_nums'] = instances

    act_config = deepcopy(config)
    state_config = deepcopy(config)
    react_config = deepcopy(config)
    basic_config = deepcopy(config)
    cot_config = deepcopy(config)

    act_config= generate_act_config(config=act_config, domain_name=domain_name, encoding=encoding, max_steps=max_steps_inter, break_limit=break_limit_inter)
    state_config = generate_act_config(config=state_config, domain_name=domain_name, encoding=encoding, max_steps=max_steps_inter, break_limit=break_limit_inter)
    react_config = generate_react_config(config=react_config, domain_name=domain_name, encoding=encoding, max_steps=max_steps_inter, break_limit=break_limit_inter)
    basic_config = generate_basic_config(config=basic_config, domain_name=domain_name, encoding=encoding, max_steps=max_steps_noninter, break_limit=break_limit_noninter)
    cot_config = generate_cot_config(config=cot_config, domain_name=domain_name, encoding=encoding, max_steps=max_steps_noninter, break_limit=break_limit_noninter)

    create_config_domain_dir(domain_name=domain_name, config_dir=CONFIG_DIR)

    with open(get_config_file(domain_name=domain_name, config_dir=CONFIG_DIR, approach='basic', model=model), 'w') as f:
        json.dump(basic_config, f, indent=4)

    with open(get_config_file(domain_name=domain_name, config_dir=CONFIG_DIR, approach='act', model=model), 'w') as f:
        json.dump(act_config, f, indent=4)

    with open(get_config_file(domain_name=domain_name, config_dir=CONFIG_DIR, approach='react', model=model), 'w') as f:
        json.dump(react_config, f, indent=4)

    with open(get_config_file(domain_name=domain_name, config_dir=CONFIG_DIR, approach='state', model=model), 'w') as f:
        json.dump(state_config, f, indent=4)

    with open(get_config_file(domain_name=domain_name, config_dir=CONFIG_DIR, approach='cot', model=model), 'w') as f:
        json.dump(cot_config, f, indent=4)



def get_available_inst_ids(domain_name):
    list_ids = []
    if 'planbench' in domain_name:
        inst_dir_rel = os.path.join(PROJ_DIR, PLANBENCH_DATA_DIR, domain_name, INST_FOLDER)

    else:
        inst_dir_rel = os.path.join(PROJ_DIR, DATA_DIR, domain_name, INST_FOLDER)

    for instance_file in os.listdir(inst_dir_rel):
        instance_file = str(instance_file)
        instance_file_name = instance_file.replace('.pddl', '')
        instance_file_id = instance_file_name.replace('instance-', '')
        list_ids.append(int(instance_file_id))
    return list_ids


def generate_interactive_config(config:dict, encoding: str, max_steps: int, break_limit: int):
    config['incremental'] = True
    config['run_config']['steps'] = max_steps if max_steps else 24
    config['run_config']['break_limit'] = break_limit if break_limit else 5

    if encoding == 'automatic':
        config['llm_config']['plan'][
            'prompt_file'] = './llm_planning/prompt_templates/planning_template_interactive.txt'
    else:
        config['llm_config']['plan'][
            'prompt_file'] = './llm_planning/prompt_templates/planning_template_interactive_planbench.txt'

    return config


def generate_act_config(config: dict, domain_name: str, encoding: str, max_steps: int, break_limit: int):

    config = generate_interactive_config(config, encoding, max_steps, break_limit)

    config['planning_approach'] = 'act'
    config['thoughts'] = False
    config['run_config']['directory'] = f'{domain_name}_{config["planning_approach"]}_1_shot'

    return config


def generate_react_config(config: dict, domain_name: str, encoding: str, max_steps: int, break_limit: int):

    config = generate_interactive_config(config, encoding, max_steps, break_limit)

    config['planning_approach'] = 'react'
    config['thoughts'] = True
    config['run_config']['directory'] = f'{domain_name}_{config["planning_approach"]}_1_shot'

    return config


def generate_state_react_config(config: dict, domain_name: str, encoding: str, max_steps: int, break_limit: int):

    config = generate_interactive_config(config, encoding, max_steps, break_limit)

    config['planning_approach'] = 'state_reasoning'
    config['thoughts'] = True
    config['run_config']['directory'] = f'{domain_name}_{config["planning_approach"]}_1_shot'

    return config


def generate_non_interactive_config(config: dict, encoding: str, max_steps: int, break_limit: int):

    config['incremental'] = False
    config['run_config']['steps'] = max_steps if max_steps else 1
    config['run_config']['break_limit'] = break_limit if break_limit else 1

    if encoding == 'automatic':
        config['llm_config']['plan']['prompt_file'] = './llm_planning/prompt_templates/planning_template_non_interactive.txt'

    else:
        config['llm_config']['plan'][
            'prompt_file'] = './llm_planning/prompt_templates/planning_template_non_interactive_planbench.txt'

    return config


def generate_basic_config(config: dict, domain_name: str, encoding: str, max_steps: int, break_limit: int):

    config = generate_non_interactive_config(config, encoding, max_steps, break_limit)

    config['planning_approach'] = 'basic'
    config['thoughts'] = False
    config['run_config']['directory'] = f'{domain_name}_{config["planning_approach"]}_1_shot'

    return config


def generate_cot_config(config: dict, domain_name:str, encoding: str, max_steps: int, break_limit: int):

    config = generate_non_interactive_config(config, encoding, max_steps, break_limit)

    config['planning_approach'] = 'cot'
    config['thoughts'] = True
    config['run_config']['directory'] = f'{domain_name}_{config["planning_approach"]}_1_shot'

    return config


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('-d', required=True, help='domain name')
    parser.add_argument('--d-dir', required=False, help='path domain directory. detauls to utils.paths.DATA_DIR/domain_name')
    parser.add_argument('--ex-id', required=False, default=None, help='ID of instance that gets used as few-shot example and should be excluded from the experiment')
    parser.add_argument('--enc', required=False, default='automatic', help='Encoding: either "automatic" or "planbench", default is "automatic"')
    parser.add_argument('--llm', required=True, help='LLM name to use')
    parser.add_argument('--ms-i', required=False, help='Max number of steps interactive approaches; defaults to 24')
    parser.add_argument('--br-i', required=False, help='Break limit for interactive approaches; defaults to 5')
    parser.add_argument('--ms-ni', required=False, help='Max number of steps noninteractive approaches; defaults to 1')
    parser.add_argument('--br-ni', required=False, help='Break limit for noninteractive approaches; defaults to 1')

    args = parser.parse_args()

    ex_id = literal_eval(args.ex_id) if isinstance(args.ex_id, str) else None
    ms_i = literal_eval(args.ms_i) if isinstance(args.ms_i, str) else args.ms_i
    br_i = literal_eval(args.br_i) if isinstance(args.br_i, str) else args.br_i
    ms_ni = literal_eval(args.ms_ni) if isinstance(args.ms_ni, str) else args.ms_ni
    br_ni = literal_eval(args.br_ni) if isinstance(args.br_ni, str) else args.br_ni

    generate_configs(domain_name=args.d,
                     domain_dir=args.d_dir,
                     max_steps_inter=ms_i,
                     break_limit_inter=br_i,
                     max_steps_noninter=ms_ni,
                     break_limit_noninter=br_ni,
                     ex_id=ex_id,
                     encoding=args.enc,
                     model=args.llm)

