import json
import os
from typing import Union
from pathlib import Path
from argparse import ArgumentParser
from utils.create_step_commands import run_scripts, create_file_setup, create_files_planning


if __name__=='__main__':

    # Set up parser
    parser = ArgumentParser()
    # Required args
    parser.add_argument('--version', '-v', choices=['domain_setup', 'planning'], required=True,
                        help='Which set of commands to generate (domain setup or planning)')
    parser.add_argument('--mode', '-m', choices=['create', 'run', 'both'], required=True,
                        help='Whether to create commands, run existing commands')
    parser.add_argument('--domains', '-dt', required=True, type=str, nargs='+',
                        help='The domain directory names as used in the data directory')
    # Optional args
    parser.add_argument('--approaches', '-a', required=False, default=['basic', 'act', 'cot', 'react'],
                        choices=['basic', 'act', 'cot', 'react'], type=str, nargs='+',
                        help='Which approaches to run, choose one or more from [basic, act, cot, react].')
    parser.add_argument('--outfile', '-o', required=False, default=None,
                        help='Name to be given to the output command file, required if -m is set to "create"')
    parser.add_argument('--seeds', required=False, nargs="+", type=int, default=[1,2,3,4,5],
                        help='Which seeds to generate commands for')
    parser.add_argument('--fewshot-mappings', required=False, type=str,
                        default='./data/few_shot_mappings.json',
                        help='Path to the few-shot mappings file.')
    parser.add_argument('--api-key-id', required=False, type=str,
                        help='identifier of the API key')
    parser.add_argument('--pddl', required=False, action='store_true',
                        help='Set this flag if running on all-pddl input')

    args = parser.parse_args()

    # Ensure pddl is only used with basic and act
    if args.pddl:
        assert not any(i in set(args.approaches) for i in ["cot", "react"]), "--pddl is not available for approaches using thoughts, namely cot and react"

    # Figure out modes
    create = False
    run = False
    if args.mode == 'create' or args.mode == 'both':
        create = True
    if args.mode == 'run' or args.mode == 'both':
        run = True

    # Get seed identifiers
    seed_ids = tuple([f'seed{s}' for s in args.seeds])

    if create:
        if args.version == 'domain_setup':
            # Create command files for domain setup
            create_file_setup(args.outfile,
                              args.fewshot_mappings,
                              domains_to_process=args.domains,
                              seeds=args.seeds,
                              run=True,
                              pddl_approach=args.pddl)
        else:
            # Create command files for planning
            create_files_planning(args.outfile,
                                  args.fewshot_mappings,
                                  domains_to_process=args.domains,
                                  api_key_name=args.api_key_id,
                                  sleep='10m',
                                  seeds=args.seeds,
                                  approaches=args.approaches,
                                  run=True,
                                  pddl_approach=args.pddl)

    if run:
        run_scripts(scripts_dir=f'./scripts_{args.version}',
                    domains_to_process=args.domains,
                    seeds=seed_ids,
                    pddl_approach=args.pddl)

