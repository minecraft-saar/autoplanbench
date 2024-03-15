import json
import os.path
from argparse import ArgumentParser

from pddl_processing.create_gold_plans import adapt_gold_plan
from utils.paths import GOLD_PLAN_FOLDER

"""
Script to run the object renaming for gold plans in case it did not work / was not 
done during the set-up of the instance and plan files
"""


def adapt_all_gold_plans(domain_dir):

    adapted = []
    kept = []

    inst_obj_map_file = os.path.join(domain_dir, 'instance_object_mappings.json')
    with open(inst_obj_map_file, 'r') as f:
        inst_obj_mappings = json.load(f)

    gold_plan_dir = os.path.join(domain_dir, GOLD_PLAN_FOLDER)
    for plan_file in os.listdir(gold_plan_dir):
        instance_name = str(plan_file).replace('_gold_plan.txt', '')
        instance_file = f'{instance_name}.pddl'
        plan_file_path = os.path.join(gold_plan_dir, plan_file)

        try:
            adapt_gold_plan(instance_file=instance_file,
                            inst_obj_mappings=inst_obj_mappings,
                            plan_file_path=plan_file_path)
            adapted.append(plan_file)
        except KeyError:
            kept.append(plan_file)

    print(f'Adapted {len(adapted)} plan files and kept {len(kept)} plan files')


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('--dir', required=True)
    args = parser.parse_args()

    adapt_all_gold_plans(domain_dir=args.dir)
