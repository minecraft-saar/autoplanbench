import os
import random
from copy import copy
from pathlib import Path
import shutil
from typing import Union
from set_env import set_env_vars
from utils.helpers import find_duplicates


set_env_vars()


def select_problems(n_instances: int,
                    orig_problem_dir: str,
                    problem_dir: str,
                    gold_plan_dir: str,
                    not_selected_problem_dir: str,
                    len_constraint: Union[list, None],
                    reselect: bool):
    """

    :param n_instances:
    :param problem_dir:
    :param gold_plan_dir:
    :param not_selected_problem_dir:
    :param len_constraint:
    :param reselect: if there is already a file "not_selected_by_filter" the problems
                      listed there are not selected if reselect=False
                      i.e. can be used to add problems to previously selected problems
                           instead of re-selecting all problems newly again
    :return:
    """
    Path(not_selected_problem_dir).mkdir(exist_ok=True, parents=True)

    if len_constraint is None:
        possible_lengths = [0, 100000]
    else:
        possible_lengths = len_constraint
        assert len(possible_lengths) == 2

    selected_instances = []
    selected_instances_orig_paths = []

    instance_files = list(os.listdir(problem_dir))

    # if n_instances is None then all (matching) should be selected
    if n_instances is None:
        n_instances = len(instance_files)

    not_selected_file = os.path.join(not_selected_problem_dir, 'reason_non_selection.tsv')
    instances2remove = dict()
    if not reselect:
        with open(not_selected_file, 'r') as nf:
            for line in nf.readlines():
                name, reason = line.strip().split('\t')
                instances2remove[name] = reason

    for instance_file in instance_files:

        instance_file_path = os.path.join(problem_dir, instance_file)
        orig_insta_file_path = os.path.join(orig_problem_dir, instance_file)

        if instance_file_path in instances2remove.keys():
            continue

        instance_file_name = instance_file.split('.')[:-1]
        instance_file_name = '.'.join(instance_file_name)
        plan_file = f'{instance_file_name}_gold_plan.txt'
        plan_file_path = os.path.join(gold_plan_dir, plan_file)

        if os.path.exists(plan_file_path):
            with open(plan_file_path, 'r') as plan_f:
                plan = plan_f.readlines()
                steps = [s.strip() for s in plan if s.startswith('(')]

                if possible_lengths[0] <= len(steps) <= possible_lengths[1]:
                    selected_instances.append(instance_file_path)
                    selected_instances_orig_paths.append(orig_insta_file_path)
                else:
                    instances2remove[instance_file_path] = 'not match filter'
        else:
            instances2remove[instance_file_path] = 'no plan found'

    # Compare based on original object names and also include the adapted instance-0 (i.e. few-shot example)
    few_shot_dir = os.path.join(os.path.split(orig_problem_dir)[0], 'orig_few_shot_instance')
    few_shot_path = os.path.join(few_shot_dir, 'instance-0.pddl')
    if os.path.exists(few_shot_path):
        selected_instances_orig_paths.append(few_shot_path)
        selected_instances_orig_paths.remove(os.path.join(orig_problem_dir, 'instance-0.pddl'))
    duplicates_list_orig_paths = find_duplicates(selected_instances_orig_paths)
    duplicates_list = []
    for dup_list in duplicates_list_orig_paths:
        sub_list = []
        for inst_path in dup_list:
            if few_shot_dir in inst_path:
                adapted_inst_path = inst_path.replace(few_shot_dir, problem_dir)
            else:
                adapted_inst_path = inst_path.replace(orig_problem_dir, problem_dir)
            sub_list.append(adapted_inst_path)
        duplicates_list.append(sub_list)

    unique_instances = []
    for identical_inst in duplicates_list:
        if len(identical_inst) == 1:
            unique_instances.extend(identical_inst)

        else:
            selected_inst = None
            for inst in identical_inst:
                if 'instance-0.pddl' in inst:
                    selected_inst = inst
                    print('selecting few-shot')
            if selected_inst is None:
                random.shuffle(identical_inst)
                selected_inst = identical_inst[0]
            unique_instances.append(selected_inst)

            duplicate_instances = copy(identical_inst)
            duplicate_instances.remove(selected_inst)
            for di in duplicate_instances:
                instances2remove[di] = 'duplicate'

    if len(unique_instances) < n_instances:
        print(f'Warning: Only {len(unique_instances)} unique instances match the selection criteria.')
    # if more instances match the filtering than specified then randomly select the specified number of instances
    elif len(unique_instances) > n_instances:
        random.shuffle(selected_instances)
        remaining_instances = selected_instances[n_instances:]
        for ri in remaining_instances:
            instances2remove[ri] = 'left over'

    # move all files that are not selected to be kept
    for file_to_remove, reason in instances2remove.items():
        file_name = os.path.split(file_to_remove)[-1]
        shutil.move(file_to_remove, os.path.join(not_selected_problem_dir, file_name))

    with open(not_selected_file, 'w') as f:
        for file_name, reason in instances2remove.items():
            f.write(f'{file_name}\t{reason}\n')


