import re
from typing import Dict, List, Tuple, Union
from collections import OrderedDict, defaultdict
from pddl_parser.PDDL import PDDL_Parser
from pddl_parser.action import Action


# TODO replace PDDL_Parser with tarski.io PDDL reader
class Domain:

    def __init__(self, domain_file):
        """
        predicates: Dict[str, OrderedDict]
                    one entry for each predicate;
                        key = predicate name, lower-cased
                        value = dictionary with all parameters and their types in the order as expected by the predicate
                        e.g. {"on": {'?x': 'object', '?y': 'object}, 'handempty': {}}
                        e.g.
        types: dictionary;
                key: parent types
                value: list of child types
                e.g. {'object': ['city', 'location', 'thing'], 'thing': ['package', 'vehicle'], ...}
                empty if no types
        const_objs: dictionary;
                key: name of the constant
                value: type of the constant
                e.g. {'small': 'apartsize', 'large': 'apartsize', ...}
        actions: Dict[str, Dict]
                one entry for each action
                key = action name; lower-cased
                value = dictionary with all parameters (OrderedDict), preconditions (List) and effects (List)
                e.g. {'stack': {'parameters': {'?ob': 'object', '?underob': 'object'},
                                'pos_preconditions': [('clear', '?underob')],
                                'neg_preconditions': [],
                                'add_effects': [('on', '?ob', '?underob')]}}
                e.g. {'drive': {'parameters': {'?t': '?truck', '?from': 'location', ...},
                                'pos_preconditions': [('at', '?t', '?from'), ...], ...}}
        domain_annotation: str; description of the domain if annotated in the domain file
                                empty string if not annotated
        action_annotations: defaultdict; descriptions of the actions if annotated in the domain file
                                        e.g. {'pick-up': 'pick up an object', 'stack': 'stack an object on top of another object', ...}
                                        empty defaultdict if no annotations

        :param domain_file:
        """
        self.parser = PDDL_Parser()
        self.parser.parse_domain(domain_file)

        self.predicates: Dict[str, OrderedDict] = self.parse_ordered_predicates(domain_file=domain_file)
        self.types: Dict[str, list] = self.parser.types
        self.const_objs: Dict[str, str] = self.parse_constants()
        self.actions: Dict[str, dict] = self.parse_actions()
        self.domain_annotation, self.action_annotations = self.parse_action_annotations(domain_file=domain_file)


    def parse_constants(self):
        constants_w_types = dict()
        for const_type, const_list in self.parser.objects.items():
            for const in const_list:
                constants_w_types[const] = const_type
        return constants_w_types


    def parse_actions(self) -> Dict[str, Union[dict, list]]:
        """

        :return:
        """
        actions: List[Action] = self.parser.actions
        actions_dict = dict()
        for a in actions:
            a_name: str = a.name
            pos_preconditions: frozenset = a.positive_preconditions
            neg_preconditions: frozenset = a.negative_preconditions
            del_effects: frozenset = a.del_effects
            add_effects: frozenset = a.add_effects
            parameters: Tuple[List] = a.parameters

            actions_dict[a_name] = dict()
            actions_dict[a_name]['parameters'] = self.convert_params_to_dict(list(parameters))
            actions_dict[a_name]['pos_preconditions'] = list(pos_preconditions)
            actions_dict[a_name]['neg_preconditions'] = list(neg_preconditions)
            actions_dict[a_name]['add_effects'] = list(add_effects)
            actions_dict[a_name]['del_effects'] = list(del_effects)

        return actions_dict

    def convert_params_to_dict(self, parameters_list: List[List]) -> OrderedDict:
        """
        e.g. [['?ob', 'object'], ['?underob', 'object']]
        :param parameters_list: list of parameters for one action
                                one sublist per parameter, where first element is parameter name and second element is parameter type
        :return:
        """
        new_param_list = []
        for param_list in parameters_list:
            param_tup = (param_list[0], param_list[1])
            new_param_list.append(param_tup)
        params_dict = OrderedDict(new_param_list)
        return params_dict


    def parse_ordered_predicates(self, domain_file) -> Dict[str, OrderedDict]:
        """
        {'at': OrderedDict([('?x', 'locatable'), ('?y': 'place')]),
         'on': OrderedDict([('?x': 'crate'), ('?y': 'surface')]),
         ...}
        :param domain_file:
        :return: dictionary with one item for each predicate

        """
        file_tokens_cleaned = []
        with open(domain_file, 'r') as df:
            for line in df.readlines():
                line = line.strip()
                if ';' in line:
                    comment_start = line.index(';')
                    line = line[:comment_start]
                if line:
                    tokens = line.split()
                    file_tokens_cleaned.extend(tokens)
        file_content_cleaned = ' '.join(file_tokens_cleaned)

        predicate_def = re.findall(r'\(:predicates .*?\(:', file_content_cleaned)[0]

        only_preds = predicate_def.replace(':predicates ', '')
        only_preds = only_preds.replace('(:', '')
        only_preds = only_preds.strip()

        preds_list = only_preds.split(') (')

        # remove everything between the end of the predicates specification and the next '(:' start as well as the outer brackets
        while only_preds[-1] != ')':
            only_preds = only_preds[:-1]
        closing_found, opening_found = 0, 0
        while opening_found < 2:
            if only_preds[0] == '(':
                opening_found += 1
            only_preds = only_preds[1:]
        while closing_found < 2:
            if only_preds[-1] == ')':
                closing_found += 1
            only_preds = only_preds[:-1]

        type_specs = re.findall(r'- .*? ', only_preds)
        for t_spec in type_specs:
            t_spec = t_spec.strip()
            t_spec = t_spec.replace(')', '')
            only_preds = only_preds.replace(t_spec, '', 1)
        type_specs = re.findall(f'- .*?$', only_preds)
        for t_spec in type_specs:
            only_preds = only_preds.replace(t_spec, '')
        only_preds = only_preds.lower()     # PDDL is case insensitive -> the parser converts everything in lower case
        only_preds = only_preds[:-1] if only_preds[-1] == ')' else only_preds
        preds_list = only_preds.split(') (')

        parsed_predicates = self.parser.predicates

        assert len(preds_list) == len(parsed_predicates.keys())

        all_predicates_dict = dict()
        for predicate in preds_list:
            pred_dict = OrderedDict()
            pred_args = predicate.split()[1:]
            pred_name = predicate.split()[0]
            for pred_arg in pred_args:
                pred_type = parsed_predicates[pred_name][pred_arg]
                pred_dict[pred_arg] = pred_type

            all_predicates_dict[pred_name] = pred_dict

        return all_predicates_dict

    def parse_action_annotations(self, domain_file) -> Tuple[str, Dict[str, str]]:
        """

        :param domain_file:
        :return:
        """
        action_annotations = defaultdict(str)
        domain_annotation = ''

        with open(domain_file, 'r') as df:
            for line in df.readlines():
                line = line.strip()
                if line.startswith(';NL') or line.startswith('; NL'):
                    annotation = line.replace(';', '').replace('NL', '').lower()
                    action_name = annotation.split(':')[0]
                    action_descr = annotation.split(':')[1]
                    action_name = action_name.strip()
                    action_descr = action_descr.strip()

                    if action_name == 'domain':
                        domain_annotation = action_descr
                    else:
                        assert action_name not in action_annotations.keys()
                        action_annotations[action_name] = action_descr

        return domain_annotation, action_annotations

