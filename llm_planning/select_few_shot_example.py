import os
from typing import Tuple, Union
from collections import defaultdict
import random
from argparse import ArgumentParser
from ast import literal_eval

"""
Script to randomly select one problem instance as few-shot example given a constraint
on the number of steps in the optimal gold plan
"""

def select_few_shot_instance(instance_dir: str,
                             plan_dir: str,
                             length_criterium: Union[Tuple[int, int], None] = None,
                             alternative_criterium: str  = 'random'):
    """

    :param instance_dir:
    :param plan_dir:
    :param length_criterium:
    :param alternative_criterium:
    :return:
    """
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


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('-i', required=True, help='Path to the directory with the instances.')
    parser.add_argument('-p', required=True, help='Path to the directory with the optimal plans.')
    parser.add_argument('--len', required=False, default=None, help='Tuple (min, max) for the length constraint, i.e. only instances with min <= optimal plan length <= max are considered. Default is None, i.e. all are considered')
    parser.add_argument('--alt', required=False, default='random', help='Alternative constraint for selecting few-shot example if none matches the length criterium. Can be "random" for selecting any instance, "max" or "min" for selecting the instance with the shortest or longest optimal plan.')

    args = parser.parse_args()
    length_criterium = literal_eval(args.len) if args.len is not None else args.len

    select_few_shot_instance(instance_dir=args.i,
                             plan_dir=args.p,
                             length_criterium=length_criterium,
                             alternative_criterium=args.alt)
