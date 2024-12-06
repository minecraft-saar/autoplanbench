import os
import re
from typing import Tuple, List
import stanza
from stanza.pipeline.core import DownloadMethod
from llm_planning.raw_pddl_input.raw_pddl_env import RawPDDLEnvironment


class IdentityEncodingDict(dict):
    def __getitem__(self, item):
        return item


class PDDLWorldEnvironment(RawPDDLEnvironment):

    def __init__(self, domain_nl: dict, instance_file: str, domain_file: str):

        super().__init__(instance_file=instance_file, domain_file=domain_file)

        self.config = domain_nl

        # Do not show stanza output
        self.nlp_processor = stanza.Pipeline(lang='en', processors='tokenize,mwt,pos,lemma,depparse',
                                             download_method=DownloadMethod.REUSE_RESOURCES,
                                             logging_level='WARN', use_gpu=False)


        self.actions_text: dict = self.config['action_mappings']
        self.actions_text_indef: dict = self.config['action_mappings_indef']
        self.predicates_text: dict = self.config['predicate_mappings']

        try:
            self.encoded_objects: dict = self.config['encoded_objects']
            for obj in self.problem.language.constants():
                if str(obj) not in self.encoded_objects.keys():
                    self.encoded_objects[str(obj)] = str(obj)
        except KeyError:
            self.encoded_objects: dict = IdentityEncodingDict()     # if no encoded_objects specified then use same name for PDDL and NL

        self.actions = list(self.actions_text.keys())
        self.all_objects_domain = list(self.encoded_objects.keys()) if len(list(self.encoded_objects.keys())) else self.possible_objects
        self.predicates = list(self.predicates_text.keys())


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
        self.last_val_response = os.popen(cmd).read()


        # store output somehow and parse it
        reached_goal, executable, effects, advice_goal, advice_precond = self.parse_val_output(self.last_val_response)

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

        feedback_type, failed_action, should_be_true, should_be_false = self.parse_feedback_unsat(advice=advice)

        if feedback_type == 'precondition':
            feedback = f'I cannot {self.get_description_action(failed_action)} because '
        else:
            feedback = f'I am not finished yet because '

        for pred in should_be_false:
            feedback += f'{self.get_description_pred(pred)}, '
        for pred in should_be_true:
            pred_description = self.get_description_pred(pred)
            neg_pred_description = self.negate_pred_description(pred_description)
            feedback += f'{neg_pred_description}, '
        feedback = feedback[:-2]  # remove last whitespace and comma

        return feedback

    def negate_pred_description(self, pred_description):

        # simple rules to negate auxiliary verbs
        negated_pred = None
        aux_verbs = ['is', 'are', 'has', 'have', 'can']
        for v in aux_verbs:
            if f' {v} ' in pred_description and pred_description.split().count(v) == 1:
                if v == 'can':
                    negated_pred = pred_description.replace(' can ', ' cannot ')
                else:
                    negated_pred = pred_description.replace(f' {v} ', f' {v} not ')
            elif f'{v} ' in pred_description and pred_description.split().count(v) == 1:
                negated_pred = re.sub(f'{v} ', f'{v} not ', pred_description, 1)

        if negated_pred is not None:
            return negated_pred

        # use dependency parsing if none of the rules applies (might add negation at the wrong place)
        processed_pred = self.nlp_processor(pred_description).sentences[0]

        head_ids = [word.head for word in processed_pred.words]
        tokens = [word.text for word in processed_pred.words]
        head_position = head_ids.index(0)
        head_token = tokens[head_position]

        if head_position == 0:
            reg = '^' + head_token + ' '
            neg = head_token + ' not '
        elif head_position == len(tokens) - 1:
            reg = ' ' + head_token + '$'
            neg = ' ' + head_token + ' not'
        else:
            reg = ' ' + head_token + ' '
            neg = ' ' + head_token + ' not '

        negated_pred = re.sub(reg, neg, pred_description)
        if pred_description == negated_pred:
            negated_pred = f'it is not the case that {pred_description}'
        assert pred_description != negated_pred
        if head_token == 'can':
            negated_pred = negated_pred.replace('can not', 'cannot')

        return negated_pred


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

