from argparse import ArgumentParser
from ast import literal_eval
from llm_planning.setup_experiments_files import setup_files_domain

"""
Set-up the files for running planning experiments
- creates few-shot examples for all approaches in utils.paths.APPROACHES
- generates thoughts for the ReAct and CoT approaches
- generates teh config files 
"""


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('-d', required=True, help='Name of the domain')
    parser.add_argument('--ex-id', required=True, help='ID of the instance to use as few-shot example')
    parser.add_argument('--llm', required=True, help='Name of the LLM to use.')
    parser.add_argument('--thoughts', required=False, default=True, help="whether thoughts should be generated for react and cot examples. Defaults to True")
    parser.add_argument('--rl', required=False, default=None, help='Number of steps in the ReAct example.')
    parser.add_argument('--react-exd', required=False, default=None, help='path to the file with the nl description of the example domain. Defaults to utils.paths.THOUGHT_GEN_EXAMPLE_DOMAIN')
    parser.add_argument('--react-exf', required=False, default=None, help='path to the file with the react interaction example. Defaults to utils.paths.THOUGHT_GEN_EXAMPLE_FILE.')
    parser.add_argument('--ms-i', required=False, default=24, help='Max number of steps interactive approaches; defaults to 24')
    parser.add_argument('--br-i', required=False, default=5, help='Break limit for interactive approaches; defaults to 5')
    parser.add_argument('--ms-ni', required=False, default=1, help='Max number of steps noninteractive approaches; defaults to 1')
    parser.add_argument('--br-ni', required=False, default=1, help='Break limit for noninteractive approaches; defaults to 1')
    parser.add_argument('--enc', required=False, default='automatic')
    parser.add_argument('--dd', required=False, help='Path to the directory with the data; defaults to utils.paths.DATA_DIR')

    args = parser.parse_args()

    thoughts = literal_eval(args.thoughts) if isinstance(args.thoughts, str) else args.thoughts
    ex_id = literal_eval(args.ex_id) if isinstance(args.ex_id, str) else None
    ms_i = literal_eval(args.ms_i) if isinstance(args.ms_i, str) else args.ms_i
    br_i = literal_eval(args.br_i) if isinstance(args.br_i, str) else args.br_i
    ms_ni = literal_eval(args.ms_ni) if isinstance(args.ms_ni, str) else args.ms_ni
    br_ni = literal_eval(args.br_ni) if isinstance(args.br_ni, str) else args.br_ni
    react_length = literal_eval(args.rl)

    d = {'domain_name': args.d,
         'few_shot_id': ex_id,
         'llm': args.llm,
         'thoughts': thoughts,
         'react_length': react_length,
         'react_example_domain': args.react_exd,
         'react_example_file': args.react_exf,
         'max_steps_inter': ms_i,
         'break_inter': br_i,
         'max_steps_non_inter': ms_ni,
         'break_non_inter': br_ni}

    if args.enc:
        d['encoding'] = args.enc
    if args.dd:
        d['data_dir'] = args.dd

    setup_files_domain(**d)