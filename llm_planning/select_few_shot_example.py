import os
from typing import Tuple, Union
from collections import defaultdict
import random


def select_few_shot_instance(instance_dir: str,
                             plan_dir: str,
                             length_criterium: Union[Tuple[int, int], None],
                             alternative_criterium: str):
    assert alternative_criterium in ['minimum', 'maximum', 'random']
    length_by_inst = defaultdict(list)

    for inst_file in os.listdir(instance_dir):
        inst_name = '.'.join(inst_file.split('.')[:-1])

        corres_plan_file = f'{inst_name}_gold_plan.txt'
        plan_path = os.path.join(plan_dir, corres_plan_file)

        with open(plan_path, 'r') as plan_f:
            plan = plan_f.readlines()
            steps = [s.strip() for s in plan if s.startswith('(')]
            length_by_inst[len(steps)].append(inst_name)

    candidate_instances = []
    if length_criterium is None:
        for instances in length_by_inst.values():
            candidate_instances.extend(instances)
    else:
        for possible_len in range(length_criterium[0], length_criterium[1]+1):
            candidate_instances.extend(length_by_inst[possible_len])

    if len(candidate_instances) == 0:
        if alternative_criterium == 'minimum':
            minimum_length = min(length_by_inst.keys())
            candidate_instances.extend(length_by_inst[minimum_length])
        elif alternative_criterium == 'maximum':
            maximum_length = max(length_by_inst.keys())
            candidate_instances.extend(length_by_inst[maximum_length])
        else:
            for instances in length_by_inst.values():
                candidate_instances.extend(instances)


    few_shot_inst = random.choice(candidate_instances)
    few_shot_id = few_shot_inst.replace('instance-', '')

    return few_shot_id


