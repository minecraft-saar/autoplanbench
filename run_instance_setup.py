import os
from pathlib import Path
from ast import literal_eval
from argparse import ArgumentParser
from pddl_processing.setup_domain import set_up_instance_files
from pddl_processing.PDDL_describer import PDDLDescriber
from utils.paths import ORIG_INST_FOLDER


"""
Same as run_domain_setup.py but reads the natural language descriptions from file 
instead of generating them from scratch. Then
- adapts the instance files
- generates gold plans using fast downward
- selects instance files matching constraints
- creates domain-specific few-shot examples for translation LLM
"""


if __name__=='__main__':

    argument_parser = ArgumentParser()
    argument_parser.add_argument('-o', required=True, help='Path to the directory for the domain data files')
    argument_parser.add_argument('-d', required=False, default=None,
                                 help='Path to the domain.pddl file. Defaults to domain.pddl in the folder specified by -o.')
    argument_parser.add_argument('-i', required=False, default=None,
                                 help='Path to the directory with the original instance pddl files. Defaults to utils.paths.ORIG_INST_FOLDER in the folder specified by -o')
    argument_parser.add_argument('--nl', required=False, help='Path to the file with the created NL descriptions. Defaults to domain_description.json in the folder specified by -o')
    argument_parser.add_argument('-n', required=False, default=None, help='Number of instances to select from the original instances. If not set, all are kept')
    argument_parser.add_argument('--len', required=False, default=(2, 20), help='Select only instances for which the length of the optimal plan is within the specified limits (inclusive), e.g. setting it to (2, 20) will select problems with at least 2 and at most 20 steps in the gold plan. Set to None if no length limit')
    argument_parser.add_argument('--timeout', required=False, default=1200, help='Time (in sec) to wait until stopping planning if no plan found so far. Default is 1200, i.e. 20 minutes.')
    argument_parser.add_argument('--overwrite', required=False, default=False,
                                 help='Whether to re-run the adaption and plan generation for instances for which they already exist.')
    argument_parser.add_argument('--reselect', required=False, default=True, help='if there is already a file "not_selected_by_filter" the problems listed there are not selected if reselect=False, i.e. can be used to add problems to previously selected problems instead of re-selecting all problems newly again. Should be used with caution, i.e. need to make sure that the filtering constraints were the same and files with the same name still contain exactly the same problems as originally')

    args = argument_parser.parse_args()
    Path(args.o).mkdir(exist_ok=True, parents=True)

    domain_file = os.path.join(args.o, 'domain.pddl') if args.d is None else args.d
    nl_domain_file = os.path.join(args.o, 'domain_description.json') if args.nl is None else args.nl
    pddl_describer = PDDLDescriber(domain_file=domain_file)
    pddl_describer.instantiate_from_file(nl_domain_file)

    orig_inst_dir = os.path.join(args.o, ORIG_INST_FOLDER) if args.i is None else args.i

    len_range = literal_eval(args.len) if isinstance(args.len, str) else args.len
    n_inst = literal_eval(args.n) if isinstance(args.n, str) else args.n
    timeout = literal_eval(args.timeout) if isinstance(args.timeout, str) else args.timeout
    overwrite = literal_eval(args.overwrite) if isinstance(args.overwrite, str) else args.overwrite
    reselect = literal_eval(args.reselect) if isinstance(args.reselect, str) else args.reselect

    set_up_instance_files(domain_file=domain_file,
                          orig_instances_dir=orig_inst_dir,
                          output_dir=args.o,
                          pddl_describer=pddl_describer,
                          n_instances=n_inst, len_constraint=len_range,
                          plan_timeout=timeout,
                          overwrite=overwrite,
                          reselect=reselect)