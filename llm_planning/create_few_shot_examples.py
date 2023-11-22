import json
import os.path
from pathlib import Path
import random
from ast import literal_eval
from typing import Union
from argparse import ArgumentParser
from set_env import set_env_vars
from llm_planning.game_classes.pddl_game_env import PDDLWorldEnvironment
from llm_planning.game_classes.pddl_game_env_planbench import PlanBenchEnvironment
from llm_planning.select_few_shot_example import select_few_shot_instance
from utils.paths import get_few_shot_dir, get_few_shot_ex_file


set_env_vars()
possible_prefixes = ['', 'Now, ', 'Next, ', 'As the next step, ']


def create_few_shot_examples(plan_dir, instance_dir, domain_nl_file, domain_file, output_dir, planning_type: str, is_planbench: bool = False, prefixes: tuple = ('', '')):
    """

    :param plan_dir:
    :param instance_dir:
    :param domain_nl_file:
    :param domain_file:
    :param output_dir:
    :param planning_type: either 'basic', 'act', 'state_reasoning'
    :param prefixes:
    :return:
    """

    Path(output_dir).mkdir(exist_ok=True, parents=True)

    with open(domain_nl_file, 'r') as nl_file:
        domain_nl = json.load(nl_file)

    for instance_file in os.listdir(instance_dir):
        instance_file_path = os.path.join(instance_dir, instance_file)
        instance_id = int(instance_file.replace('instance-', '').replace('.pddl', ''))

        if is_planbench:
            domain_env = PlanBenchEnvironment(domain_nl=domain_nl, instance_file=instance_file_path, domain_file=domain_file)
        else:
            domain_env = PDDLWorldEnvironment(domain_nl=domain_nl, instance_file=instance_file_path, domain_file=domain_file)


        initial_state = domain_env.get_description_initial_state()
        goal_state = domain_env.get_description_goal_state()

        plan_file_name = f'instance-{instance_id}_gold_plan.txt'
        plan_file_path = os.path.join(plan_dir, plan_file_name)
        gold_path = read_plan_file(plan_file_path)

        interactions = []
        for step, action in enumerate(gold_path):
            nl_instruction = domain_env.get_description_action(action)
            if step != 0:
                pref = random.choice(possible_prefixes)
                nl_instruction = pref + nl_instruction
            # needs to be the state before executing the action
            current_state_description = f'{domain_env.get_description_state(domain_env.facts_current_state)}'
            successful_feedback, executable, _ = domain_env.step(action_instr=action)
            assert executable
            #successful_feedback = domain_env.get_feedback_successful(action)

            interactions.append((nl_instruction, successful_feedback, current_state_description))


        if planning_type == 'state_reasoning':
            example_input_text = f'{goal_state}\n'
            example_input_text += f'I: {initial_state}\n'

            for inter in interactions:
                example_input_text += f'You:\n\tThink: {inter[2]}\n\tInstruction: {inter[0]}\nI: {inter[1]}\n'
            goal_state_description = domain_env.get_description_state(domain_env.facts_goal_state)
            example_input_text += f'You:\n\tThink: {goal_state_description}\n\tInstruction: You are finished.\nI: Great!'
            example_output_text = ''

        elif planning_type == 'basic':
            example_input_text = f'{goal_state}\n'
            example_input_text += f'{initial_state}\n'
            example_output_text = ''
            for inter in interactions:
                example_output_text += f'{inter[0]}\n'
            example_output_text += '[PLAN END]'

        elif planning_type == 'act':
            example_input_text = f'{goal_state}\n'
            example_input_text += f'I: {initial_state}\n'
            for inter in interactions:
                example_input_text += f'You: {inter[0]}\nI: {inter[1]}\n'
            example_input_text += "You: You're finished\nI: Great!"
            example_output_text = ''
        else:
            raise ValueError

        few_shot_file = get_few_shot_ex_file(few_shot_dir=output_dir, instance_id=instance_id, approach=planning_type)
        with open(few_shot_file, 'w') as out:
            # remove last line break to avoid too many line breaks in prompt
            example_input_text = example_input_text.strip()
            example_output_text = example_output_text.strip()

            example_dict = {
                "prefixes": {"input": prefixes[0], "output": prefixes[1]},
                "pos_examples": [[example_input_text, example_output_text]]
            }
            json.dump(example_dict, out, indent=4)


def read_plan_file(plan_file):

    actions = []

    with open(plan_file, 'r') as f:
        for line in f.readlines():
            if line.startswith('('):
                actions.append(line.strip())

    return actions


