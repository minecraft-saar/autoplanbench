import os
import json
from jinja2 import Template
from pathlib import Path
from typing import Union
from argparse import ArgumentParser


def create_domain_nl_description(domain_nl_file,
                                 output_file: Union[str, None] = None,
                                 template_file: str = './template_domain_description.txt'):
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



if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('-d', required=True, help='Path to the domain description file')
    parser.add_argument('-t', required=False, default=None, help='Path to the jinja template file')
    parser.add_argument('-o', required=True, help='Path to the file where the domain encoding is saved to')
    args = parser.parse_args()

    if args.t:
        create_domain_nl_description(domain_nl_file=args.d,
                                     output_file=args.o,
                                     template_file=args.t)
    else:
        create_domain_nl_description(domain_nl_file=args.d,
                                     output_file=args.o)

