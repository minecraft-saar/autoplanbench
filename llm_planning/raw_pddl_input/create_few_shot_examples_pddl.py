import json
import os.path
from pathlib import Path
from typing import Union
from argparse import ArgumentParser
from set_env import set_env_vars
from llm_planning.raw_pddl_input.raw_pddl_env import RawPDDLEnvironment
from llm_planning.create_few_shot_examples import read_plan_file


def create_pddl_examples(plan_dir,
                         instance_dir,
                         few_shot_id: int,
                         domain_file,
                         output_dir,
                         seed: int,
                         approach='act',
                         prefixes: tuple = ('', '')):
    """

    :param plan_dir:
    :param instance_dir:
    :param few_shot_id:
    :param domain_file:
    :param output_dir:
    :param prefixes:
    :return:
    """
    assert approach == 'act_pddl' or approach == 'basic_pddl'
    Path(output_dir).mkdir(exist_ok=True, parents=True)

    instance_file_path = os.path.join(instance_dir, f'instance-{few_shot_id}.pddl')

    instance_id = few_shot_id

    domain_env = RawPDDLEnvironment(instance_file=instance_file_path,
                                    domain_file=domain_file)

    initial_state = domain_env.get_description_initial_state()
    goal_state = domain_env.get_description_goal_state()

    plan_file_name = f'instance-{instance_id}_gold_plan.txt'
    plan_file_path = os.path.join(plan_dir, plan_file_name)
    gold_path = read_plan_file(plan_file_path)

    interactions = []

    for step, action in enumerate(gold_path):
        # needs to be the state before executing the action
        successful_feedback, executable, _ = domain_env.step(action_instr=action)
        assert executable
        interactions.append((action, successful_feedback))

    if approach == 'act_pddl':
        example_input_text = f'{goal_state}\n'
        example_input_text += f'I: {initial_state}\n'
        for inter in interactions:
            example_input_text += f'You: {inter[0]}\nI: {inter[1]}\n'
        example_output_text = ''

    else:
        example_input_text = f'{goal_state}\n'
        example_input_text += f'{initial_state}\n'
        example_output_text = ''
        for inter in interactions:
            example_output_text += f'{inter[0]}\n'
        example_output_text += '[PLAN END]'

    few_shot_file = os.path.join(output_dir, f'{approach}_examples_instance-{instance_id}_seed{seed}.json')
    with open(few_shot_file, 'w') as out:
        # remove last line break to avoid too many line breaks in prompt
        example_input_text = example_input_text.strip()
        example_output_text = example_output_text.strip()

        example_dict = {
            "prefixes": {"input": prefixes[0], "output": prefixes[1]},
            "pos_examples": [[example_input_text, example_output_text]]
        }
        json.dump(example_dict, out, indent=4)


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('--dir', required=True, help='Path to directory with all needed files')
    parser.add_argument('--appr', required=True, help='Planning approach: either "act_pddl" or "basic_pddl"')
    parser.add_argument('--few-shot-id', required=True, type=int)
    parser.add_argument('--seed', required=True, type=int)

    args = parser.parse_args()
    data_dir = args.dir
    approach = args.appr
    few_shot_id = args.few_shot_id

    domain_file = os.path.join(data_dir, 'domain.pddl')
    plan_dir = os.path.join(data_dir, 'orig_gold_plans')
    instance_dir = os.path.join(data_dir, 'orig_problems')

    # check whether few-shot example is in the orig_problems or only the orig_few_shot_instance folder
    example_instance_file_path = os.path.join(instance_dir, f'instance-{few_shot_id}.pddl')
    if not os.path.exists(example_instance_file_path):
        plan_dir = os.path.join(data_dir, 'orig_few_shot_instance_plan')
        instance_dir = os.path.join(data_dir, 'orig_few_shot_instance')

    if approach == 'act_pddl':
        prefixes = ('', '')
        output_dir = os.path.join(data_dir, 'few_shot_examples_act_pddl')
    else:
        prefixes = ('[STATEMENT]\n', '[PLAN]\n')
        output_dir = os.path.join(data_dir, 'few_shot_examples_basic_pddl')

    Path(output_dir).mkdir(exist_ok=True)

    create_pddl_examples(plan_dir=plan_dir,
                         instance_dir=instance_dir,
                         domain_file=domain_file,
                         output_dir=output_dir,
                         approach=approach,
                         prefixes=prefixes,
                         few_shot_id=few_shot_id,
                         seed=args.seed)


