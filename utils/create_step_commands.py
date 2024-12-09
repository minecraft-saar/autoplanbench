import os
import json
import re
from typing import Union, Tuple
from pathlib import Path


def create_file_setup(output_file: str,
                      few_shot_file: str,
                      domains_to_process: Union[list, None] = None,
                      pddl_approach: bool = False,
                      seeds=[1,2,3,4,5],
                      run=False):
    """
    Creates the sh script to generate all sh scripts for setting up all data
    - i.e. instance selection and adaptation
    - conversion in natural language
    - few-shot example generation
    """

    with open(few_shot_file, 'r') as few_file:
        few_shot_mappings = json.load(few_file)

    if domains_to_process is None:
        datasets = list(os.listdir('./data'))
    else:
        datasets = domains_to_process
    datasets.sort()

    # Prepare commands for each dataset
    commands = []
    for dataset in datasets:

        if 'planbench' in dataset:
            continue

        few_shot_file = few_shot_mappings[dataset]

        if few_shot_file == '':
            print(f'Skipping {dataset} because no few-shot file specified.')
            continue

        elif few_shot_file != 'OPTIMAL':
            few_shot_domain_dir = os.path.split(few_shot_file)[0]
            few_shot_inst = os.path.split(few_shot_file)[1]

            few_shot_path = os.path.join('./data', few_shot_domain_dir, 'orig_problems', few_shot_inst)
            plan_file_name = few_shot_inst.replace('.pddl', '_gold_plan.txt')
            few_shot_plan_path = os.path.join('./data', few_shot_domain_dir, 'orig_gold_plans', plan_file_name)

            with open(few_shot_path, 'r') as f:
                few_shot_content = f.read()
            with open(few_shot_plan_path, 'r') as f:
                few_shot_plan = f.read()

            target_dir = os.path.join('./data', dataset, 'orig_few_shot_instance')
            target_dir_plan = os.path.join('./data', dataset, 'orig_few_shot_instance_plan')
            if not os.path.exists(target_dir):
                Path(target_dir).mkdir(exist_ok=True)
                Path(target_dir_plan).mkdir(exist_ok=True)

            new_few_shot_path = os.path.join(target_dir, 'instance-0.pddl')
            new_few_shot_plan_path = os.path.join(target_dir_plan, 'instance-0_gold_plan.txt')

            if os.path.exists(new_few_shot_path):
                print(f'{new_few_shot_path} already exists')

            if os.path.exists(new_few_shot_plan_path):
                print(f'{new_few_shot_plan_path} already exists')

            with open(new_few_shot_path, 'w') as f:
                print(f'Writing to file: {new_few_shot_path}')
                f.write(few_shot_content)
            with open(new_few_shot_plan_path, 'w') as f:
                f.write(few_shot_plan)

            if pddl_approach:
                for seed in seeds:
                    cmd = f'python generate_steps.py domain_setup --domain {dataset} --few-shot-id 0 --seed {seed} --pddl True'
                    commands.append(cmd)
            else:
                for seed in seeds:
                    cmd = f'python generate_steps.py domain_setup --domain {dataset} --few-shot-id 0 --seed {seed}'
                    commands.append(cmd)

    if output_file:
        # Save to file
        with open(output_file, 'w') as out_file:
            for cmd in commands:
                out_file.write(f'{cmd}\n')
    if run:
        # Directly run
        for cmd in commands:
            os.system(cmd)


def create_files_planning(output_file: str,
                          few_shot_file: str,
                          domains_to_process: Union[list, None] = None,
                          pddl_approach: bool = False,
                          api_key_name: str = '',
                          sleep: str = '7m',
                          approaches: list = ['basic', 'act', 'cot', 'react'],
                          seeds=[1,2,3,4,5],
                          run=False):
    """
    Creates the sh. script to create all sh scripts for running the planning
    """

    with open(few_shot_file, 'r') as few_file:
        few_shot_mappings = json.load(few_file)

    if domains_to_process is None:
        datasets = list(os.listdir('./data'))
    else:
        datasets = domains_to_process

    datasets.sort()
    commands = []
    for dataset in datasets:

        try:
            few_shot_file = few_shot_mappings[dataset]
        except KeyError:
            assert 'bfs' in dataset

        if few_shot_file == '':
            print(f'Skipping {dataset} because no few-shot file specified.')
            continue

        if pddl_approach:
            for seed in seeds:
                cmd = f'python generate_steps.py planning --domain {dataset} --few-shot-id 0 --seed {seed} --template-dir ./configs/templates  --pddl True --sleep {sleep} --key {api_key_name} --approaches {" ".join(approaches)}'
                commands.append(cmd)

        else:
            for seed in seeds:
                cmd = f'python generate_steps.py planning --domain {dataset} --few-shot-id 0 --seed {seed} --template-dir ./configs/templates --sleep {sleep} --key {api_key_name} --approaches {" ".join(approaches)}'
                commands.append(cmd)
                # if only_thoughts:
                    # cmd = f'python generate_steps.py planning --domain {dataset} --few-shot-id 0 --seed {seed} --template-dir ./configs/templates --sleep {sleep} --key {api_key_name} --ot'
                    # commands.append(cmd)
                # else:
                    # cmd = f'python generate_steps.py planning --domain {dataset} --few-shot-id 0 --seed {seed} --template-dir ./configs/templates --sleep {sleep} --key {api_key_name}'
                    # commands.append(cmd)

    if output_file:
        # Save to file
        with open(output_file, 'w') as out_file:
            for cmd in commands:
                out_file.write(f'{cmd}\n')
    if run:
        # Directly run
        for cmd in commands:
            os.system(cmd)


def run_scripts(scripts_dir,
                domains_to_process: Union[list, None] = None,
                seeds: Tuple = ('seed1', 'seed2', 'seed3', 'seed4', 'seed5'),
                pddl_approach: bool = False):
    """
    Runs all specified sh scripts
    """
    reg = r'.*_(seed\d+)_.*$'

    if domains_to_process is None:
        scripts = list(os.listdir(scripts_dir))
    else:
        scripts = []
        for scr in os.listdir(scripts_dir):

            if 'setup_' in scr:
                scr_part_relevant = scr.split('setup_')[-1]
            elif 'planning_' in scr:
                scr_part_relevant = scr.split('planning_')[-1]
            else:
                continue
                #raise ValueError(f'script name is {scr}')

            # check whether the script is for one of the seeds to process
            # seed = re.findall(reg, scr_part_relevant)[0]
            # seed = seed.replace('_', '')
            seed = re.match(reg, scr_part_relevant).group(1)
            if not seed in seeds:
                continue

            if pddl_approach:
                if not '_pddl' in scr_part_relevant:
                    continue
                scr_part_relevant = scr_part_relevant.split('_pddl_seed')[0]
            else:
                if '_pddl' in scr_part_relevant:
                    continue
                scr_part_relevant = scr_part_relevant.split('_seed')[0]
            if scr_part_relevant in domains_to_process:
                scripts.append(scr)
    scripts.sort()

    for script_file in scripts:
        print(f'Running {script_file}')
        cmd = f'./{scripts_dir}/{script_file}'
        os.system(cmd)

