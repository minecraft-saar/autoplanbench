import os
import json
from jinja2 import Template
from pathlib import Path
from typing import Union
from argparse import ArgumentParser
from llm_planning.game_classes.pddl_game_env import PDDLWorldEnvironment
from utils.paths import DOMAIN_DESCRIPTION_TEMPLATE


def create_domain_nl_description(domain_nl_file: str,
                                 output_file: Union[str, None] = None,
                                 template_file: str = DOMAIN_DESCRIPTION_TEMPLATE):
    """
    Creates the NL encoding of a domain in the format specified in the template file and saves it to an output file
    :param domain_nl_file: path to the domain nl .json file
    :param output_file: path to the text file for the output
    :param template_file: path to a jinja template file
    :return:
    """

    with open(template_file, 'r') as f:
        template = Template(f.read())

    with open(domain_nl_file, 'r') as f:
        domain_nl = json.load(f)

    if not output_file:
        domain_dir = os.path.split(domain_nl_file)[0]
        output_file = os.path.join(domain_dir, 'domain_encoding.txt')

    preconditions = []
    effects = []
    for action in domain_nl['actions'].keys():
        preconditions.extend(domain_nl['actions'][action]['preconditions'])
        effects.extend(domain_nl['actions'][action]['effects'])

    actions = []
    for action_name in domain_nl['actions'].keys():
        actions.append(domain_nl['actions'][action_name]['description'])
    actions = '\n'.join(actions)

    template_args = {
        'actions': actions,
        'preconditions': preconditions,
        'effects': effects,
        'type_hierarchy': domain_nl['type_hierarchy']
    }

    domain_description = template.render(**template_args)

    output_dir = os.path.split(output_file)[0]
    Path(output_dir).mkdir(exist_ok=True)

    with open(output_file, 'w') as file:
        file.write(domain_description)


def create_problem_nl_description(problem_file: str,
                                  domain_nl_file: str,
                                  domain_pddl_file: str,
                                  output_file: str):

    with open(domain_nl_file, 'r') as df:
        domain_nl = json.load(df)

    domain_env = PDDLWorldEnvironment(domain_nl=domain_nl, instance_file=problem_file, domain_file=domain_pddl_file)

    initial_state = domain_env.get_description_initial_state()
    goal_state = domain_env.get_description_goal_state()

    output_folder = os.path.split(output_file)[0]
    Path(output_folder).mkdir(exist_ok=True)
    with open(output_file, 'w') as f:
        f.write(f'{initial_state}\n\n')
        f.write(f'{goal_state}')


def create_readable_few_shot(example_file: str, output_file: str):

    with open(example_file, 'r') as ef:
        few_shot = json.load(ef)

    prefixes = few_shot['prefixes']
    examples = few_shot['pos_examples']

    examples_text = ''
    for ex in examples:

        input = f'{prefixes["input"]}{ex[0]}'
        output = f'{prefixes["output"]}{ex[1]}'

        examples_text += f'{input}\n{output}\n\n'

    output_folder = os.path.split(output_file)[0]
    Path(output_folder).mkdir(exist_ok=True)
    with open(output_file, 'w') as f:
        f.write(examples_text)


if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('--type', required=True, help='Which type of description to generate. Can be "domain", "example" or "instance"')
    parser.add_argument('-o', required=True, help='Path to the file where the descriptions is saved to')
    parser.add_argument('-t', required=False, default=None, help='Path to the jinja template file for the domain descriptions')
    parser.add_argument('-p', required=False, default=None, help='Path to the problem pddl file for which description is generated')
    parser.add_argument('--d-nl', required=False, default=None, help='Path to the NL domain .json file')
    parser.add_argument('-d', required=False, default=None, help='Path to the PDDL domain file')
    parser.add_argument('-e', required=False, default=None, help='Path to the example file to convert in human readable format')

    args = parser.parse_args()

    descrip_type = args.type
    if descrip_type == 'domain':
        assert args.t and args.d_nl
        create_domain_nl_description(domain_nl_file=args.d_nl,
                                     output_file=args.o,
                                     template_file=args.t)
    elif descrip_type == 'example':
        assert args.e
        create_readable_few_shot(example_file=args.e,
                                 output_file=args.o)
    elif descrip_type == 'instance':
        assert args.d and args.p and args.d_nl
        create_problem_nl_description(problem_file=args.p, domain_nl_file=args.d_nl, domain_pddl_file=args.d,
                                      output_file=args.o)
    else:
        raise NotImplementedError




