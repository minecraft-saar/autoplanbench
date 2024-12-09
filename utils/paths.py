import os
from pathlib import Path
from typing import Union

PROJ_DIR = Path(__file__).resolve().parent.parent

CACHE_DIR = PROJ_DIR / Path('llm_caches')
DATA_DIR = PROJ_DIR / Path('data')
CONFIG_DIR = PROJ_DIR / Path('configs')
OUTPUT_DIR = PROJ_DIR / Path('output_files')
EVALUATION_RES_DIR = PROJ_DIR / Path('evaluation_results')

DOMAIN_DESCRIPTION_TEMPLATE = PROJ_DIR / Path('utils') / Path('template_domain_description.txt')

ORIG_INST_FOLDER = 'orig_problems'
INST_FOLDER = 'adapted_instances'
GOLD_PLAN_FOLDER = 'adapted_gold_plans'
ORIG_GOLD_PLAN_FOLDER= 'orig_gold_plans'
TEMP_DIR = PROJ_DIR / Path('temp_files')

APPROACHES = ['basic', 'act', 'react', 'cot', 'act_pddl', 'basic_pddl']

THOUGHT_GEN_EXAMPLE_DOMAIN = os.path.join(PROJ_DIR, 'llm_planning', 'manual_react_examples', 'logistics_domain_description.json')
THOUGHT_GEN_EXAMPLE_FILE = os.path.join(PROJ_DIR, 'llm_planning', 'manual_react_examples', 'logistics_react.json')


def get_cache_dir(model_subdir_name: Union[str, None], exp_subdir_name: Union[str, None]):

    if model_subdir_name is None:
        assert exp_subdir_name is None
        cache_dir = None
    else:
        cache_dir = CACHE_DIR / Path(model_subdir_name)
        if exp_subdir_name is not None:
            cache_dir = cache_dir / Path(exp_subdir_name)
    if cache_dir is not None:
        Path(cache_dir).mkdir(exist_ok=True, parents=True)
    return cache_dir


def get_domain_file_path(domain_name, data_dir):
    domain_data_dir = get_domain_data_dir(domain_name=domain_name, data_dir=data_dir)
    return os.path.join(domain_data_dir, 'domain.pddl')


def get_domain_data_dir(domain_name, data_dir):
    return os.path.join(data_dir, domain_name)


def get_few_shot_dir(planning_approach, domain_data_dir):

    if planning_approach == 'basic':
        output_dir = os.path.join(domain_data_dir, 'few_shot_examples_basic')
    elif planning_approach == 'act':
        output_dir = os.path.join(domain_data_dir, 'few_shot_examples_act')
    elif planning_approach == 'state_reasoning':
        output_dir = os.path.join(domain_data_dir, 'few_shot_examples_state_reasoning')
    elif planning_approach == 'react':
        output_dir = os.path.join(domain_data_dir, 'few_shot_examples_react')
    elif planning_approach == 'cot':
        output_dir = os.path.join(domain_data_dir, 'few_shot_examples_cot')
    elif planning_approach == 'act_pddl':
        output_dir = os.path.join(domain_data_dir, 'few_shot_examples_act_pddl')
    elif planning_approach == 'basic_pddl':
        output_dir = os.path.join(domain_data_dir, 'few_shot_examples_basic_pddl')
    else:
        raise ValueError

    return output_dir


def get_few_shot_ex_file(few_shot_dir, instance_id, approach, seed: Union[int, None]):
    if seed is None:
        return os.path.join(few_shot_dir, f'{approach}_examples_instance-{instance_id}.json')
    else:
        return os.path.join(few_shot_dir, f'{approach}_examples_instance-{instance_id}_seed{seed}.json')


def get_gold_plan_dir(domain_name, data_dir):
    return os.path.join(data_dir, domain_name, GOLD_PLAN_FOLDER)


def get_instance_dir(domain_name, data_dir):
    return os.path.join(data_dir, domain_name, INST_FOLDER)


def get_orig_inst_dir(domain_name, data_dir):
    return os.path.join(data_dir, domain_name, ORIG_INST_FOLDER)


def get_config_file(domain_name, config_dir, approach, model):
    file_name = f'config_{approach}_{model}.json'
    config_domain_dir = get_config_domain_dir(domain_name=domain_name, config_dir=config_dir)
    return os.path.join(config_domain_dir, file_name)


def get_config_domain_dir(domain_name, config_dir):
    return os.path.join(config_dir, domain_name)


def create_config_domain_dir(domain_name, config_dir):
    config_domain_dir = get_config_domain_dir(domain_name=domain_name, config_dir=config_dir)
    Path(config_domain_dir).mkdir(exist_ok=True)

