import json
import os
import random
import re
from typing import Tuple, List, Dict, Union
from collections import defaultdict
from tarski.io import PDDLReader
from tarski.syntax import Atom, CompoundFormula
import atexit


class IdentityEncodingDict(dict):
    def __getitem__(self, item):
        return item


class PDDLWorldEnvironment:

    def __init__(self, domain_nl: dict, instance_file: str, domain_file: str):

        self.domain_file = domain_file
        self.instance_file = instance_file

        while True:
            self.tmp_file_int = random.randint(0, 1000)
            if not os.path.exists(f'./tmp_action_{self.tmp_file_int}'):
                break
        self.tmp_instance_file = f'./tmp_instance_{self.tmp_file_int}.pddl'
        self.tmp_action_file = f'./tmp_action_{self.tmp_file_int}'

        self.lowercase_domain_file = '.'.join(domain_file.split('.')[:-1]) + '_tmp.' + domain_file.split('.')[-1]
        self.problem = self.create_lowercase_problem()
        self.config = domain_nl

        self.actions_text: dict = self.config['action_mappings']
        self.actions_text_indef: dict = self.config['action_mappings_indef']
        self.actions_pddl: dict = self.get_problem_actions()
        self.predicates_text: dict = self.config['predicate_mappings']

        self.possible_objects = self.get_problem_objects()
        self.objects2tpyes, self.types2objects = self.get_object_types()

        try:
            self.encoded_objects: dict = self.config['encoded_objects']
            for obj in self.problem.language.constants:
                if str(obj) not in self.encoded_objects.keys():
                    self.encoded_objects[str(obj)] = str(obj)
        except KeyError:
            self.encoded_objects: dict = IdentityEncodingDict()     # if no encoded_objects specified then use same name for PDDL and NL

        self.actions = list(self.actions_text.keys())
        self.all_objects_domain = list(self.encoded_objects.keys()) if len(list(self.encoded_objects.keys())) else self.possible_objects
        self.predicates = list(self.predicates_text.keys())

        self.facts_initial_state = [self.convert_pre2in(initial) for initial in list(self.problem.init.as_atoms())]
        self.facts_current_state = self.facts_initial_state.copy()
        # keys: 'pos_conditions', 'neg_conditions'
        self.conditions_goal_state: dict = self.process_goal_conditions()

        self.completed = False
        self.goal_feedback = ''

        atexit.register(self.remove_temp_files)

    def create_lowercase_problem(self):
        with open(self.lowercase_domain_file, 'w') as new:
            with open(self.domain_file, 'r') as orig:
                orig_text = orig.read()
                new_text = orig_text.lower()
                new.write(new_text)
        problem = self.get_problem(self.instance_file, self.lowercase_domain_file)
        return problem


    def remove_temp_files(self):
        if os.path.exists(self.tmp_instance_file):
            os.remove(self.tmp_instance_file)
        if os.path.exists(self.tmp_action_file):
            os.remove(self.tmp_action_file)
        if os.path.exists(self.lowercase_domain_file):
            os.remove(self.lowercase_domain_file)


    def update_current_state(self, effects: list):
        """

        :param effects:
        :return:
        """
        for effect in effects:
            effect_type = effect.split(' ')[0]
            fact = effect.split(' ')[1:]
            fact = ' '.join(fact)
            if effect_type == 'Deleting':
                #assert fact in self.facts_current_state
                try:
                    self.facts_current_state.remove(fact)
                except ValueError:
                    continue
            elif effect_type == 'Adding':
                self.facts_current_state.append(fact)
            else:
                print(f'Warning: unknown type of effect action {effect_type}')

    # TODO: recursive function would be better suited
    def process_goal_conditions(self) -> Dict[str, list]:

        pos_goal_conditions = []
        neg_goal_conditions = []

        if isinstance(self.problem.goal, CompoundFormula):
            operator = self.problem.goal.connective
            if operator.name == 'And':
                for sub in self.problem.goal.subformulas:
                    if isinstance(sub, Atom):
                        pos_goal_conditions.append(self.convert_pre2in(sub))
                    elif sub.connective.name == 'Not':
                        assert len(sub.subformulas) == 1
                        pred_str = self.convert_pre2in(sub.subformulas[0])
                        neg_goal_conditions.append(pred_str)
            elif operator.name == 'Not':
                assert len(self.problem.goal.subformulas) == 1
                pred_str = self.convert_pre2in(self.problem.goal.subformulas[0])
                neg_goal_conditions.append(pred_str)
            else:
                raise ValueError

        elif isinstance(self.problem.goal, Atom):
            pos_goal_conditions.append(self.convert_pre2in(self.problem.goal))

        else:
            raise ValueError

        goal_conditions = {'pos_conditions': pos_goal_conditions,
                           'neg_conditions': neg_goal_conditions}

        return goal_conditions



    def convert_pre2in(self, action: Union[str, Atom, CompoundFormula]):
        """
        Converts actions and predicates in the format that the PDDLReader outputs into the format that VAL
        expects
        i.e. clear(b) -> (clear b), pick-up(b) -> (pick-up b), stack(b, c) -> (stack b c)
        :param action:
        :return:
        """
        action = str(action)
        action_name, action_args = action.split('(')
        new_action_str = f'({action_name} {action_args}'
        new_action_str = new_action_str.replace(',', ' ')
        new_action_str = new_action_str.replace(' )', ')')
        return new_action_str

    def convert_in2pre(self, action: str):
        """
        Converts actions and predicates in the format that VAL into the format that the PDDLReader outputs
        expects
        i.e. (clear b) -> clear(b); (pick-up b) -> pick-up(b), (stack b c) -> stack(b, c)
        :param action:
        :return:
        """
        action = action.replace('(', '').replace(')', '')
        components = action.split(' ')
        new_action_str = f'{components[0]}('
        for arg in components[1:]:
            new_action_str += f'{arg}, '
        new_action_str = new_action_str[:-2]
        new_action_str += ')'

        return new_action_str

    def create_tmp_instance(self):
        """

        :return:
        """
        lines_to_keep1 = []
        lines_to_keep2 = []
        with open(self.instance_file, 'r') as orig_file:
            before_init_state = True
            after_init_state = False
            for line in orig_file:
                stripped_line = line.strip()
                if stripped_line.startswith('(:init'):
                    before_init_state = False
                elif stripped_line.startswith('(:goal'):
                    after_init_state = True
                if before_init_state:
                    lines_to_keep1.append(line)
                elif after_init_state:
                    lines_to_keep2.append(line)
        with open(self.tmp_instance_file, 'w') as tmp_file:
            for line in lines_to_keep1:
                tmp_file.write(line)
            tmp_file.write('(:init\n')
            for current_fact in self.facts_current_state:
                tmp_file.write(f'{current_fact}\n')
            tmp_file.write(')\n')
            for line in lines_to_keep2:
                tmp_file.write(line)

    def pre_check_action(self, action_instr: str):
        """

        :param action_instr:
        :return:
        """
        pred_action_name, pred_objects = self.parse_pddl_tuple(action_instr, decode=False)
        feedback = ''
        # check whether action is part of the domain actions
        try:
            # check whether correct number of arguments for the action are provided
            action_dict = self.get_problem_actions()
            _, actual_objects = self.parse_pddl_tuple(action_dict[pred_action_name], decode=False)
            if len(pred_objects) != len(actual_objects):
                feedback = f'{pred_action_name} requires exactly {len(actual_objects)} objects as arguments but {len(pred_objects)} were given. '
        except KeyError:
            feedback = f'{pred_action_name} does not match any possible actions. '

        # check whether only observable objects are part of the prediction
        not_matching_objects = []
        for pred_obj in pred_objects:
            if pred_obj not in self.get_problem_objects():
                not_matching_objects.append(pred_obj)
        if not_matching_objects:
            feedback += f'{", ".join(not_matching_objects)} are not visible objects. '
        if feedback != '':
            return feedback
        else:
            return action_instr


    def check_type_constraints(self, action_instr: str):
        pred_action_name, pred_objects = self.parse_pddl_tuple(action_instr, decode=False)
        type_problems = []

        action_arg_types = self.problem.actions[pred_action_name].sort()
        predicted_arg_types = []
        predicted_obj_names = []
        constants_with_types = self.problem.language.constants()
        for pr_o in pred_objects:
            ordered_constants_names = [cons.name for cons in constants_with_types]
            #obj_ind = constants_with_types.index(pr_o)
            obj_ind = ordered_constants_names.index(pr_o)
            constant = constants_with_types[obj_ind]
            predicted_arg_types.append(constant.sort)
            predicted_obj_names.append(constant.name)

        for arg_ind, (gold_type, pred_type) in enumerate(zip(action_arg_types, predicted_arg_types)):
            correct_type = False
            if gold_type == pred_type:
                correct_type = True
            else:
                type_hierarchy = self.problem.language.ancestor_sorts   # dict with key for each type, value is set of all ancestor sorts
                super_types = type_hierarchy[pred_type]
                if gold_type in super_types:
                    correct_type = True

            if not correct_type:
                type_problems.append(f'{predicted_obj_names[arg_ind]} is a {pred_type}')

        if type_problems:
            feedback = f'I cannot {self.get_description_action(action_instr)} because '
            feedback += ' and '.join(type_problems)
            return feedback
        else:
            return action_instr


    def step(self, action_instr: str):
        # ----- Functionalities to deal with inputs VAL cannot deal with for this domain ------
        if action_instr == '(look-around)':
            return self.get_description_current_state(), True, self.completed

        checked_action = self.pre_check_action(action_instr=action_instr)
        if checked_action != action_instr:
            return checked_action, False, self.completed

        if len(self.problem.language.sorts) > 1:
            type_checked_action = self.check_type_constraints(action_instr=action_instr)
            if type_checked_action != action_instr:
                return type_checked_action, False, self.completed

        # ----- Everything that can be done with VAL ----- #

        # need to write it into a temporary file as a unary plan
        with open(self.tmp_action_file, 'w') as plan_file:
            plan_file.write(action_instr)

        # need an instance file that hast the current state as the initial state
        self.create_tmp_instance()

        # need run VAL validate -v self.domain_file self.instance_file plan
        val = os.environ.get('VAL')
        #val = '/localfast/kstein/LLMs-Planning/planner_tools/VAL'
        cmd = f'{val}/validate -v {self.domain_file} {self.tmp_instance_file} {self.tmp_action_file}'
        response = os.popen(cmd).read()


        # store output somehow and parse it
        reached_goal, executable, effects, advice_goal, advice_precond = self.parse_val_output(response)

        if reached_goal:
            self.completed = True

        if executable:
            assert len(effects) > 0
            self.update_current_state(effects)
            feedback = self.get_feedback_successful(action_instr)

        else:
            assert len(advice_precond) > 0
            feedback = self.get_feedback_unsat(advice_precond)

        if not reached_goal and executable:
            self.goal_feedback = self.get_feedback_unsat(advice_goal)

        return feedback, executable, reached_goal

    def get_feedback_successful(self, action: str) -> str:
        action_description = self.get_description_action(action)
        action_feedback = f'I {action_description}.'
        return action_feedback

    def get_feedback_unsat(self, advice: List[str]) -> str:
        """
        input looks like ['The goal is not satisfied',
                          '(Set (on c b) to true)']
        or if more goals: ['The goal is not satisfied',
                            '(Follow each of:',
                            '(Set (on c b) to true)',
                            'and (Set (on a d) to true)',
                            ')']
        or if preconditions missing: ['(unstack c b) has an unsatisfied precondition at time 1',
                        '(Follow each of:',
                        '(Set (on c b) to true)',
                        'and (Set (clear c) to true)',
                        ')']
        :param advice:
        :return:
        """

        message = advice.pop(0)
        if 'precondition' in message:
            feedback_type = 'precondition'
            failed_action = re.findall(r'\(.*\)', message)[0]
        else:
            feedback_type = 'goal'
            failed_action = ''

        should_be_true = []
        should_be_false = []
        reg = r'Set \(.*\) to'
        for line in advice:
            line = line[1:] if line.startswith('(') else line
            line = line[:-1] if line.endswith(')') else line
            if line == '' or line.startswith('Follow'):
                continue

            fact = re.findall(reg, line)
            assert len(fact) == 1
            fact = fact[0]
            fact = fact.replace('Set ', '').replace(' to', '')

            if 'true' in line:      # facts that are false but should be true
                should_be_true.append(fact)
            elif 'false' in line:   # facts that are true but should be false
                should_be_false.append(fact)

        if feedback_type == 'precondition':
            feedback = f'I cannot {self.get_description_action(failed_action)} because '
        else:
            feedback = f'I am not finished yet because '

        for pred in should_be_false:
            feedback += f'{self.get_description_pred(pred)}, '
        for pred in should_be_true:
            pred_description = self.get_description_pred(pred)
            neg_pred_description = pred_description.replace('is ', 'is not ')
            feedback += f'{neg_pred_description}, '
        feedback = feedback[:-2]  # remove last whitespace and comma

        return feedback

    def parse_val_output(self, response: str) -> Tuple[bool, bool, list, list, list]:
        """
        Works only for plans consisting of 1 action
        :param response:
        :return:
        """
        goal_satisfied = False
        plan_executable = False

        advice_goal = []
        advice_precond = []
        effects = []

        reached_execution = False
        reached_unmet_pre = False
        reached_effect = False
        reached_advice = False

        lines = response.split('\n')
        for line in lines:
            line = line.strip()
            if 'Successful plans:' in line or 'Failed plans:' in line:
                break

            if reached_execution:
                if 'Plan failed because' in line:
                    reached_unmet_pre = True
                    plan_executable = False
                else:                               # then the plan is executable
                    reached_effect = True

            if reached_effect and line:
                if 'Deleting' in line or 'Adding' in line:
                    effects.append(line)
                elif 'executed successfully' in line:
                    plan_executable = True
                elif 'Plan valid' in line:
                    goal_satisfied = True   # plan is valid if plan is executable and goal is satisfied

            elif reached_effect and not line:
                reached_effect = False

            if reached_unmet_pre and not line:    # processed all unmet preconditions
                reached_unmet_pre = False

            if reached_advice and line:
                if not plan_executable:
                    advice_precond.append(line)
                elif not goal_satisfied:
                    advice_goal.append(line)

            if 'Plan Repair' in line:
                reached_advice = True

            if line.startswith('Checking next happening'):
                reached_execution = True

            if 'Bad plan description!' in line:
                advice_precond.append('I cannot execute this action.')
                #self.problem.language.is_subtype()

        return goal_satisfied, plan_executable, effects, advice_goal, advice_precond


    def get_description_state_basic(self, state_facts: list, sep=', '):
        pred_descriptions = []
        for pred in state_facts:
            pred = pred.replace('(', '').replace(')', '')
            components = pred.split(' ')
            pred_name = components[0]
            objs_letters = components[1:]
            objs = []
            for letter in objs_letters:
                if letter == '':
                    objs.append(letter)
                else:
                    objs.append(self.encoded_objects[letter])

            objs = self.order_args(pred_type='predicate', pred_name=pred_name, obj_names_pddl_order=objs)
            pred_descr = self.predicates_text[pred_name].format(*objs)
            pred_descriptions.append(pred_descr)

        pred_descriptions.sort()
        state_description = sep.join(pred_descriptions)
        return state_description

    def get_description_state(self, state_facts: list, sep=', ') -> str:

        all_types = list(self.types2objects.keys())
        if len(all_types) == 1:
            possible_objects_names = [self.encoded_objects[obj] for obj in self.possible_objects]
            if all_types[0] == 'object':
                if len(self.possible_objects) == 1:
                    obj_descrip = f'There is {len(self.possible_objects)} object: {", ".join(possible_objects_names)}'
                else:
                    obj_descrip = f'There are {len(self.possible_objects)} objects: {", ".join(possible_objects_names)}'
            else:
                if len(self.possible_objects) == 1:
                    obj_descrip = f'There is {len(self.possible_objects)} object that is a {all_types[0]}: {", ".join(possible_objects_names)}'
                else:
                    obj_descrip = f'There are {len(self.possible_objects)} objects that are a {all_types[0]}: {", ".join(possible_objects_names)}'
            object_state_description = obj_descrip
        else:
            obj_descriptions = []
            for t in all_types:
                if t == 'object':
                    continue
                objects_of_t = self.types2objects[t]
                objects_names = [self.encoded_objects[obj] for obj in objects_of_t]
                if len(objects_of_t) == 1:
                    obj_descrip = f'There is {len(objects_of_t)} object that is a {t}: {", ".join(objects_names)}'
                else:
                    obj_descrip = f'There are {len(objects_of_t)} objects that are a {t}: {", ".join(objects_names)}'
                obj_descriptions.append(obj_descrip)

            objects_of_object = self.types2objects['object']
            objects_names = [self.encoded_objects[obj] for obj in objects_of_object]
            if len(objects_of_object) > 0:
                if len(objects_of_object) == 1:
                    obj_descrip = f'There is {len(objects_of_object)} more object: {", ".join(objects_names)}'
                else:
                    obj_descrip = f'There are {len(objects_of_object)} more objects: {", ".join(objects_names)}'
                obj_descriptions.append(obj_descrip)


            object_state_description = '\n'.join(obj_descriptions)

        state_fact_description = self.get_description_state_basic(state_facts=state_facts, sep=sep)

        state_description = f'{object_state_description}\nCurrently, {state_fact_description}'
        return state_description


    def get_description_current_state(self) -> str:
        state_description = self.get_description_state(self.facts_current_state)
        current_state_descr = f'My current situation is as follows: \n{state_description}'
        return current_state_descr

    def get_description_initial_state(self) -> str:
        state_description = self.get_description_state(self.facts_initial_state)
        initial_state_descr = f'My current initial situation is as follows: \n{state_description}'
        return initial_state_descr

    def get_description_goal_state(self) -> str:

        basic_goal_description = self.get_description_goal_state_basic()
        goal_state_descr = f'My goal is that in the end {basic_goal_description}'

        return goal_state_descr

    def get_description_goal_state_basic(self):
        """
        Same as get_description_goal_state but without 'My goal is that in the end'
        :return:
        """
        pos_facts_description = self.get_description_state_basic(self.conditions_goal_state['pos_conditions'])
        neg_facts_description = self.get_description_state_basic(self.conditions_goal_state['neg_conditions'])
        goal_state_descr = f'{pos_facts_description}'
        if len(self.conditions_goal_state['neg_conditions']) != 0:
            goal_state_descr += f' and that it is not the case that {neg_facts_description}'
        return goal_state_descr


    def get_description_action(self, action: str, indef_det: bool = False) -> str:
        """

        :param action: action in the form as in a plan, e.g. (stack c b)
        :param indef_det:
        :return: the textual description of the action as specified in the config
        """
        action_name, object_names = self.parse_pddl_tuple(action)

        if indef_det:
            action_str_template = self.actions_text_indef[action_name]
        else:
            action_str_template = self.actions_text[action_name]

        object_names = self.order_args(pred_type='action', pred_name=action_name, obj_names_pddl_order=object_names)
        action_descr = action_str_template.format(*object_names)

        return action_descr

    def get_description_pred(self, predicate: str) -> str:
        """

        :param predicate: predicate in the form as in the state description, e.g. (ontable c)
        :return:
        """
        predicate_name, object_names = self.parse_pddl_tuple(predicate)
        object_names = self.order_args(pred_type='predicate', pred_name=predicate_name, obj_names_pddl_order=object_names)
        predicate_description = self.predicates_text[predicate_name].format(*object_names)
        return predicate_description


    def order_args(self, pred_type: str, pred_name: str, obj_names_pddl_order: list):

        if pred_type == 'action':
            pddl_templ = self.config['actions'][pred_name]['pddl']
            nl_templ = self.config['action_nl_templates'][pred_name]

        if pred_type == 'predicate':
            pddl_templ = self.config['predicates'][pred_name]['pddl']
            nl_templ = self.config['predicate_nl_templates'][pred_name]

        nl_order = re.findall(r'\{\?.+?\}', nl_templ)
        nl_order = [var.replace('{', '').replace('}', '') for var in nl_order]
        reduced_pddl_templ = pddl_templ.replace(')', ' ')
        pddl_order = re.findall(r'\?.+? ', reduced_pddl_templ)
        pddl_order = [var.strip() for var in pddl_order]

        assert set(nl_order) == set(pddl_order)

        obj_names_nl_order = []
        for var_name in nl_order:
            position_in_pddl_order = pddl_order.index(var_name)
            obj_names_nl_order.append(obj_names_pddl_order[position_in_pddl_order])

        return obj_names_nl_order


    def parse_pddl_tuple(self, pddl_tup: str, decode=True) -> Tuple[str, list]:
        """

        :param pddl_tup: in the form as in a plan, e.g. (stack c b) or for predicates e.g. (ontable c)
        :return: name of the predicate/action, names of the objects
        """
        pddl_tup = pddl_tup.replace('(', '')
        pddl_tup = pddl_tup.replace(')', '')
        pred_name, objs = pddl_tup.split()[0], pddl_tup.split()[1:]
        if decode:
            object_names = [self.encoded_objects[obj] for obj in objs]
        else:
            object_names = objs

        return pred_name, object_names


    def get_problem(self, instance, domain: str):
        """

        :param instance: path to the instance_file
        :param domain: path to the domain_file
        :return:
        """
        reader = PDDLReader(raise_on_error=True)
        reader.parse_domain(domain)
        return reader.parse_instance(instance)


    def get_problem_objects(self) -> list:
        """

        :return:
        """
        constants = list(self.problem.language.constants())
        object_constants = [str(c) for c in constants]
        return object_constants


    def get_problem_predicates(self) -> dict:
        """

        :return:
        """
        predicates = list(self.problem.language.predicates)
        predicates_str = [str(p) for p in predicates]

        only_preds = dict()
        for pr in predicates_str:
            predicate_name = pr.split('/')[0]
            arity = pr.split('/')[1]
            if predicate_name not in ['=', '!']:
                predicate_name = predicate_name.lower()
                only_preds[predicate_name] = predicate_name + arity * ' object'

        return only_preds

    def get_problem_actions(self) -> dict:
        """

        :return:
        """
        actions_problem = self.problem.actions
        actions = dict()
        for action_name, action_temp in actions_problem.items():
            str_action = str(action_temp).lower()
            variables = re.findall(r'\?.*?: ', str_action)
            for v in variables:
                str_action = str_action.replace(v, '')

            action_name = action_name.lower()
            actions[action_name] = self.convert_pre2in(str_action)

        return actions

    def get_object_types(self) -> Tuple[Dict[str, str], Dict[str, list]]:

        object_type_dict = dict()
        type_object_dict = defaultdict(list)

        problem_constants = list(self.problem.language.constants())

        for const in problem_constants:
            object_name = str(const.name)
            object_type = str(const.sort.name)
            object_type_dict[object_name] = object_type
            type_object_dict[object_type].append(object_name)

        return object_type_dict, type_object_dict

