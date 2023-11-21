import os
from pathlib import Path

PROJ_DIR = Path(__file__).resolve().parent.parent

CACHE_DIR = PROJ_DIR / Path('llm_caches')
DATA_DIR = PROJ_DIR / Path('data')
PLANBENCH_DATA_DIR = PROJ_DIR / Path('data_planbench')
CONFIG_DIR = PROJ_DIR / Path('configs')
OUTPUT_DIR = PROJ_DIR / Path('output_files')
EVALUATION_RES_DIR = PROJ_DIR / Path('evaluation_results')

ORIG_INST_FOLDER = 'orig_problems'
INST_FOLDER = 'adapted_instances'
GOLD_PLAN_FOLDER = 'gold_plans'


#APPROACHES =


def get_few_shot_dir(planning_approach, data_dir):

    if planning_approach == 'basic':
        output_dir = os.path.join(data_dir, 'few_shot_examples_basic')
    elif planning_approach == 'incremental':
        output_dir = os.path.join(data_dir, 'few_shot_examples_incre')
    elif planning_approach == 'state_reasoning':
        output_dir = os.path.join(data_dir, 'few_shot_examples_state_reasoning')
    elif planning_approach == 'react':
        output_dir = os.path.join(data_dir, 'few_shot_examples_react')
    elif planning_approach == 'cot':
        output_dir = os.path.join(data_dir, 'few_shot_examples_cot')
    else:
        raise ValueError

    return output_dir


