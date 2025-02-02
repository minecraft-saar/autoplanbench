import os
import re
import string
from typing import Dict, Union
from collections import defaultdict, OrderedDict
from tarski.syntax import BuiltinPredicateSymbol
from model_classes.llm_models import LLMModel
from model_classes.planning_game_models import create_llm_model
from pddl_processing.preconditions_and_effects import *
from pddl_processing.domain_class import Domain
import json
import openai
from set_env import set_env_vars

set_env_vars()
openai.api_key = os.environ['OPENAI_API_KEY']



built_in_predicates = {
    "=": {
        "param_dict": OrderedDict([('?x1', 'object'), ('?x2', 'object')]),
        "mapping": "{} is equal to {}",
        "mapping_template": "{} is not equal to {}"
    },
    "!=": {
        "param_dict": OrderedDict([('?x1', 'object'), ('?x2', 'object')]),
        "mapping": "{?x1} is equal to {?x2}",
        "mapping_template": "{?x1} is not equal to {?x2}"
    }
}


class PDDLDescriber:

    def __init__(self, domain_file):
        self.domain = Domain(domain_file=domain_file)
        self.domain_file = domain_file
        self.llm_name = ''
        self.llm_model: Union[LLMModel, None] = None

        self.output_log = ''
        self.seed = None

        self.action_mappings = dict()
        self.action_mappings_indef = dict()
        self.action_data = self.init_action_data()
        self.action_nl_templates = dict()
        self.action_nl_templates_indef = dict()

        self.predicate_mappings = dict()
        self.predicate_data = self.init_pred_data()
        self.predicate_nl_templates = dict()

        self.type_hierarchy_descr = []

        self.object_mappings = defaultdict(dict)


    def instantiate_from_file(self, description_file):

        with open(description_file, 'r') as df:
            description_content = json.load(df)

        self.action_mappings = description_content['action_mappings']
        self.action_mappings_indef = description_content['action_mappings_indef']
        self.predicate_mappings = description_content['predicate_mappings']
        self.action_data = description_content['actions']
        self.predicate_data = description_content['predicates']
        self.action_nl_templates = description_content['action_nl_templates']
        self.action_nl_templates_indef = description_content['action_nl_templates_indef']
        self.predicate_nl_templates = description_content['predicate_nl_templates']
        self.type_hierarchy_descr = description_content['type_hierarchy']


    def init_action_data(self):
        action_data = dict([(action, dict()) for action in self.domain.actions.keys()])

        for action_name, action_dict in self.domain.actions.items():
            action_data[action_name]['annotation'] = self.domain.action_annotations[action_name]
            action_data[action_name]['parameter_types'] = action_dict['parameters']
            action_data[action_name]['pddl'] = self.create_pddl_str(action_name, list(action_dict['parameters'].keys()))

        return action_data

    def init_pred_data(self):

        # Add the built-in predicates:
        for built_in_pred_name, built_in_pred_data in built_in_predicates.items():
            self.domain.predicates[built_in_pred_name] = built_in_pred_data['param_dict']

        predicate_data = dict([(action, dict()) for action in self.domain.predicates.keys()])

        for predicate_name, predicate_param in self.domain.predicates.items():
            predicate_data[predicate_name]['parameter_types'] = predicate_param
            predicate_data[predicate_name]['pddl'] = self.create_pddl_str(predicate_name, list(predicate_param.keys()))

        return predicate_data

    def create_pddl_str(self, name: str, parameters: list) -> str:

        joined_list = [name] + parameters
        pddl_str = f'({" ".join(joined_list)})'
        return pddl_str


    def create_domain_descriptions_from_mappings_file(self,
                                                      mappings_file: str,
                                                      output_file: str,
                                                      description_version: str):

        with open(mappings_file, 'r') as df:
            description_content = json.load(df)

        self.action_mappings = description_content['action_mappings']
        self.action_mappings_indef = description_content['action_mappings_indef']
        self.predicate_mappings = description_content['predicate_mappings']
        self.action_nl_templates = description_content['action_nl_templates']
        self.action_nl_templates_indef = description_content['action_nl_templates_indef']
        self.predicate_nl_templates = description_content['predicate_nl_templates']

        self.create_domain_descriptions_from_mappings(output_file=output_file, description_version=description_version)


    def create_domain_descriptions_from_scratch(self,
                                                prompt_file: str,
                                                output_file: str,
                                                description_version: str = 'medium',
                                                pddl2text_llm: str = 'gpt-4o',
                                                pddl2text_model_type: str = 'openai_chat',
                                                pddl2text_version: str = 'full',
                                                examples_chat: bool = True,
                                                seed: int = 0):
        self.seed = seed
        self.output_log = self.domain_file.replace('domain.pddl', f'output_log_{seed}.txt')

        self.llm_name = pddl2text_llm
        # create mappings
        self.predicate_mappings, self.predicate_nl_templates = self.create_predicate_mapping(prompt_file=prompt_file,
                                                                                             pddl2text_llm=pddl2text_llm,
                                                                                             pddl2text_version=pddl2text_version,
                                                                                             pddl2text_model_type=pddl2text_model_type,
                                                                                             examples_chat=examples_chat,
                                                                                             seed=seed)

        self.action_mappings, self.action_nl_templates = self.create_action_mapping(prompt_file=prompt_file,
                                                                                    pddl2text_llm=pddl2text_llm,
                                                                                    pddl2text_version=pddl2text_version,
                                                                                    pddl2text_model_type=pddl2text_model_type,
                                                                                    examples_chat=examples_chat,
                                                                                    seed=seed)

        self.formal_mapping_check()

        self.create_domain_descriptions_from_mappings(output_file=output_file, description_version=description_version)


    def formal_mapping_check(self):

        templates_with_wrong_args = []
        templates_with_wrong_number_args = []
        wrong_preds = set()
        correct_number_args = []

        for action_name, action_details in self.action_data.items():
            parameter_names_pddl = action_details['parameter_types'].keys()
            action_nl_template = self.action_nl_templates[action_name]
            parameter_names_nl = re.findall(r'\{\?.+?\}', action_nl_template)
            parameter_names_nl = [pn.replace('}', '').replace('{', '') for pn in parameter_names_nl]

            if len(set(parameter_names_nl)) != len(set(parameter_names_pddl)):
                templates_with_wrong_number_args.append(action_name)
                correct_number_args.append(len(set(parameter_names_pddl)))
                wrong_preds.add(action_nl_template)

            if set(parameter_names_nl) != set(parameter_names_pddl):
                templates_with_wrong_args.append(action_name)
                wrong_preds.add(action_nl_template)

        all_correct = True
        if not (templates_with_wrong_args == [] and templates_with_wrong_number_args == []):
            all_correct = False
        if not all_correct:
            with open('./utils/errors_domain_description_gen.txt', 'a') as f:
                f.write(f'Errors when processing {self.domain_file}, seed {self.seed}\n')
                f.write(f'Wrong number of args: {templates_with_wrong_number_args}\nCorrect numbers of args would have been: {correct_number_args}\nWrong variable names: {templates_with_wrong_args}\n{wrong_preds}\n\n')
        assert all_correct, f'Error: there are translations that went wrong.\n' \
                            f'Wrong number of args: {templates_with_wrong_number_args}\n' \
                            f'Correct numbers of args would have been: {correct_number_args}\n' \
                            f'Wrong variable names: {templates_with_wrong_args}'


    def create_domain_descriptions_from_mappings(self, output_file: str, description_version: str):

        self.create_action_description(description_version=description_version)
        #except Exception as e:
            #print(f'Program exited with an error and outputfile is incomplete: {e}')

        self.type_hierarchy_descr = self.create_type_hierarchy_description()

        domain_description_dict = {
            "action_mappings": self.action_mappings,
            "action_mappings_indef": self.action_mappings_indef,
            "predicate_mappings": self.predicate_mappings,
            "actions": self.action_data,
            "predicates": self.predicate_data,
            "action_nl_templates": self.action_nl_templates,
            "predicate_nl_templates": self.predicate_nl_templates,
            "action_nl_templates_indef": self.action_nl_templates_indef,
            "type_hierarchy": self.type_hierarchy_descr
        }

        with open(output_file, 'w') as out:
            json.dump(domain_description_dict, out, indent=4)

    def create_action_mapping(self, prompt_file, pddl2text_llm, pddl2text_version, pddl2text_model_type, examples_chat: bool, seed=0) -> Tuple[Dict[str, str], Dict[str, str]]:

        llm_model = self.create_model(llm_name=pddl2text_llm, model_type=pddl2text_model_type, seed=seed)

        if pddl2text_version == 'simple' or pddl2text_version == 'annotated':
            prompt, examples = self.create_prompt(prompt_file=prompt_file, example_keys=['examples_pred', 'examples_act'], examples_chat=examples_chat)
        else:
            prompt, examples = self.create_prompt(prompt_file=prompt_file, example_keys=['examples_act'], examples_chat=examples_chat)

        llm_model.init_model(init_prompt=prompt)
        if examples_chat:
            llm_model.add_examples(examples)
        model_inputs = self.create_llm_inputs_actions(pddl2text_version=pddl2text_version)
        mappings, mappings_templates = self.run_generation(inputs=model_inputs, llm_model=llm_model, is_action=True)

        return mappings, mappings_templates

    def create_predicate_mapping(self, prompt_file, pddl2text_llm, pddl2text_version, pddl2text_model_type, examples_chat: bool, seed=0) -> Tuple[Dict[str, str], Dict[str, str]]:

        llm_model = self.create_model(llm_name=pddl2text_llm, model_type=pddl2text_model_type, seed=seed)

        if pddl2text_version == 'simple' or pddl2text_version == 'annotated':
            prompt, examples = self.create_prompt(prompt_file=prompt_file, example_keys = ['examples_pred', 'examples_act'], examples_chat=examples_chat)
        else:
            prompt, examples = self.create_prompt(prompt_file=prompt_file, example_keys=['examples_pred'], examples_chat=examples_chat)

        llm_model.init_model(init_prompt=prompt)
        if examples_chat:
            llm_model.add_examples(examples)
        model_inputs = self.create_llm_inputs_predicates()
        mappings, mappings_templates = self.run_generation(inputs=model_inputs, llm_model=llm_model, is_action=False)

        # mappings, mappings_templates = self.add_predicate_mappings_builtin_preds(mappings, mappings_templates)

        return mappings, mappings_templates

    def add_predicate_mappings_builtin_preds(self, mappings: dict, mappings_temp: dict):

        for built_in_pred_name, built_in_pred_data in built_in_predicates.items():
            mappings[built_in_pred_name] = built_in_pred_data['mapping']
            mappings_temp[built_in_pred_name] = built_in_pred_data['mapping_template']

        return mappings, mappings_temp

    def run_generation(self, inputs: dict, llm_model: LLMModel, is_action: bool) -> Tuple[Dict[str, str], Dict[str, str]]:
        """

        :param inputs:
        :param llm_model:
        :return: mappings:              e.g. "pick up {}"
                 mappings_templates:    e.g. "pick up {?ob}"
        """
        mappings = dict()
        mappings_templates = dict()

        for name, instance in inputs.items():
            model_output = llm_model.generate(user_message=instance)
            model_output = model_output.replace('Output: ', '')

            if instance == '(supply_resource ?s ?r)':
                print('Test')

            with open(self.output_log, 'a') as f:
                f.write(f'{instance} -> {model_output}\n')

            output_formatted, output_template = self.format_model_output(model_output=model_output, is_action=is_action)
            # check output format
            correct_args = self.check_number_args(action_name=name,
                                                  action_nl_template=output_template,
                                                  is_action=is_action)
            # if not formatted correctly call once again the llm
            if not correct_args:
                user_message = f'There is a mistake in the last response. The number of parameters does not match the parameters of {name} or the format is not correct.\nPlease provide the revised natural language description. Make sure that all parameters are part of your response and are surrounded by brackets and start with "?"\nDo not inlcude anything else than the fixed description in your response.'
                model_output = self.llm_model.generate(user_message=user_message)
                model_output = model_output.replace('Output: ', '')
                print('FIRST ATTEMPT INCORRECT; RUNNING REVISION')
                with open(self.output_log, 'a') as f:
                    f.write(f'Revised: {instance} -> {model_output}\n')
                output_formatted, output_template = self.format_model_output(model_output=model_output,
                                                                             is_action=is_action)

            if is_action:
                output_formatted_indef, output_indef_template = self.create_action_template_indefinite(model_output=model_output)
                self.action_mappings_indef[name] = output_formatted_indef
                self.action_nl_templates_indef[name] = output_indef_template


            mappings[name] = output_formatted
            mappings_templates[name] = output_template

        # Reset the history
        self.llm_model.reset_history()

        return mappings, mappings_templates

    def check_number_args(self, action_name: str, action_nl_template: str, is_action: bool) -> bool:

        if is_action:
            details = self.action_data[action_name]
        else:
            details = self.predicate_data[action_name]
        parameter_names_pddl = details['parameter_types'].keys()
        parameter_names_nl = re.findall(r'\{\?.+?\}', action_nl_template)
        parameter_names_nl = [pn.replace('}', '').replace('{', '') for pn in parameter_names_nl]

        if len(set(parameter_names_nl)) != len(set(parameter_names_pddl)):
            return False
        else:
            return True

    def format_model_output(self, model_output: str, is_action: bool) -> Tuple[str, str]:

        reg = r'{.*?}'

        if is_action:
            tmp_description = model_output.replace('{', '')
            tmp_description = tmp_description.replace('?', '{?')
        else:
            tmp_description = model_output

        nl_template = tmp_description

        placeholders = re.findall(reg, tmp_description)
        nl_description = tmp_description
        for ph in placeholders:
            nl_description = nl_description.replace(ph, '{}')

        return nl_description, nl_template

    def create_action_template_indefinite(self, model_output: str):

        reg = r'{.*?}'

        # create a version with indefinite determiners and take the object type out of the brackets

        # make sure there is not already a determiner
        tokens = model_output.split(' ')
        new_tokens = tokens.copy()
        object_mention_inds = []
        for t_i, t in enumerate(tokens):
            if t.startswith('{'):
                object_mention_inds.append(t_i)

        shift_id = 0

        for obj_ind in object_mention_inds:
            potential_determiner = tokens[obj_ind - 1]
            object_mention = tokens[obj_ind]
            new_object_mention = object_mention.replace('{', '')
            new_tokens[obj_ind + shift_id] = new_object_mention

            if potential_determiner in ['a', 'an']:
                continue
            elif potential_determiner == 'the':
                if new_object_mention[0] in ['a', 'e', 'i', 'o', 'u']:
                    new_tokens[obj_ind + shift_id - 1] = 'an'
                else:
                    new_tokens[obj_ind + shift_id - 1] = 'a'
            else:
                if new_object_mention[0] in ['a', 'e', 'i', 'o', 'u']:
                    new_tokens = new_tokens[:obj_ind + shift_id] + ['an'] + new_tokens[obj_ind + shift_id:]
                    shift_id += 1
                else:
                    new_tokens = new_tokens[:obj_ind + shift_id] + ['a'] + new_tokens[obj_ind + shift_id:]
                    shift_id += 1

        tmp_description_indef = ' '.join(new_tokens)

        # only the object name should be in brackets
        tmp_description_indef = tmp_description_indef.replace('?', '{?')
        placeholders = re.findall(reg, tmp_description_indef)

        assert re.findall(reg, tmp_description_indef) == placeholders
        nl_description_indef = tmp_description_indef
        for ph in placeholders:
            nl_description_indef = nl_description_indef.replace(ph, '{}')
        nl_description_indef_templates = tmp_description_indef

        return nl_description_indef, nl_description_indef_templates


    def create_model(self, llm_name: str, model_type, max_tokens=200, temperature=0.0, seed=0) -> LLMModel:
        model_param = {'model_name': model_type,
                       'model_path': llm_name,
                       'max_tokens': max_tokens,
                       'temp': temperature,
                       'max_history': 1,
                       'seed': seed}
        llm_model = create_llm_model(model_type=model_type, model_param=model_param)
        self.llm_model = llm_model
        print(self.llm_model.seed)
        return llm_model


    def create_prompt(self, prompt_file: str, example_keys: List[str], examples_chat: bool) -> Tuple[str, list]:

        with open(prompt_file, 'r') as pf:
            prompt_dict = json.load(pf)

        if 'examples_act' in example_keys:
            prompt = prompt_dict['prompt_action']
        else:
            prompt = prompt_dict['prompt_pred']
        examples = []
        if examples_chat:
            for ex_key in example_keys:
                for example in prompt_dict[ex_key]:
                    examples.append({'role': 'user', 'content': example['input']})
                    examples.append({'role': 'assistant', 'content': example['output']})
        else:
            for ex_key in example_keys:
                for example in prompt_dict[ex_key]:
                    prompt += f'\n\nOriginal: {example["input"]}\nOutput: {example["output"]}'

        return prompt, examples


    def create_llm_inputs_actions(self, pddl2text_version='extended') -> Dict[str, str]:
        """

        :param pddl2text_version:
        :return:
        """
        action_inputs = dict()

        for action_name, action_dict in self.domain.actions.items():
            action_params = action_dict['parameters']
            params_names = list(action_params.keys())
            params_str = ', '.join(params_names)
            params_str = f'[{params_str}]'

            action_str = f'action: {action_name}\nparameters: {params_str}'
            if pddl2text_version == 'annotated' or pddl2text_version == 'full':
                action_str = f'description: {self.domain.action_annotations[action_name]}\n{action_str}'
            if pddl2text_version == 'extended' or pddl2text_version == 'full':
                action_effects_nl = self.create_effect_descriptions_for_prompt(action_name=action_name)
                action_precond_nl = self.create_precond_descriptions_for_prompt(action_name=action_name)
                action_str = f'{action_str}\npreconditions of {action_name}: {action_precond_nl}\neffects of {action_name}: {action_effects_nl}'

            action_inputs[action_name] = action_str

        return action_inputs


    def create_llm_inputs_predicates(self) -> Dict[str, str]:
        """
        Creates a dictionary with all predicates of the domain in string format
        i.e. '(' + predicate_name + all parameters separated by white space + ')'
        e.g. {'pick-up': '(pick-up ?ob)', 'stack': '(stack ?ob ?underob)', ...}
        :return:
        """
        predicate_inputs = dict()

        for pred_name, pred_params in self.domain.predicates.items():
            pred_params_list = list(pred_params.keys())
            pred_str_list = [pred_name] + pred_params_list
            pred_str = ' '.join(pred_str_list)
            predicate_str = f'({pred_str})'
            predicate_inputs[pred_name] = predicate_str

        return predicate_inputs

    def create_effect_descriptions_for_prompt(self, action_name) -> str:
        add_effects_action = self.domain.actions[action_name]['add_effects']
        del_effects_action = self.domain.actions[action_name]['del_effects']

        add_effects_nl = self.get_pred_nl_description_for_prompt(predicates=add_effects_action)
        add_effects_description = f'it becomes true that {" and ".join(add_effects_nl)}' if add_effects_nl else ''

        del_effects_nl = self.get_pred_nl_description_for_prompt(predicates=del_effects_action)
        del_effects_description = f'it is not the case anymore that {" and ".join(del_effects_nl)}' if del_effects_nl else ''

        if add_effects_nl and del_effects_nl:
            description = ''.join([add_effects_description, ' and ', del_effects_description])
        else:
            description = ''.join([add_effects_description, del_effects_description])

        return description

    def create_precond_descriptions_for_prompt(self, action_name) -> str:
        pos_precond_action = self.domain.actions[action_name]['pos_preconditions']
        neg_precond_action = self.domain.actions[action_name]['neg_preconditions']

        pos_precond_nl = self.get_pred_nl_description_for_prompt(predicates=pos_precond_action)
        neg_precond_nl = self.get_pred_nl_description_for_prompt(predicates=neg_precond_action)

        # add the types as positive preconditions
        for param_name, param_type in self.domain.actions[action_name]['parameters'].items():
            if param_type.startswith('a') or param_type.startswith('e') or param_type.startswith('i') \
                or param_type.startswith('o') or param_type.startswith('u'):
                pos_precond_nl.append(f'{param_name} is an {param_type}')
            else:
                pos_precond_nl.append(f'{param_name} is a {param_type}')

        positive_description = f'{" and ".join(pos_precond_nl)}' if pos_precond_nl else ''
        negative_description = f'it is not the case that {" and ".join(neg_precond_nl)}' if neg_precond_nl else ''

        if pos_precond_nl and neg_precond_nl:
            description = ''.join([positive_description, " and ", negative_description])
        else:
            description = ''.join([positive_description, negative_description])

        return description


    def get_pred_nl_description_for_prompt(self, predicates: List) -> List[str]:
        predicate_descriptions = []
        for pred in predicates:
            pred_name = pred[0]

            if isinstance(pred_name, BuiltinPredicateSymbol):
                pred_name = pred_name.value

            pred_params_ac_names = pred[1:]
            pred_params_orig_names = self.domain.predicates[pred_name].keys()
            pred_params_dict = dict([(orig_p, ac_p) for (orig_p, ac_p) in zip(pred_params_orig_names, pred_params_ac_names)])
            pred_description = self.predicate_nl_templates[pred_name].format(**pred_params_dict)
            predicate_descriptions.append(pred_description)

        return predicate_descriptions


    def create_action_description(self, description_version: str = 'medium'):
        """
        The general domain descriptions and action descriptions should use indefinite determiners
        i.e. "I can pick up an object A" instead of "I can pick up the object A"
        :param description_version:
        :return:
        """
        for action_name in self.action_mappings_indef.keys():
            action_dict = self.domain.actions[action_name]
            action_description = self.get_action_nl(action_name=action_name)
            self.action_data[action_name]['description'] = action_description

            positive_precond_descriptions = self.get_predicate_nls(predicates=action_dict['pos_preconditions'],
                                                                   action_name=action_name)
            negative_precond_descriptions = self.get_predicate_nls(predicates=action_dict['neg_preconditions'],
                                                                   action_name=action_name)

            add_effects = self.get_predicate_nls(predicates=action_dict['add_effects'],
                                                 action_name=action_name)
            del_effects = self.get_predicate_nls(predicates=action_dict['del_effects'],
                                                 action_name=action_name)

            if description_version == 'long':
                action_conditions_description, action_effect_description = create_long_version(
                    action_description=action_description,
                    positive_precond_descriptions=positive_precond_descriptions,
                    negative_precond_descriptions=negative_precond_descriptions,
                    add_effects=add_effects,
                    del_effects=del_effects)

            elif description_version == 'short':
                action_conditions_description, action_effect_description = create_short_version(
                    action_description=action_description,
                    positive_precond_descriptions=positive_precond_descriptions,
                    negative_precond_descriptions=negative_precond_descriptions,
                    add_effects=add_effects,
                    del_effects=del_effects)

            elif description_version == 'medium':
                action_conditions_description, action_effect_description = create_medium_version(
                    action_description=action_description,
                    positive_precond_descriptions=positive_precond_descriptions,
                    negative_precond_descriptions=negative_precond_descriptions,
                    add_effects=add_effects,
                    del_effects=del_effects)

            elif description_version == 'schematic':
                action_conditions_description, action_effect_description = create_schematic_version(
                    action_description=action_description,
                    positive_precond_descriptions=positive_precond_descriptions,
                    negative_precond_descriptions=negative_precond_descriptions,
                    add_effects=add_effects,
                    del_effects=del_effects)

            else:
                raise ValueError('Version can only be "long", "short", "medium" or "schematic"')

            self.action_data[action_name]['preconditions'] = action_conditions_description
            self.action_data[action_name]['effects'] = action_effect_description


    def get_action_nl(self, action_name: str) -> str:
        unique_chars = list(string.ascii_uppercase)

        action_params = self.domain.actions[action_name]['parameters']
        object_refs = dict()
        for param_name in action_params.keys():
            param_id = unique_chars.pop(0)
            object_refs[param_name] = param_id
            self.object_mappings[action_name][param_name] = param_id

        action_description = self.action_nl_templates_indef[action_name].format_map(object_refs)

        return action_description


    def get_predicate_nls(self, predicates: list, action_name: str) -> List[str]:

        descriptions = []

        for pred in predicates:
            pred_l = list(pred)
            pred_name = pred_l[0]
            pred_params = pred_l[1:]    # are named matching the action parameters but nl templates do not match them -> need to derive mapping

            if isinstance(pred_name, BuiltinPredicateSymbol):
                pred_name = pred_name.value
            pred_params_definition_names = list(self.predicate_data[pred_name]['parameter_types'].keys())

            pred_params_refs = dict()
            for parameter_position, param in enumerate(pred_params):    # param: name of the parameter in the action definition
                try:
                    parameter_ref = self.object_mappings[action_name][param]
                except KeyError:
                    assert not param.startswith('?')
                    parameter_ref = param
                def_param = pred_params_definition_names[parameter_position]    # the name of the parameter in the predicate definition
                pred_params_refs[def_param] = parameter_ref

            predicate_description = self.predicate_nl_templates[pred_name].format_map(pred_params_refs)
            descriptions.append(predicate_description)

        return descriptions

    def create_type_hierarchy_description(self) -> List[str]:
        descriptions = []

        for parent_type, sub_types in self.domain.types.items():
            disjunct_sub_types = ' or a '.join(sub_types)
            #for sub_t in sub_types:
            desc = f'Everything that is a {disjunct_sub_types} is also a {parent_type}'
            descriptions.append(desc)

        return descriptions

