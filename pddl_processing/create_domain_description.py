import os
import json
from jinja2 import Template
from pathlib import Path
from typing import Union

def create_domain_nl_description(domain_nl_file,
                                 output_file: Union[str, None] = None,
                                 template_file: str = 'pddl_processing/template_domain_description.txt'):

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

