import os
import json
from pathlib import Path
import yaml
import re
from collections import UserDict
from typing import Union
from argparse import ArgumentParser

"""
Script to transform the config files from Planbench https://github.com/karthikv792/LLMs-Planning/tree/main 
to the format required for AutoPlanBench 
Only developed to work for Blocksworld, Logistics and Depot. Potentially new domains added to PlanBench might
not be covered.
"""

def transform_planbench_config(yaml_config_file: str, json_config_file: str):

    with open(yaml_config_file, 'r') as f:
        config = yaml.safe_load(f)

    reformatted = dict()

    reformatted['action_mappings'] = config['actions']
    reformatted['predicate_mappings'] = config['predicates']
    reformatted['encoded_objects'] = dict()
    for obj_var, obj_name in config['encoded_objects'].items():
        obj_name_tokens = obj_name.split(' ')
        new_object_var = '_'.join(obj_name_tokens)
        reformatted['encoded_objects'][new_object_var] = obj_name

    reformatted['type_hierarchy'] = []

    reformatted['domain_intro'] = config['domain_intro']

    reformatted['action_mappings_indef'] = dict()

    with open(json_config_file, 'w') as f:
        json.dump(reformatted, f, indent=4)


class IdentityEncodingDict(dict):
    def __getitem__(self, item):
        return item


class StrFormatEncodingDict(UserDict):
    """
    self.data should look like this:
    {"p": "package_{}", "t": "truck_{}", "a": "airplane_{}", "l": "location_{}_{}", "c": "city_{}"}
    """
    def __getitem__(self, item: str):
        """
        takes the first character of item as the key for accessing the underlying dictionary data
        and all numerical characters as individual parameters for the format strings that are the values of the underlying dictionary data
        e.g. if item == p0 then returns package_0
            if item == l2-3 then returns location_2_3
        :param item:
        :return:
        """
        unqiue_ids = []
        actual_key = item[0]
        for char in item:
            if char.isnumeric():
                unqiue_ids.append(char)

        template = self.data[actual_key]

        return template.format(*unqiue_ids)


def adapt_problems_and_gold(orig_instance_dir: str,
                            orig_domain_nl_file: str,
                            adapted_inst_dir: str,
                            instance_obj_mappings_file: str,
                            orig_plan_dir: Union[str, None] = None,
                            adapted_plan_dir: Union[str, None] = None):
    """

    :param orig_instance_dir:
    :param orig_domain_nl_file:
    :param adapted_inst_dir:
    :param instance_obj_mappings_file:
    :param orig_plan_dir:
    :param adapted_plan_dir:
    :return:
    """
    if os.path.isfile(orig_instance_dir):
        instance_files = [orig_instance_dir]
    else:
        files = os.listdir(orig_instance_dir)
        instance_files = [os.path.join(orig_instance_dir, file) for file in files]
        instance_files = [file for file in instance_files if file.endswith('.pddl')]

    with open(orig_domain_nl_file, 'r') as df:
        domain_nl = yaml.safe_load(df)

    # the encoded_objects dicts for blocksworld are different for those for logistics
    if 'blocksworld' in orig_domain_nl_file:
        object_mappings = dict()
        for obj_var, obj_name in domain_nl['encoded_objects'].items():
            obj_name_tokens = obj_name.split(' ')
            new_object_var = '_'.join(obj_name_tokens)
            object_mappings[obj_var] = new_object_var
    elif 'logistics' in orig_domain_nl_file:
        original_encoded_objects = domain_nl['encoded_objects'].items()
        object_mappings = StrFormatEncodingDict(list(original_encoded_objects))
    else:
        object_mappings = IdentityEncodingDict()

    print(f'---- Adapting Problem Files ----')
    Path(adapted_inst_dir).mkdir(exist_ok=True, parents=True)
    for inst_file in instance_files:
        with open(inst_file, 'r') as f:
            content = f.read()

        objects_current_problem = get_objs_inst(file_content=content)
        for object in objects_current_problem:
            new_object_name = object_mappings[object]

            reg = r'(\s+' + object + r'\s+|\s+' + object + r'\))'
            object_occurrences = re.findall(reg, content)

            for obj_occ in object_occurrences:
                only_white_spaces = obj_occ.replace(object, '||')
                pre_obj_white_space = only_white_spaces.split('||')[0]
                post_obj_white_space = only_white_spaces.split('||')[1]
                replace_term = f'{pre_obj_white_space}{new_object_name}{post_obj_white_space}'
                content = content.replace(obj_occ, replace_term)

        file_name = inst_file.split(os.sep)[-1]

        with open(os.path.join(adapted_inst_dir, file_name), 'w') as o:
            o.write(content)

    with open(instance_obj_mappings_file, 'r') as f:
        instance_obj_mappings = json.load(f)

    if orig_plan_dir is not None:
        print(f'---- Creating Gold Plan Files ----')
        Path(adapted_plan_dir).mkdir(exist_ok=True, parents=True)

        for plan_file in os.listdir(orig_plan_dir):
            plan_file_path = os.path.join(orig_plan_dir, plan_file)
            plan_actions = []
            with open(plan_file_path, 'r') as f:
                for line in f.readlines():
                    if line.startswith('('):
                        plan_actions.append(line.strip())

            adapted_plan_actions = []
            orig_plan_actions = []

            # change the object names
            # Important: object names in the planning files are not the same as in the original files but the ones from the adapted files
            # Need one version with the names adapted to the naming in the new config files and one version with the original variable names
            instance_name = plan_file.replace('_gold_plan.txt', '.pddl')
            plan_object_mappings, orig_plan_mappings = get_plan_object_mappings(orig2auto_generated=instance_obj_mappings[instance_name],
                                                            orig2planbench=object_mappings)

            for action in plan_actions:
                no_brackets = action.replace('(', '').replace(')', '')
                action_name = no_brackets.split(' ')[0]
                action_args = no_brackets.split(' ')[1:]

                new_args = []
                orig_args = []
                for action_arg in action_args:
                    new_arg_name = plan_object_mappings[action_arg]
                    new_args.append(new_arg_name)

                    orig_arg_name = orig_plan_mappings[action_arg]
                    orig_args.append(orig_arg_name)

                new_action_args = ' '.join(new_args)
                new_action = f'({action_name} {new_action_args})'
                adapted_plan_actions.append(new_action)

                orig_action_args = ' '.join(orig_args)
                orig_action = f'({action_name} {orig_action_args})'
                orig_plan_actions.append(orig_action)


            inst_plan_file_path = os.path.join(adapted_plan_dir, plan_file)

            with open(inst_plan_file_path, 'w') as pf:
                for adapted_ac in adapted_plan_actions:
                    pf.write(f'{adapted_ac}\n')

            parent_path = os.path.split(adapted_plan_dir)[0]
            orig_gold_path = os.path.join(parent_path, 'orig_gold_plans')
            Path(orig_gold_path).mkdir(exist_ok=True, parents=True)
            orig_plan_file_path = os.path.join(orig_gold_path, plan_file)
            with open(orig_plan_file_path, 'w') as pf:
                for orig_ac in orig_plan_actions:
                    pf.write(f'{orig_ac}\n')



