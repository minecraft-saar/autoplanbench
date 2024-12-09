import os.path
from argparse import ArgumentParser
from ast import literal_eval
from utils.paths import DATA_DIR
from llm_planning.setup_experiments_files import setup_files_domain

"""
Set-up the files for running planning experiments
- creates few-shot examples for all approaches in utils.paths.APPROACHES
- generates thoughts for the ReAct and CoT approaches
- generates the config files 
"""


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('-d', required=True, help='Name of the domain')
    parser.add_argument('--dd', required=False, default=None,
                        help='Path to the subdirectory with the data; i.e. the name of the data directory within the utils.paths.DATA_DIR directory; if not specified, then the directory with the data for the domain should be place directly in the utils.paths.DATA_DIR ')
    parser.add_argument('--nl-domain', type=str, help='path to the file with the natural language description of the domain for which the example is generated')
    parser.add_argument('--ex-id', type=int, required=True, help='ID of the instance to use as few-shot example')
    parser.add_argument('--llm', required=True, help='Name of the LLM to use.')
    parser.add_argument('--seed', required=True, type=int, help='Seed to use for the LLM')
    parser.add_argument('--no-thoughts', dest="thoughts", action="store_false", required=False, help="to be set if no thoughts should be generated for react and cot examples.")
    parser.add_argument('--rl', required=False, type=int, default=None, help='Number of steps in the ReAct example.')
    parser.add_argument('--react-exd', required=False, default=None, help='path to the file with the nl description of the example domain. Defaults to utils.paths.THOUGHT_GEN_EXAMPLE_DOMAIN')
    parser.add_argument('--react-exf', required=False, default=None, help='path to the file with the react interaction example. Defaults to utils.paths.THOUGHT_GEN_EXAMPLE_FILE.')
    parser.add_argument('--ms-i', required=False, type=int, default=24, help='Max number of steps interactive approaches; defaults to 24')
    parser.add_argument('--br-i', required=False, type=int, default=5, help='Break limit for interactive approaches; defaults to 5')
    parser.add_argument('--ms-ni', required=False, type=int, default=1, help='Max number of steps noninteractive approaches; defaults to 1')
    parser.add_argument('--br-ni', required=False, type=int, default=1, help='Break limit for noninteractive approaches; defaults to 1')
    parser.add_argument('--enc', required=False, default='automatic')
    parser.add_argument('--no-config', required=False, action="store_false", dest="conf", help='Set to disable generation of config files')

    args = parser.parse_args()

    d = {'domain_name': args.d,
         'nl_domain': args.nl_domain,
         'few_shot_id': args.ex_id,
         'llm': args.llm,
         'thoughts': args.thoughts,
         'react_length': args.rl,
         'react_example_domain': args.react_exd,
         'react_example_file': args.react_exf,
         'max_steps_inter': args.ms_i,
         'break_inter': args.br_i,
         'max_steps_non_inter': args.ms_ni,
         'break_non_inter': args.br_ni,
         'configs': args.conf,
         'seed': args.seed}

    if args.enc:
        d['encoding'] = args.enc

    if args.dd:
        data_dir = os.path.join(DATA_DIR, args.dd)
        d['data_dir'] = data_dir

    setup_files_domain(**d)

