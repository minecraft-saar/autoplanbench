from typing import List, Tuple


def create_long_version(action_description: str,
                        positive_precond_descriptions: List[str],
                        negative_precond_descriptions: List[str],
                        add_effects: List[str],
                        del_effects: List[str]) -> Tuple[list, list]:
    """
    Creates one sentence for all preconditions and one sentence for all effects
    e.g.
    "I can only [action_description] if [pos_precond_1] and [pos_precond_2] ... and not [neg_precond_1] and not ..."
    "Once I [action_description], [add_effect_1] and [add_effect_2] and not [del_effect_1] anymore and not [del_effect_2] anymore ..."
    :param action_description:
    :param positive_precond_descriptions:
    :param negative_precond_descriptions:
    :param add_effects:
    :param del_effects:
    :return:
    """
    pos_descriptions = ' and '.join(positive_precond_descriptions)
    neg_descriptions = ' and '.join([f'not {neg_des}' for neg_des in negative_precond_descriptions])
    if pos_descriptions != '' and neg_descriptions != '':
        precond_descriptions = ' and '.join([pos_descriptions, neg_descriptions])
    else:
        precond_descriptions = pos_descriptions + neg_descriptions
    add_descriptions = ' and '.join(add_effects)
    del_descriptions = ' and '.join([f'not {del_eff} anymore' for del_eff in del_effects])
    if add_descriptions != '' and del_descriptions != '':
        effect_descriptions = ' and '.join([add_descriptions, del_descriptions])
    else:
        effect_descriptions = add_descriptions + del_descriptions

    action_condition_description = f'I can only {action_description} if {precond_descriptions}.'
    action_effect_description = f'Once I {action_description}, {effect_descriptions}.'

    return [action_condition_description], [action_effect_description]


def create_short_version(action_description: str,
                         positive_precond_descriptions: List[str],
                         negative_precond_descriptions: List[str],
                         add_effects: List[str],
                         del_effects: List[str]) -> Tuple[list, list]:
    """
    Creates one sentence per preconditions and one sentence per effect
    "I can only [action_description] if it is the case that [pos_precond_1]"
    ...
    "I can only [action_description] if it is not the case that [neg_precond_1]"
    ...
    "Once I [action_description], it is the case that [add_effect_1]."
    ...
    "Once I [action_description], it is not the case anymore that [del_effect_1]."
    ...
    :param action_description:
    :param positive_precond_descriptions:
    :param negative_precond_descriptions:
    :param add_effects:
    :param del_effects:
    :return:
    """
    action_conditions_descriptions = []
    action_effect_descriptions = []
    for prec in positive_precond_descriptions:
        action_conditions_descriptions.append(f'I can only {action_description} if it is the case that {prec}.')
    for prec in negative_precond_descriptions:
        action_conditions_descriptions.append(f'I can only {action_description} if it is not the case that {prec}.')
    for a_eff in add_effects:
        action_effect_descriptions.append(f'Once I {action_description}, it is the case that {a_eff}.')
    for d_eff in del_effects:
        action_effect_descriptions.append(f'Once I {action_description}, it is not the case anymore that {d_eff}.')

    return action_conditions_descriptions, action_effect_descriptions


def create_medium_version(action_description: str,
                          positive_precond_descriptions: List[str],
                          negative_precond_descriptions: List[str],
                          add_effects: List[str],
                          del_effects: List[str]) -> Tuple[list, list]:
    """
    Creates two sentences for the preconditions, one for positive and one for negative, and two sentences for the effects, one for the add effects and one for the del effects.
    "I can only [action_description] if it is the case that [pos_precond_1] and [pos_precond_2] and ..."
    "I can only [action_description] if it is not the case that [neg_precond_1] and it is not the case that [neg_precond_2] and it is not the case that ..."
    "Once I [action_description], it is the case that [add_effect_1] and [add_effect_2] and ..."
    "Once I [action_description], it is not the case anymore that [del_effect_1] and it is not the case anymore that [del_effect_2] and ..."
    :param action_description:
    :param positive_precond_descriptions:
    :param negative_precond_descriptions:
    :param add_effects:
    :param del_effects:
    :return:
    """
    pos_descriptions = ' and '.join(positive_precond_descriptions)
    pos_cond_description = f'I can only {action_description} if it is the case that {pos_descriptions}'
    neg_descriptions = ' and '.join([f'it is not the case that {neg_des}' for neg_des in negative_precond_descriptions])
    neg_cond_description = f'I can only {action_description} if {neg_descriptions}'
    action_conditions_descriptions = []
    if pos_descriptions != '':
        action_conditions_descriptions.append(pos_cond_description)
    if neg_descriptions != '':
        action_conditions_descriptions.append(neg_cond_description)

    add_descriptions = ' and '.join(add_effects)
    del_descriptions = ' and '.join([f'it is not the case anymore that {del_eff}' for del_eff in del_effects])
    add_effect_description = f'Once I {action_description}, it is the case that {add_descriptions}'
    del_effect_description = f'Once I {action_description}, {del_descriptions}'
    action_effect_descriptions = []
    if add_descriptions != '':
        action_effect_descriptions.append(add_effect_description)
    if del_descriptions != '':
        action_effect_descriptions.append(del_effect_description)

    return action_conditions_descriptions, action_effect_descriptions


def create_schematic_version(action_description: str,
                             positive_precond_descriptions: List[str],
                             negative_precond_descriptions: List[str],
                             add_effects: List[str],
                             del_effects: List[str]) -> Tuple[list, list]:
    """
    Creates two sentences for the preconditions, one for positive and one for negative, and two sentences for the effects, one for the add effects and one for the del effects. But sentences are rather enumerations than real sentences.
    "I can only [action_description] if everything of the following is true in the current situation: [pos_precond_1], [pos_precond_2], [pos_precond_3], ..."
    "I can only [action_description] if none of the following is true in the current situation: [neg_precond_1], [neg_precond_2], [neg_precond_3], ..."
    "Once I [action_description], everything of the following becomes true: [add_effect_1], [add_effect_2], ..."
    "Once I [action_description], everything of the following becomes false: [del_effect_1], [del_effect_2, ..."
    :param action_description:
    :param positive_precond_descriptions:
    :param negative_precond_descriptions:
    :param add_effects:
    :param del_effects:
    :return:
    """
    action_conditions_descriptions = []
    action_effect_descriptions = []

    pos_descriptions = ', '.join(positive_precond_descriptions)
    pos_cond_description = f'I can only {action_description} if everything of the following is true in the current situation: {pos_descriptions}'
    neg_descriptions = ', '.join(negative_precond_descriptions)
    neg_cond_description = f'I can only {action_description} if none of the following is true in the current situation: {neg_descriptions}'
    if pos_descriptions != '':
        action_conditions_descriptions.append(pos_cond_description)
    if neg_descriptions != '':
        action_conditions_descriptions.append(neg_cond_description)

    add_descriptions = ', '.join(add_effects)
    del_descriptions = ', '.join(del_effects)
    add_effect_description = f'Once I {action_description}, everything of the following becomes true: {add_descriptions}'
    del_effect_description = f'Once I {action_description}, everything of the following becomes false: {del_descriptions}'
    if add_descriptions != '':
        action_effect_descriptions.append(add_effect_description)
    if del_descriptions != '':
        action_effect_descriptions.append(del_effect_description)

    return action_conditions_descriptions, action_effect_descriptions
