import json
import os
import json


def get_few_shot_candidates(data_dir, output_file, limit):

    candidates = dict()

    for data_set in os.listdir(data_dir):
        if 'planbench' in data_set:
            continue
        elif os.path.isfile(os.path.join(data_dir, data_set)):
            continue

        matching_instances = []
        minimal_len = 100000
        minimal_len_inst = None

        for plan_file in os.listdir(os.path.join(data_dir, data_set, 'orig_gold_plans')):
            plan_path = os.path.join(data_dir, data_set, 'orig_gold_plans', plan_file)
            instance_name = plan_file.replace('_gold_plan.txt', '')
            with open(plan_path, 'r') as f:
                plan = []
                for line in f.readlines():
                    if line.strip().startswith('('):
                        plan.append(line)

                if len(plan) <= limit:
                    matching_instances.append((instance_name, len(plan)))

                if len(plan) < minimal_len:
                    minimal_len = len(plan)
                    minimal_len_inst = instance_name

        if len(matching_instances) == 0:
            candidates[data_set] = [(minimal_len_inst, minimal_len)]

        else:
            candidates[data_set] = matching_instances


    with open(output_file, 'w') as f:
        json.dump(candidates, f, indent=4)


if __name__=='__main__':

    get_few_shot_candidates(data_dir='../data',
                            output_file='./few_shot_candidates_new.json',
                            limit=10)

