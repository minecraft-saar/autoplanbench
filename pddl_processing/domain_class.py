import os
import re
import atexit
from typing import Dict, List, Tuple, Union
from collections import OrderedDict, defaultdict
from tarski.io import PDDLReader
from tarski.fstrips import Action, AddEffect, DelEffect
from tarski.syntax import Atom, CompoundFormula, VariableBinding, Variable, Constant, Predicate
from utils.paths import TEMP_DIR

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
        constant_objs:
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

        self.lower_cased_domain_file = self.create_lowercase_domain(domain_file=domain_file)
        self.reader = PDDLReader(raise_on_error=True)
        self.reader.parse_domain(self.lower_cased_domain_file)
        self.problem = self.reader.problem

        self.predicates: Dict[str, OrderedDict] = self.parse_ordered_predicates(domain_file=domain_file)
        self.types: Dict[str, list] = self.parse_types()
        self.const_objs: Dict[str, str] = self.parse_constants()
        self.actions: Dict[str, dict] = self.parse_actions()
        self.domain_annotation, self.action_annotations = self.parse_action_annotations(domain_file=domain_file)

        atexit.register(self.remove_temp_file)

    def remove_temp_file(self):
        if os.path.exists(self.lower_cased_domain_file):
            os.remove(self.lower_cased_domain_file)

    def create_lowercase_domain(self, domain_file):
        domain_file_name = os.path.split(domain_file)[-1]
        lowercase_domain_file = os.path.join(TEMP_DIR, f'tmp_{domain_file_name}')
        with open(lowercase_domain_file, 'w') as new:
            with open(domain_file, 'r') as orig:
                orig_text = orig.read()
                new_text = orig_text.lower()
                new.write(new_text)
        return lowercase_domain_file

    def parse_ordered_predicates(self, domain_file) -> Dict[str, OrderedDict]:

        predicate_dict = dict()
        predicates: List[Predicate] = self.problem.language.predicates
        predicates = [pred for pred in predicates if not pred.builtin]
        predicate_var_names = self.get_predicate_variable_names(domain_file=domain_file)
        for pred in predicates:
            pred_signature = []
            predicate_name = pred.name
            predicate_vars = predicate_var_names[predicate_name]
            predicate_arg_sorts = list(pred.sort)
            predicate_arg_types = [s.name for s in predicate_arg_sorts]
            assert len(predicate_vars) == len(predicate_arg_types)
            for var_name, var_type in zip(predicate_vars, predicate_arg_types):
                pred_signature.append((var_name, var_type))
            predicate_dict[predicate_name] = OrderedDict(pred_signature)

        return predicate_dict


    def get_predicate_variable_names(self, domain_file) -> Dict[str, List[str]]:
        """
        {'at': ['?x', '?y'],
         'on': ['?x', '?y'],
         ...}
        :param domain_file:
        :return: dictionary with one item for each predicate

        """
        file_tokens_cleaned = []
        with open(domain_file, 'r') as df:
            for line in df.readlines():
                line = line.strip()
                line = line.lower()
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

        predicate_vars = dict()
        for pred in preds_list:
            if ')(' in pred:
                sub_preds = pred.split(')(')
                pred = sub_preds[0]
                preds_list.append(sub_preds[1])
            while pred.startswith('('):
                pred = pred[1:]
                pred = pred.strip()
            while pred.endswith(')'):
                pred = pred[:-1]
                pred = pred.strip()
            pred_parts = pred.split(' ')
            pred_name = pred_parts[0]
            pred_arg_names = []
            for part in pred_parts:
                if part.startswith('?'):
                    pred_arg_names.append(part)

            predicate_vars[pred_name] = pred_arg_names

        return predicate_vars


    def parse_constants(self) -> Dict[str, str]:

        constant_dict = dict()
        constants: List[Constant] = self.problem.language.constants()
        for c in constants:
            constant_name = c.name
            constant_sort = c.sort
            constant_type = constant_sort.name
            constant_dict[constant_name] = constant_type

        return constant_dict


    def parse_types(self) -> Dict[str, list]:
        """
        Return  dictionary with the type hierarchy
            one key for each type with subtypes, value is the list of direct subtypes
        :return:
        """
        all_sorts = self.problem.language.sorts
        type_hierarchy = defaultdict(list)
        for sort in all_sorts:
            parent_sort = self.problem.language.immediate_parent[sort]
            if not parent_sort is None:
                type_hierarchy[parent_sort.name].append(sort.name)

        return type_hierarchy


    def parse_actions(self) -> Dict[str, Union[dict, list]]:
        """
        one entry for each action
                key = action name; lower-cased
                value = dictionary with all parameters (OrderedDict), preconditions (List) and effects (List)
                e.g. {'stack': {'parameters': {'?ob': 'object', '?underob': 'object'},
                                'pos_preconditions': [('clear', '?underob')],
                                'neg_preconditions': [],
                                'add_effects': [('on', '?ob', '?underob')]}}
                e.g. {'drive': {'parameters': {'?t': '?truck', '?from': 'location', ...},
                                'pos_preconditions': [('at', '?t', '?from'), ...], ...}}
        :return:
        """
        actions: OrderedDict[str, Action] = self.problem.actions
        actions_dict = dict()

        for a in actions.values():
            a_name: str = a.name
            parameter_variable: VariableBinding = a.parameters
            parameter_dict = parameter_variable.variables

            parameter_list_str_type = []
            for var_name, variable in parameter_dict.items():
                parameter_list_str_type.append((variable.symbol, variable.sort.name))
            parameter_dict_str_type = OrderedDict(parameter_list_str_type)

            effects = a.effects
            del_effects: List[Atom] = []
            add_effects: List[Atom] = []
            for eff in effects:
                if isinstance(eff, AddEffect):
                    add_effects.append(eff.atom)
                elif isinstance(eff, DelEffect):
                    del_effects.append(eff.atom)
                else:
                    print('Unknown type of effect')

            preconditions = a.precondition
            pos_preconditions: List[Atom] = []
            negative_preconditions: List[Atom] = []
            try:
                for subform in preconditions.subformulas:
                    if isinstance(subform, Atom):
                        pos_preconditions.append(subform)
                    elif isinstance(subform, CompoundFormula) and subform.connective.name == 'Not':
                        assert len(subform.subformulas) == 1 and isinstance(subform.subformulas[0], Atom)    # otherwise not clear what happens in current implementation
                        negative_preconditions.append(subform.subformulas[0])
            except AttributeError:
                pos_preconditions.append(preconditions)

            actions_dict[a_name] = dict()
            actions_dict[a_name]['parameters'] = parameter_dict_str_type
            actions_dict[a_name]['pos_preconditions'] = self.convert_atom2tup(pos_preconditions)
            actions_dict[a_name]['neg_preconditions'] = self.convert_atom2tup(negative_preconditions)
            actions_dict[a_name]['add_effects'] = self.convert_atom2tup(add_effects)
            actions_dict[a_name]['del_effects'] = self.convert_atom2tup(del_effects)

        return actions_dict


    def convert_atom2tup(self, atoms: List[Atom]) -> List[Tuple[str]]:

        predicate_tuples = []
        for atom in atoms:
            predicate_name = atom.predicate.symbol
            predicate_list = [predicate_name]
            predicate_args: Tuple[Variable] = atom.subterms
            for arg_var in predicate_args:
                predicate_list.append(arg_var.symbol)

            predicate_tup = tuple(predicate_list)
            predicate_tuples.append(predicate_tup)
        return predicate_tuples


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
                line = line.lower()
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




