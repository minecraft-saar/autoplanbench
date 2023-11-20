import os
import random
from pathlib import Path
import shutil
from typing import Union
from set_env import set_env_vars


set_env_vars()


def select_problems(n_instances: int,
                    problem_dir: str,
                    gold_plan_dir: str,
                    not_selected_problem_dir: str,
                    len_constraint: Union[list, None]):
    """

    :param n_instances:
    :param problem_dir:
    :param gold_plan_dir:
    :param not_selected_problem_dir:
    :param len_constraint:
    :return:
    """
    Path(not_selected_problem_dir).mkdir(exist_ok=True, parents=True)

    if len_constraint is None:
        possible_lengths = [0, 1000]
    else:
        possible_lengths = len_constraint
        assert len(possible_lengths) == 2

    selected_instances = []
    not_matching_instances = []
    instances_without_plan = []
    remaining_instances = []

    instance_files = list(os.listdir(problem_dir))

    # if n_instances is None then all (matching) should be selected
    if n_instances is None:
        n_instances = len(instance_files)

    for instance_file in instance_files:

        instance_file_path = os.path.join(problem_dir, instance_file)
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
                else:
                    not_matching_instances.append(instance_file_path)
        else:
            instances_without_plan.append(instance_file_path)

    if len(selected_instances) < n_instances:
        print(f'Warning: Only {len(selected_instances)} instances match the selection criteria.')
    # if more instances match the filtering than specified then move the others to the same directory as the not matching ones
    elif len(selected_instances) > n_instances:
        random.shuffle(selected_instances)
        final_selected_instances = selected_instances[:n_instances]
        remaining_instances.extend(selected_instances[n_instances:])

    for not_selected in not_matching_instances:
        file_name = os.path.split(not_selected)[-1]
        shutil.move(not_selected, os.path.join(not_selected_problem_dir, file_name))

    for no_plan in instances_without_plan:
        file_name = os.path.split(no_plan)[-1]
        shutil.move(no_plan, os.path.join(not_selected_problem_dir, file_name))

    for rem_inst in remaining_instances:
        file_name = os.path.split(rem_inst)[-1]
        shutil.move(rem_inst, os.path.join(not_selected_problem_dir, file_name))

    with open(os.path.join(not_selected_problem_dir, 'reason_non_selection.tsv'), 'w') as f:
        for remaining in remaining_instances:
            f.write(f'{remaining}\tleft over\n')
        for not_matching in not_matching_instances:
            f.write(f'{not_matching}\tnot match filter\n')
        for no_plan in instances_without_plan:
            f.write(f'{no_plan}\tno plan found\n')

