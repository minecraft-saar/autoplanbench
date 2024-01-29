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


def create_gold_plan_files(domain_file: str, instance_dir: str, plan_dir: str, plan_timeout: int, overwrite_plans: bool = False):
    """
    Run fastdownward with A* search to find all plans for the problems in the instance_dir and save them
    :param domain_file: path to the pddl domain file
    :param instance_dir: path to the directory with the problem instance files
    :param plan_dir: path to the directory where the files with the gold plans get saved
    :param plan_timeout: time in seconds after which the planning for a specific problem gets aborted if no plan found so far
    :param overwrite_plans: whether to recompute plans that are already available
    :return:
    """
    generated_plans = []
    kept_plans = []
    Path(plan_dir).mkdir(exist_ok=True, parents=True)
    for instance_file in os.listdir(instance_dir):
        instance_file_path = os.path.join(instance_dir, instance_file)

        instance_file_name = instance_file.split('.')[:-1]
        instance_file_name = '.'.join(instance_file_name)
        plan_file = f'{instance_file_name}_gold_plan.txt'
        plan_file_path = os.path.join(plan_dir, plan_file)

        # if plan already exists and should not be overwritten then skip planning
        if not overwrite_plans and os.path.exists(plan_file_path):
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

