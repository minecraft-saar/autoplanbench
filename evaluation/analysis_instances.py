import os
from tarski.io import PDDLReader
from argparse import ArgumentParser
from utils.paths import DATA_DIR
from collections import defaultdict

"""
Script to generate an overview over the number of objects, plan lengths, goals facts and size of initial states of the problem instances
"""

def get_analysis_instances(domain_file, instance_dir, gold_plan_dir) -> dict:

    instance_data = defaultdict(dict)

    for file in os.listdir(instance_dir):

        # plan_length
        instance_name = '.'.join(file.split('.')[:-1])
        instance_id = int(instance_name.replace('instance-', ''))
        gold_plan = get_gold_plan(gold_plan_dir, instance_name)
        gold_plan_length = len(gold_plan)
        instance_data[instance_id]['plan_length'] = gold_plan_length

        problem = get_problem(os.path.join(instance_dir, file),
                              domain_file)
        # number of objects
        objects = list(problem.language.constants())
        instance_data[instance_id]['n_objects'] = len(objects)

        # number of goal facts
        try:
            facts_goal_state = list(problem.goal.subformulas)
        except AttributeError:
            facts_goal_state = [problem.goal]
        instance_data[instance_id]['n_goal_facts'] = len(facts_goal_state)

        initial_facts = list(problem.init.as_atoms())
        instance_data[instance_id]['n_initial_facts'] = len(initial_facts)

    return instance_data


def get_analysis_overall_instances(domain_file, instance_dir, gold_plan_dir) -> dict:

    instance_data = get_analysis_instances(domain_file, instance_dir, gold_plan_dir)
    plan_lengths = [inst['plan_length'] for inst in instance_data.values()]
    n_objects = [inst['n_objects'] for inst in instance_data.values()]
    n_goal_facts = [inst['n_goal_facts'] for inst in instance_data.values()]
    n_initial_facts = [inst['n_initial_facts'] for inst in instance_data.values()]
    n_problems = len(instance_data.keys())

    plan_len_min = min(plan_lengths)
    plan_len_max = max(plan_lengths)
    plan_len_avg = sum(plan_lengths) / len(plan_lengths)

    n_objs_min = min(n_objects)
    n_objs_max = max(n_objects)
    n_objs_avg = sum(n_objects) / len(n_objects)

    n_gfacts_min = min(n_goal_facts)
    n_gfacts_max = max(n_goal_facts)
    n_gfacts_avg = sum(n_goal_facts) / len(n_goal_facts)

    n_ifacts_min = min(n_initial_facts)
    n_ifacts_max = max(n_initial_facts)
    n_ifacts_avg = sum(n_initial_facts)/ len(n_initial_facts)

    d = {'n_problems': n_problems,
        'plan_len_min': plan_len_min,
        'plan_len_max': plan_len_max,
        'plan_len_avg': plan_len_avg,
        'n_objs_min': n_objs_min,
        'n_objs_max': n_objs_max,
        'n_objs_avg': n_objs_avg,
        'n_gfacts_min': n_gfacts_min,
        'n_gfacts_max': n_gfacts_max,
        'n_gfacts_avg': n_gfacts_avg,
         'n_initfacts_min': n_ifacts_min,
         'n_initfacts_max': n_ifacts_max,
         'n_initfacts_avg': n_ifacts_avg
    }
    return d


def get_gold_plan(gold_plan_dir, instance_name):

    gold_plan_file = os.path.join(gold_plan_dir, f'{instance_name}_gold_plan.txt')

    gold_actions = []
    with open(gold_plan_file, 'r') as f:
        for line in f.readlines():
            if line.startswith('('):
                gold_actions.append(line.strip())

    return gold_actions


def get_problem(instance, domain: str):
    """

    :param instance: path to the instance_file
    :param domain: path to the domain_file
    :return:
    """
    reader = PDDLReader(raise_on_error=True)
    reader.parse_domain(domain)
    try:
        parsed_inst = reader.parse_instance(instance)
    except:
        print(instance)
        raise RuntimeError
    return parsed_inst


def get_analysis_domains(data_dir: str, output_file: str):

    domains_data = dict()

    for domain in os.listdir(data_dir):
        if 'demo' in domain:
            continue

        elif not os.path.isdir(os.path.join(data_dir, domain)):
            continue

        domain_file = os.path.join(data_dir, domain, 'domain.pddl')
        #instance_dir = os.path.join(data_dir, domain, 'adapted_instances')
        instance_dir = os.path.join(data_dir, domain, 'adapted_instances')

        gold_dir = os.path.join(data_dir, domain, 'gold_plans')

        try:
            info_domain_instances = get_analysis_overall_instances(domain_file=domain_file,
                                                           instance_dir=instance_dir,
                                                           gold_plan_dir=gold_dir)
            if len(info_domain_instances.keys()) == 0:
                print(f'Warning: no instances found for domain {domain}')
            else:
                info_domain_instances['domain'] = domain
                domains_data[domain] = info_domain_instances

        except FileNotFoundError as e:
            print(e)

    domains = list(domains_data.keys())
    domains.sort()
    ordered_columns = list(domains_data[domains[0]].keys())
    # make sure 'domain' is the first column
    ordered_columns.remove('domain')
    ordered_columns.sort()
    ordered_columns = ['domain'] + ordered_columns

    with open(output_file, 'w') as f:
        header = '\t'.join(ordered_columns)
        f.write(f'{header}\n')
        for d in domains:
            domain_d = domains_data[d]
            row = []
            for col_name in ordered_columns:
                row.append(str(domain_d[col_name]))
            line = '\t'.join(row)
            f.write(f'{line}\n')


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('-i', required=False, default=DATA_DIR, help='Path to data directory. Defaults to utils.paths.DATADIR')
    parser.add_argument('-o', required=True, help='Path to the file with the analysis results.')

    args = parser.parse_args()
    get_analysis_domains(data_dir=args.i, output_file=args.o)

