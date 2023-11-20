from pathlib import Path
from ast import literal_eval
from argparse import ArgumentParser
from pddl_processing.setup_domain import set_up_instance_files
from pddl_processing.PDDL_describer import PDDLDescriber


"""
Same as run_domain_setup.py but reads the natural language descriptions from file 
instead of generating them from scratch
"""


if __name__=='__main__':

    argument_parser = ArgumentParser()
    argument_parser.add_argument('-d', required=True, help='Path to the domain.pddl file.')
    argument_parser.add_argument('-i', required=True, help='Path to the directory with the original instance pddl files.')
    argument_parser.add_argument('-o', required=True, help='Path to the directory for the domain data files')
    argument_parser.add_argument('--nl', required=True, help='Path to the file with the created NL descriptions.')
    argument_parser.add_argument('-n', required=False, default=None, help='Number of instances to select from the original instances. If not set, all are kept')
    argument_parser.add_argument('--len', required=False, default=(2, 20), help='Select only instances for which the length of the optimal plan is within the specified limits (inclusive). Default is (2, 20)')
    argument_parser.add_argument('--timeout', required=False, default=1200, help='Time (in sec) to wait until stopping planning if no plan found so far. Default is 1200, i.e. 20 minutes.')
    argument_parser.add_argument('--overwrite', required=False, default=False,
                                 help='Whether to re-run the adaption and plan generation for instances for which they already exist.')

    args = argument_parser.parse_args()
    Path(args.o).mkdir(exist_ok=True, parents=True)
    pddl_describer = PDDLDescriber(domain_file=args.d)
    pddl_describer.instantiate_from_file(args.nl)

    len_range = literal_eval(args.len) if isinstance(args.len, str) else args.len
    n_inst = literal_eval(args.n) if isinstance(args.n, str) else args.n
    timeout = literal_eval(args.timeout) if isinstance(args.timeout, str) else args.timeout
    overwrite = literal_eval(args.overwrite) if isinstance(args.overwrite, str) else args.overwrite

    set_up_instance_files(domain_file=args.d,
                          orig_instances_dir=args.i,
                          output_dir=args.o,
                          pddl_describer=pddl_describer,
                          n_instances=n_inst, len_constraint=len_range,
                          plan_timeout=timeout,
                          overwrite=overwrite)