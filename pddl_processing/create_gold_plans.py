import os
import subprocess
from pathlib import Path
from set_env import set_env_vars

set_env_vars()


def compute_plan(domain_file: str, instance_file: str, plan_file: str, plan_timeout: int, logging=True) -> bool:
    """
    Run fastdownward with A* search to find a plan for the problem in instance_file and save it
    :param domain_file: path to the pddl domain file
    :param instance_file: path to the file with the pddl problem instance
    :param plan_file: path to the file where the plan gets saved
    :param plan_timeout: time in seconds after which the planning gets aborted if no plan found so far
    :return: whether a plan was created for the problem
    """
    created_plan = False
    timed_out = False
    failed = False

    fast_downward_path = os.getenv("FAST_DOWNWARD")
    assert os.path.exists(f"{fast_downward_path}/fast-downward.py")
    fast_downward_executable = f'{fast_downward_path}/fast-downward.py'

    cmd_tokens = [fast_downward_executable, '--plan-file', plan_file, domain_file, instance_file, '--search', 'astar(lmcut())']

    instance_name = '.'.join(instance_file.split('.')[:-1])
    instance_name = instance_name.replace(os.path.sep, '_')
    if instance_name.startswith('.'):
        instance_name = instance_name[1:]

    if logging:
        log_dir = './pddl_processing/planner_logs'
        Path(log_dir).mkdir(exist_ok=True)
        log_file = os.path.join(log_dir, f'{instance_name}.txt')

    try:
        run_result = subprocess.run(args=cmd_tokens, timeout=plan_timeout, check=True, capture_output=True)
        console_output = str(run_result.stdout)
        if logging:
            with open(log_file, 'w') as log:
                log.write(console_output)

    except subprocess.TimeoutExpired as e:
        timed_out = True
    except subprocess.CalledProcessError as e:
        failed = True

    # if no solution found then the plan_file file will not be created
    if not os.path.exists(plan_file):

        if timed_out:
            print(
                f'Planner could not find a plan for {instance_file} within the specified time limit. Problem instance will be skipped.')
        elif failed:
            print(f'Something went wrong with solving problem in file {instance_file}. No plan was generated.')
        else:
            if logging:
                with open(log_file, 'r') as plan_log:
                    log = plan_log.read()
            if 'stopped without finding a solution' in log:
                print(f'Problem instance in file {instance_file} is not solvable and will be skipped')
            else:
                print(f'Something went wrong with solving problem in file {instance_file}. No plan was generated.')
    else:
        created_plan = True

    return created_plan


def create_gold_plan_files(domain_file: str,
                           instance_dir: str,
                           plan_dir: str,
                           plan_timeout: int,
                           new_files_names: list,
                           inst_obj_mappings: dict,
                           overwrite_plans: bool = False):
    """
    Run fastdownward with A* search to find all plans for the problems in the instance_dir and save them
    :param domain_file: path to the pddl domain file
    :param instance_dir: path to the directory with the problem instance files
    :param plan_dir: path to the directory where the files with the gold plans get saved
    :param plan_timeout: time in seconds after which the planning for a specific problem gets aborted if no plan found so far
    :param new_files_names: names of the files where the object names got adapted
    :param inst_obj_mappings: mappings of the original to adapted object names
    :param overwrite_plans: whether to recompute plans that are already available
    :return:
    """
    generated_plans = []
    kept_plans = []
    Path(plan_dir).mkdir(exist_ok=True, parents=True)
    for instance_file in os.listdir(instance_dir):
        instance_file_path = os.path.join(instance_dir, instance_file)

        plan_file_path = get_plan_file_name(instance_file_name=instance_file,
                                       plan_dir=plan_dir)

        # if plan already exists and should not be overwritten then skip planning
        if not overwrite_plans and os.path.exists(plan_file_path):
            # if there are already plans available for instances that have not been yet adapted then adapt the plan files accordingly
            if instance_file in new_files_names:
                adapt_gold_plan(instance_file=instance_file, inst_obj_mappings=inst_obj_mappings, plan_file_path=plan_file_path)
            kept_plans.append(True)
        else:
            plan_created = compute_plan(domain_file=domain_file, instance_file=instance_file_path,
                                        plan_file=plan_file_path, plan_timeout=plan_timeout)
            generated_plans.append(plan_created)

    skipped_problems = generated_plans.count(False)
    if skipped_problems > 0:
        print(f'For {skipped_problems} out of {len(generated_plans)} problem instances no plans were generated.) ')
    if len(kept_plans) > 0:
        print(f'{len(kept_plans)} were already available and not created again.')


def get_plan_file_name(instance_file_name: str, plan_dir):
    """

    :param instance_file_name:
    :param plan_dir:
    :return:
    """
    instance_name = instance_file_name.split('.')[:-1]
    instance_name = '.'.join(instance_name)
    plan_file = f'{instance_name}_gold_plan.txt'
    plan_file_path = os.path.join(plan_dir, plan_file)
    return plan_file_path


def adapt_gold_plan(instance_file: str, inst_obj_mappings: dict, plan_file_path:str):
    """

    :param instance_file:
    :param inst_obj_mappings:
    :param plan_file_path:
    :return:
    """
    obj_mappings = inst_obj_mappings[instance_file]

    with open(plan_file_path, 'r') as pf:
        actions = []
        for line in pf.readlines():
            actions.append(line.strip())

        actions_adapted = []
        for action_str in actions:
            if not action_str.startswith('('):
                actions_adapted.append(action_str)

            else:
                no_brackets = action_str.replace('(', '').replace(')', '')
                no_brackets = no_brackets.strip()
                action_name = no_brackets.split(' ')[0]
                action_args = no_brackets.split(' ')[1:]

                new_args = []
                for action_arg in action_args:
                    new_arg_name = obj_mappings[action_arg]
                    new_args.append(new_arg_name)

                new_action_args = ' '.join(new_args)
                new_action = f'({action_name} {new_action_args})'
                actions_adapted.append(new_action)

    with open(plan_file_path, 'w') as pf:
        for ac in actions_adapted:
            pf.write(f'{ac}\n')

