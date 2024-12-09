import os.path
import random
from argparse import ArgumentParser
from ast import literal_eval
from pddl_processing.setup_domain import setup_pddl_domain
from utils.paths import ORIG_INST_FOLDER
from utils.helpers import get_llm_type

"""
Runs the set-up of all files for a specific PDDL domain
- generates the natural language descriptions
- adapts the instance files
- generates gold plans using fast downward
- selects instance files matching constraints
- creates domain-specific few-shot examples for translation LLM
"""


if __name__=='__main__':
    # Set up parser
    argument_parser = ArgumentParser()
    argument_parser.add_argument('-o', required=True, help='Path to the directory for the domain data files')
    argument_parser.add_argument('-d', required=False, default=None, help='Path to the domain.pddl file. Defaults to domain.pddl in the folder specified by -o.')
    argument_parser.add_argument('-i', required=False, default=None, help='Path to the directory with the original instance pddl files. Defaults to utils.paths.ORIT_INST_FOLDER in the folder specified by -o')
    argument_parser.add_argument('-n', required=False, type=int, default=None, help='Number of instances to select from the original instances. If not set, all are kept')
    argument_parser.add_argument('--len', required=False, nargs=2, type=int, default=[2, 20], help='Select only instances for which the length of the optimal plan is within the specified limits (inclusive). Default is (2, 20)')
    argument_parser.add_argument('--timeout', required=False, type=int, default=1200, help='Time (in sec) to wait until stopping planning if no plan found so far. Default is 1200, i.e. 20 minutes.')
    argument_parser.add_argument('--overwrite', required=False, action='store_true', help='Add to re-run the adaption and plan generation for instances for which they already exist. Default is False')
    argument_parser.add_argument('--llm', required=True, help='Name of the llm to use.')
    argument_parser.add_argument('--llm-type', required=False, default=None, help='Type of the llm to use')
    argument_parser.add_argument('--no-ex-chat', dest="ex_chat", required=False, action="store_false", help='Add if examples should not be presented in chat format')
    argument_parser.add_argument('--desc', required=False, default='medium')
    argument_parser.add_argument('--to-text', required=False, default='extended')
    argument_parser.add_argument('--seed', required=False, type=int, default=None, help='Seed to use for the llm')

    args = argument_parser.parse_args()

    # Get seed
    if args.seed is None:
        seed = random.randint(0, 100)
    else:
        seed = args.seed 

    # Get filepaths
    domain_file = os.path.join(args.o, 'domain.pddl') if args.d is None else args.d
    orig_inst_dir = os.path.join(args.o, ORIG_INST_FOLDER) if args.i is None else args.i

    # Determine model type
    model_type = args.llm_type if args.llm_type is not None else get_llm_type(args.llm)

    # Run domain setup script
    setup_pddl_domain(domain_file=domain_file,
                      orig_instances_dir=orig_inst_dir,
                      output_dir=args.o,
                      n_instances=args.n,
                      len_constraint=tuple(args.len),
                      plan_timeout=args.timeout,
                      overwrite=args.overwrite,
                      llm=args.llm,
                      llm_type=model_type,
                      description_version=args.desc,
                      pddl2text_version=args.to_text,
                      examples_chat=args.ex_chat,
                      seed=seed)

