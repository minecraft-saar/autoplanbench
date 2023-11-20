import os
import json
import random
import re
from collections import defaultdict
import copy
from pddl_processing.PDDL_describer import PDDLDescriber


def create_translation_examples(pddl_describer: PDDLDescriber):

    # For this I need some of the object mappings I think; but it would be good, to set the object ID in the name very high
    # Or I just take objects that are very unlikely to be part of a domain and put them together with high IDs

    example_actions = select_random_actions(pddl_describer=pddl_describer, n=5)

    descriptions = []
    pddls = []
    pddls_replaced = []
    object_maps = {'object_50': 'o', 'star_23': 'b', 'yew': 'yew', 'kumquat_8': 'c_8', 'screen': 'abc',
                    'teddy': 'td', 'roof_11': 'r_11', 'socket': 'z', 'rain': 'rn', 'object_26': 'o2',
                   'kumquat': 'k', 'fire': 'f'}

    object_type_mapping = create_type_mappings(pddl_describer.action_mappings_indef, list(object_maps.keys()))
    objects_used = []


    for action in example_actions:
        # select appropriate number of objects
        arity = len(pddl_describer.domain.actions[action]['parameters'])

        # create nl descriptions
        action_str = pddl_describer.action_mappings[action]

        # find type name
        tokens = action_str.split(' ')
        parameter_inds = [ind for ind, token in enumerate(tokens) if token == "{}"]
        parameter_types = []        # types of the parameters in the NL ordering(!)
        for p_ind in parameter_inds:
            obj_type = tokens[p_ind - 1]
            parameter_types.append(obj_type)

        #action_str = change_determiners(action_str)

        selected_objs = []
        for para_type in parameter_types:
            for i in range(5):
                object_with_type = random.choice(object_type_mapping[para_type])
                if object_with_type not in selected_objs:
                    selected_objs.append(object_with_type)
                    break
                if len(selected_objs) == arity:
                    break
                rand_int = random.randrange(20, 100)
                new_object_with_type = f'{object_with_type}_{rand_int}'
                object_type_mapping[para_type].append(new_object_with_type)
                object_maps[new_object_with_type] = f'{object_maps[object_with_type]}_{rand_int}'
                assert new_object_with_type not in selected_objs
                selected_objs.append(new_object_with_type)

        # selected_objs contains the selected object in the NL order because it is based on parameter_types which is based on the nl templates
        selected_objs_pddl_order = order_args(pddl_describer=pddl_describer, pred_name=action, obj_names_nl_order=selected_objs)

        action_descr = action_str.format(*selected_objs)
        descriptions.append(action_descr)
        objects_used.extend(selected_objs)

        # create pddl descriptions; but selected_objs is the NL order, not necessarily the PDDL order!
        pddl_str = f'({action} {" ".join(selected_objs_pddl_order)})'
        selected_objs_replaced = [object_maps[obj] for obj in selected_objs]
        pddl_str_replaced = f'({action} {" ".join(selected_objs_replaced)})'
        pddls.append(pddl_str)
        pddls_replaced.append(pddl_str_replaced)


    # Version without mappings from object names to domain names
    # example 1
    example1 = [f'Now, {descriptions[0]}.', pddls[0]] if len(example_actions) > 0 else []
    # example 2
    example2 = [f'Once you are done, please {descriptions[1]}.', pddls[1]] if len(example_actions) > 1 else []
    # example 3
    example3 = [f'First, {descriptions[2]} and then {descriptions[3]}.', f'{pddls[2]}\n{pddls[3]}'] if len(example_actions) > 3 else []
    # example 4
    example4 = [f'The next step is to {descriptions[4]}.', f'{pddls[4]}'] if len(example_actions) > 4 else []

    example_objects =  list(set(objects_used))
    try:
        example_objects.remove('yew')
    except ValueError:
        pass
    pos_ex = [example1, example2, example3, example4]
    pos_examples = [pex for pex in pos_ex if pos_ex != []]
    example_data = {'prefixes': {'input': 'Input:', 'output': 'Output:'},
                    'example_objs': example_objects,
                    'pos_examples': pos_examples}


    # Version with mappings from object names to domain names
    example_objects = [f'{key}: {value}' for key, value in object_maps.items() if key != 'yew']
    # example 1
    example1 = [f'Now, {descriptions[0]}.', f'[1] {pddls[0]} [2] {pddls_replaced[0]}'] if len(example_actions) > 0 else []
    # example 2
    example2 = [f'Once your done, please {descriptions[1]}.', f'[1] {pddls[1]} [2] {pddls_replaced[1]}'] if len(example_actions) > 1 else []
    # example 3
    example3 = [f'First, {descriptions[2]} and then {descriptions[3]}.', f'[1] {pddls[2]} [2] {pddls_replaced[2]}\n[1] {pddls[3]} [2] {pddls_replaced[3]}'] if len(example_actions) > 3 else []
    # example 4
    example4 = [f'The next step is to {descriptions[4]}.', f'[1] {pddls[4]} [2] {pddls_replaced[4]}'] if len(example_actions) > 4 else []

    pos_ex = [example1, example2, example3, example4]
    pos_examples = [pex for pex in pos_ex if pos_ex != []]

    example_data_repl = {'prefixes': {'input': 'Input:', 'output': 'Output:'},
                    'example_objs': example_objects,
                    'pos_examples': pos_examples}


    return example_data, example_data_repl


