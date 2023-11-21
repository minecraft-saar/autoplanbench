import os
from set_env import set_env_vars
from utils.paths import DATA_DIR
set_env_vars()

"""
Script to check that for each instance in the DATA_DIR there is a valid gold plan available
"""

def check_plans():

    with open('check_plans_output.txt', 'w') as f:
        f.write('')
    data_dir = DATA_DIR
    for domain_dir in os.listdir(data_dir):
        print(f'Checking domain {domain_dir}')
        domain_dir_path = os.path.join(data_dir, domain_dir)
        if os.path.isdir(domain_dir_path) and not 'demo' in domain_dir:
            validate_plans(domain_dir_path)


def validate_plans(domain_dir_path: str):

    instance_dir_path = os.path.join(domain_dir_path, 'adapted_instances')
    plan_dir_path = os.path.join(domain_dir_path, 'gold_plans')
    domain_file_path = os.path.join(domain_dir_path, 'domain.pddl')
    for instance_file in os.listdir(instance_dir_path):
        instance_path = os.path.join(instance_dir_path, instance_file)
        instance_name = instance_file.replace('.pddl', '')
        plan_file = f'{instance_name}_gold_plan.txt'
        plan_path = os.path.join(plan_dir_path, plan_file)

        if not os.path.exists(plan_path):
            with open('check_plans_output.txt', 'a') as f:
                f.write(f'Warning: No plan for {instance_path}\n')

        else:
            val = os.environ.get('VAL')
            cmd = f'{val}/validate -v {domain_file_path} {instance_path} {plan_path}'
            response = os.popen(cmd).read()
            valid_plan = True if 'Plan valid' in response else False
            valid_instance = False if 'Bad plan file' in response else True
            if not valid_plan:
                with open('check_plans_output.txt', 'a') as f:
                    f.write(f'Computed plan for {instance_path} is not valid')
            if not valid_instance:
                with open('check_plans_output.txt', 'a') as f:
                    f.write(f'Instance {instance_path} is not valid')

if __name__=='__main__':

    check_plans()