def get_plan_object_mappings(orig2auto_generated: dict, orig2planbench: dict):

    plan_mappings = dict()
    orig_plan_mappings = dict()
    for orig_name in orig2auto_generated.keys():
        auto_generated_name = orig2auto_generated[orig_name]
        planbench_name = orig2planbench[orig_name]
        plan_mappings[auto_generated_name] = planbench_name

        orig_plan_mappings[auto_generated_name] = orig_name

    return plan_mappings, orig_plan_mappings



def get_objs_inst(file_content: str):
    # deal with different formatting
    file_content_cleaned = file_content.replace('\n', ' ')
    file_content_cleaned = ' '.join(file_content_cleaned.split())

    object_def = re.findall(r'\(:objects .*?\)', file_content_cleaned)
    object_def = object_def[0]
    object_def = object_def.lower()  # lower-case
    object_def = object_def.replace('(:objects', '').replace(')', '')
    object_def = object_def.strip()
    objects = object_def.split(' ')

    objects_list = []
    next_is_type = False
    for token in objects:
        if token == '-':
            next_is_type = True
        elif next_is_type:
            next_is_type = False
        else:
            objects_list.append(token)

    return objects_list




if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('-c', required=True, help="Path to the original .yaml config file")
    parser.add_argument('--planbench_dir', required=True)
    parser.add_argument('--orig_data_dir', required=True)

    args = parser.parse_args()

    orig_config_path = args.c
    new_config_path = os.path.join(os.path.split(orig_config_path)[0], 'domain_description.json')

    # Transform the natural language descriptions into the required format
    transform_planbench_config(yaml_config_file=orig_config_path,
                               json_config_file=new_config_path)


    # Adapt the instances and plan files to match the variables etc.
    orig_instances_dir = os.path.join(args.orig_data_dir, 'orig_problems')
    orig_plan_dir = os.path.join(args.orig_data_dir, 'gold_plans')
    instance_names_mappings = os.path.join(args.orig_data_dir, 'instance_object_mappings.json')

    adapted_instances_dir = os.path.join(args.planbench_dir, 'adapted_instances')
    adapted_plan_dir = os.path.join(args.planbench_dir, 'gold_plans')

    adapt_problems_and_gold(orig_instance_dir=orig_instances_dir,
                            orig_domain_nl_file=orig_config_path,
                            adapted_inst_dir=adapted_instances_dir,
                            instance_obj_mappings_file=instance_names_mappings,
                            orig_plan_dir=orig_plan_dir,
                            adapted_plan_dir=adapted_plan_dir)


