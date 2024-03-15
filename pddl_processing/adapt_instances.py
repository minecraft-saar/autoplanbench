import os
from pathlib import Path
import re
from collections import defaultdict
import json
from typing import Tuple


def adapt_instance_files(instances_path,
                         adapted_inst_dir,
                         overwrite: bool,
                         instance_mappings_file) -> Tuple[dict, list]:
    """

    :param instances_path:
    :param adapted_inst_dir:
    :param overwrite:
    :param instance_mappings_file:
    :return: dict with the mappings of the original and adapted object names
             list of all instances that got adapted
    """
    Path(adapted_inst_dir).mkdir(exist_ok=True, parents=True)
    if os.path.isfile(instances_path):
        instance_files = [instances_path]
    else:
        files = os.listdir(instances_path)
        instance_files = [os.path.join(instances_path, file) for file in files]
        instance_files = [file for file in instance_files if file.endswith('.pddl')]

    instances_mappings = dict()
    adapted_files = []
    if os.path.exists(instance_mappings_file):
        with open(instance_mappings_file, 'r') as f:
            instances_mappings = json.load(f)

    Path(adapted_inst_dir).mkdir(exist_ok=True, parents=True)
    for inst_file in instance_files:
        file_name = inst_file.split(os.sep)[-1]

        # if already existent files should not be overwritten then skip them
        if not overwrite and os.path.exists(os.path.join(adapted_inst_dir, file_name)):
            continue
        else:

            with open(inst_file, 'r') as f:
                content = f.read()

            adapted_file, mappings = adapt_inst_file(content, inst_file)
            instances_mappings[file_name] = mappings
            adapted_files.append(file_name)

            with open(os.path.join(adapted_inst_dir, file_name), 'w') as o:
                o.write(adapted_file)

    return instances_mappings, adapted_files


def adapt_inst_file(file_content: str, inst_file: str):
    """

    :param file_content:
    :param inst_file:
    :return:
    """
    # deal with different formatting
    file_content_cleaned = file_content.replace('\n', ' ')
    file_content_cleaned = ' '.join(file_content_cleaned.split())
    try:
        object_def = re.findall(r'\(:objects .*?\)', file_content_cleaned)
        object_def = object_def[0]
    except IndexError:
        raise IndexError(f'No objects defined in the instance file {inst_file}')

    objects_by_type = parse_objs_inst(object_def=object_def)
    object_mappings = create_object_mappings(objects_by_type)

    for object, new_object_name in object_mappings.items():

        reg = r'(\s+' + object + r'\s+|\s+' + object + r'\))'
        object_occurrences = re.findall(reg, file_content)

        for obj_occ in object_occurrences:
            only_white_spaces = obj_occ.replace(object, '||')
            pre_obj_white_space = only_white_spaces.split('||')[0]
            post_obj_white_space = only_white_spaces.split('||')[1]
            replace_term = f'{pre_obj_white_space}{new_object_name}{post_obj_white_space}'
            file_content = file_content.replace(obj_occ, replace_term)

    return file_content, object_mappings


def create_object_mappings(objects_by_type:dict):
    """

    :param objects_by_type:
    :return:
    """
    object_mapping = dict()
    for obj_type, objects in objects_by_type.items():
        for obj_ind, obj in enumerate(objects):
            object_mapping[obj] = f'{obj_type}_{obj_ind}'
    return object_mapping


def parse_objs_inst(object_def: str):
    """

    :param object_def:
    :return:
    """
    object_def = object_def.lower()     # lower-case
    object_def = object_def.replace('(:objects', '').replace(')', '')
    object_def = object_def.strip()
    objects = object_def.split(' ')

    objects_stack = []
    objects_by_type = defaultdict(list)
    next_is_type = False
    for token in objects:
        if token == '-':
            next_is_type = True
        elif next_is_type:
            for obj in objects_stack:
                objects_by_type[token].append(obj)
            objects_stack = []
            next_is_type = False
        else:
            objects_stack.append(token)

    for obj in objects_stack:
        objects_by_type['object'].append(obj)

    return objects_by_type

