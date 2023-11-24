import os.path
from argparse import ArgumentParser
from ast import literal_eval
from pddl_processing.setup_domain import setup_pddl_domain
from utils.paths import ORIG_INST_FOLDER

"""
Runs the set-up of all files for a specific PDDL domain
- generates the natural language descriptions
- adapts the instance files
- generates gold plans using fast downward
- selects instance files matching constraints
- creates domain-specific few-shot examples for translation LLM
"""


if __name__=='__main__':

    argument_parser = ArgumentParser()
    argument_parser.add_argument('-o', required=True, help='Path to the directory for the domain data files')
    argument_parser.add_argument('-d', required=False, default=None, help='Path to the domain.pddl file. Defaults to domain.pddl in the folder specified by -o.')
    argument_parser.add_argument('-i', required=False, default=None, help='Path to the directory with the original instance pddl files. Defaults to utils.paths.ORIT_INST_FOLDER in the folder specified by -o')
    argument_parser.add_argument('-n', required=False, default=None, help='Number of instances to select from the original instances. If not set, all are kept')
    argument_parser.add_argument('--len', required=False, default=(2, 20), help='Select only instances for which the length of the optimal plan is within the specified limits (inclusive). Default is (2, 20)')
    argument_parser.add_argument('--timeout', required=False, default=1200, help='Time (in sec) to wait until stopping planning if no plan found so far. Default is 1200, i.e. 20 minutes.')
    argument_parser.add_argument('--overwrite', required=False, default=False, help='Whether to re-run the adaption and plan generation for instances for which they already exist. Default is False')
    argument_parser.add_argument('--llm', required=True, help='Name of the llm to use.')
    argument_parser.add_argument('--desc', required=False, default='medium')
    argument_parser.add_argument('--to-text', required=False, default='extended')

    args = argument_parser.parse_args()
    domain_file = os.path.join(args.o, 'domain.pddl') if args.d is None else args.d
    orig_inst_dir = os.path.join(args.o, ORIG_INST_FOLDER) if args.i is None else args.i

    len_range = literal_eval(args.len) if isinstance(args.len, str) else args.len
    n_inst = literal_eval(args.n) if isinstance(args.n, str) else args.n
    timeout = literal_eval(args.timeout) if isinstance(args.timeout, str) else args.timeout
    overwrite = literal_eval(args.overwrite) if isinstance(args.overwrite, str) else args.overwrite

    setup_pddl_domain(domain_file=domain_file,
                      orig_instances_dir=orig_inst_dir,
                      output_dir=args.o,
                      n_instances=n_inst,
                      len_constraint=len_range,
                      plan_timeout=timeout,
                      overwrite=overwrite,
                      llm=args.llm,
                      description_version=args.desc,
                      pddl2text_version=args.to_text)