def create_react_few_shot_example_template(example_inst_plan: str,
                                           example_inst: str,
                                           domain_nl_file: str,
                                           domain_file: str,
                                           output_file: str,
                                           is_planbench: bool,
                                           length: Union[int, None],
                                           prefixes: tuple = ('', '')):
    """

    :param example_inst_plan:
    :param example_inst:
    :param domain_nl_file:
    :param domain_file:
    :param output_file:
    :param is_planbench:
    :param length:
    :param prefixes:
    :return:
    """

    with open(domain_nl_file, 'r') as nl_file:
        domain_nl = json.load(nl_file)

    plan = read_plan_file(example_inst_plan)

    example_plan = plan#[: -length]

    if is_planbench:
        domain_env = PlanBenchEnvironment(domain_nl=domain_nl, instance_file=example_inst, domain_file=domain_file)
    else:
        domain_env = PDDLWorldEnvironment(domain_nl=domain_nl, instance_file=example_inst, domain_file=domain_file)

    orig_initial_state = domain_env.facts_initial_state

    instructions_and_feedback_and_state = []
    for plan_action in example_plan:
        starting_state = domain_env.facts_current_state.copy()
        nl_instruction = domain_env.get_description_action(plan_action)
        successful_feedback, _, _ = domain_env.step(plan_action)
        resulting_state = domain_env.facts_current_state.copy()
        instructions_and_feedback_and_state.append((nl_instruction, successful_feedback, starting_state, resulting_state))

    if length:
        reduced_interaction = instructions_and_feedback_and_state[-length:]
    else:
        reduced_interaction = instructions_and_feedback_and_state
    #print(reduced_interaction[0][2])
    #print(reduced_interaction[0][3])

    facts_new_initial_state = reduced_interaction[0][2]
    domain_env.facts_initial_state = facts_new_initial_state
    #print(domain_env.facts_initial_state == orig_initial_state)
    new_initial_state = domain_env.get_description_initial_state()
    new_goal_state = domain_env.get_description_state_basic(domain_env.facts_goal_state)

    example = f'{domain_env.get_description_goal_state()}\n'
    example += f'I: {new_initial_state}\n'
    for instr_feed in reduced_interaction:
        instr = instr_feed[0]
        feedback = instr_feed[1]
        example += f'You:\n\tThink: [TODO: ADD REASONING THOUGHT]\n\tInstruction: {instr}\n'
        example += f'I: {feedback}\n'
    example+= f'You:\n\tThink: {new_goal_state}\n\tInstruction: You are finished.\nI: Great!'

    with open(output_file, 'w') as out:

        example_dict = {
            "prefixes": {"input": prefixes[0], "output": prefixes[1]},
            "pos_examples": [[example, '']]
        }
        json.dump(example_dict, out, indent=4)




if __name__=='__main__':


    parser = ArgumentParser()
    parser.add_argument('--dir', required=True, help='Path to directory with all needed files')
    parser.add_argument('--ex-id', required=False, default=None, help="If version is react then specify the ID of the instance that should be converted into a few-shot example")
    parser.add_argument('--pref', required=True, default=False, help='Tuple of the prefixes that should be added to the beginning of the input and output few-shot examples. First prefix is for the input and second one for the output.')
    parser.add_argument('--version', required=True, help='For which approach to create the few-shot examples. Can be: "incremental", "basic", "state_reasoning", "react".')
    parser.add_argument('--is-pb', required=False, default=False, help='Set to True if the input is from the Planbench Repo')
    parser.add_argument('--react-len', required=False, default=None, help='The length to which the few-shot example for react should be shortened to.')
    
    
    args = parser.parse_args()
    prefixes = literal_eval(args.pref)
    is_planbench = literal_eval(args.is_pb) if isinstance(args.is_pb, str) else args.is_pb
    example_id = literal_eval(args.ex_id) if isinstance(args.ex_id, str) else None
    data_dir = args.dir
    planning_approach = args.version
    react_length = literal_eval(args.react_len) if isinstance(args.react_len, str) else args.react_len

    plan_dir = os.path.join(data_dir, 'gold_plans')
    instance_dir = os.path.join(data_dir, 'adapted_instances')
    domain_nl_file = os.path.join(data_dir, 'domain_description.json')
    domain_file = os.path.join(data_dir, 'domain.pddl')

    output_dir = get_few_shot_dir(planning_approach=planning_approach, domain_data_dir=data_dir)

    Path(output_dir).mkdir(exist_ok=True)

    if planning_approach == 'react' or 'cot':
        plan_file = os.path.join(plan_dir, f'instance-{example_id}_gold_plan.txt')
        instance_file = os.path.join(instance_dir, f'instance-{example_id}.pddl')
        output_file = os.path.join(output_dir, f'react_template_instance-{example_id}.json')
        create_react_few_shot_example_template(example_inst_plan=plan_file,
                                               example_inst=instance_file,
                                               domain_nl_file=domain_nl_file,
                                               domain_file=domain_file,
                                               output_file=output_file,
                                               is_planbench=is_planbench,
                                               length=react_length
                                               )
    else:
        create_few_shot_examples(plan_dir=plan_dir,
                                 instance_dir=instance_dir,
                                 domain_file=domain_file,
                                 domain_nl_file=domain_nl_file,
                                 output_dir=output_dir,
                                 prefixes=prefixes,
                                 planning_type=planning_approach,
                                 is_planbench=is_planbench)