def order_args(pddl_describer: PDDLDescriber, pred_name: str, obj_names_nl_order: list):

    pddl_templ = pddl_describer.action_data[pred_name]['pddl']
    nl_templ = pddl_describer.action_nl_templates[pred_name]

    nl_order = re.findall(r'\{\?.+?\}', nl_templ)
    nl_order = [var.replace('{', '').replace('}', '') for var in nl_order]
    reduced_pddl_templ = pddl_templ.replace(')', ' ')
    pddl_order = re.findall(r'\?.+? ', reduced_pddl_templ)
    pddl_order = [var.strip() for var in pddl_order]

    assert set(nl_order) == set(pddl_order)

    obj_names_pddl_order = []
    for var_name in pddl_order:
        position_in_nl_order = nl_order.index(var_name)
        obj_name = obj_names_nl_order[position_in_nl_order]
        obj_names_pddl_order.append(obj_name)

    return obj_names_pddl_order


def create_type_mappings(action_mappings: dict, objects: list):

    all_types = set()

    for action, action_str in action_mappings.items():

        # find type name
        tokens = action_str.split(' ')
        parameter_inds = [ind for ind, token in enumerate(tokens) if token == "{}"]
        for p_ind in parameter_inds:
            obj_type = tokens[p_ind - 1]
            if obj_type != 'a' and obj_type != 'an':
                all_types.add(obj_type)

    assert len(all_types) <= len(objects)

    all_types = list(all_types)
    type_mapping = defaultdict(list)
    for ind, obj in enumerate(objects):
        type_ind = ind % len(all_types)
        type_name = all_types[type_ind]
        type_mapping[type_name].append(obj)

    return type_mapping


def select_random_actions(pddl_describer: PDDLDescriber, n=4):

    # Randomly select n actions from the domain, preferably n actions that have different number of arguments and preferably n actions that are different
    # If there is an action for which the argument order differs between PDDL and NL then this should be included
    actions_by_arity = defaultdict(list)
    actions_different_arg_order = []
    arity_actions_different_arg_order = []

    for action in pddl_describer.domain.actions.keys():

        pddl_ordered_action_args = list(pddl_describer.domain.actions[action]['parameters'].keys())
        nl_template = pddl_describer.action_nl_templates[action]
        # Extract the variables / args from the templates
        nl_args = re.findall(r'{.*?}', nl_template)
        nl_ordered_action_args = [nl_arg.replace('{', '').replace('}', '') for nl_arg in nl_args]

        if not len(pddl_ordered_action_args) == len(nl_ordered_action_args):
            print(action)

        assert len(pddl_ordered_action_args) == len(nl_ordered_action_args)
        # Compare the pddl and nl ordering
        if pddl_ordered_action_args != nl_ordered_action_args:
            actions_different_arg_order.append(action)
            arity_actions_different_arg_order.append(len(pddl_ordered_action_args))

        actions_by_arity[len(pddl_describer.domain.actions[action]['parameters'])].append(action)


    actions_rand = list(actions_by_arity.items())   # [(1, [a1, a2]), (2, [a3])]
    random.shuffle(actions_rand)
    for a in actions_rand:
        random.shuffle(a[1])

    actions_semi_rand = []
    for action_arity_tup in actions_rand:
        arity = action_arity_tup[0]
        actions = action_arity_tup[1]
        new_ordered_actions = []
        for ac in actions:
            if ac in actions_different_arg_order:
                new_ordered_actions.insert(0, ac)
            else:
                new_ordered_actions.append(ac)
        if arity in arity_actions_different_arg_order:
            actions_semi_rand.insert(0, (arity, new_ordered_actions))
        else:
            actions_semi_rand.append((arity, new_ordered_actions))
    assert len(actions_semi_rand) == len(actions_rand)

    actions_rand_orig = copy.deepcopy(actions_semi_rand)

    example_actions = []
    while len(example_actions) < n and len(example_actions) < len(pddl_describer.domain.actions.keys()):
        if len(actions_semi_rand) == 0:
            actions_semi_rand = actions_rand_orig
        empty_entries = []
        for action in actions_semi_rand:
            # arities should be distributed equally
            try:
                selected_action = action[1].pop(0)
                example_actions.append(selected_action)
            except IndexError:
                empty_entries.append(action)
        for ee in empty_entries:
            actions_semi_rand.remove(ee)


    example_actions = example_actions[:n]

    return example_actions


if __name__=='__main__':

    pddl_describer = PDDLDescriber('./data/logistics/domain.pddl')
    pddl_describer.instantiate_from_file(description_file='./data/logistics/logistics_domain_description.json')
    output_dir = './data/logistics/'

    print(f'---- Creating Few-shot Examples ----')
    translation_examples_file = os.path.join(output_dir, 'translation_examples.json')
    translation_examples_repl_file = os.path.join(output_dir, 'translation_examples_dict.json')
    example_data, example_data_replace = create_translation_examples(pddl_describer)
    with open(translation_examples_file, 'w') as f:
        json.dump(example_data, f, indent=4)
    with open(translation_examples_repl_file, 'w') as f:
        json.dump(example_data_replace, f, indent=4)


