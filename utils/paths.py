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

