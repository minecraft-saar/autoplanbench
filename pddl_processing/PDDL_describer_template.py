from typing import Dict, Tuple
from jinja2 import Template
from .PDDL_describer import PDDLDescriber


class PDDLDescriberTemplate(PDDLDescriber):

    def __init__(self, domain_file):

        super().__init__(domain_file=domain_file)

    def create_domain_descriptions_from_scratch(self,
                                                prompt_file: str,
                                                output_file: str,
                                                description_version: str = 'medium',
                                                pddl2text_llm: str = 'gpt-4o',
                                                pddl2text_model_type: str = 'openai_chat',
                                                pddl2text_version: str = 'full',
                                                examples_chat: bool = True,
                                                seed: int = 0):
        raise NotImplementedError

    def create_domain_descriptions_from_template(self,
                                                template_file: str,
                                                output_file: str,
                                                description_version: str = 'medium'):

        self.create_mappings_from_template(template_file=template_file)

        self.formal_mapping_check()

        self.create_domain_descriptions_from_mappings(output_file=output_file, description_version=description_version)

    def create_mappings_from_template(self, template_file):
        print(template_file)
        with open(template_file, 'r') as f:
            conversion_template = Template(f.read())

        # iterate over all predicates
        for pred_name, pred_params in self.domain.predicates.items():
            typed_pred_params_list_orig = list(pred_params.items())
            pred_params_list = ['{'+ param +'}' for (param, param_type) in typed_pred_params_list_orig]

            if len(pred_params_list) == 0:
                arg_type = 'zero'
                pred_params_str = ''

            elif len(pred_params_list) == 1:
                arg_type = 'unary'
                pred_params_str = pred_params_list[0]

            else:
                arg_type = 'default'
                pred_params_str = ', '.join(pred_params_list[:-1]) + f' and {pred_params_list[-1]}'

            template_input = {'conversion_type': 'predicate',
                              'argtype': arg_type,
                              'arguments': pred_params_str,
                              'predicate_name': pred_name}
            raw_predicate_mapping = conversion_template.render(**template_input)
            raw_predicate_mapping = raw_predicate_mapping.strip()
            output_formatted, output_template = self.format_model_output(model_output=raw_predicate_mapping,
                                                                         is_action=False)
            self.predicate_mappings[pred_name] = output_formatted
            self.predicate_nl_templates[pred_name] = output_template

        # iterate over all actions
        for action_name, action_params in self.domain.actions.items():
            typed_action_params_list_orig = list(action_params['parameters'].items())
            action_params_list = ['{' + action_type + ' ' + action + '}' for (action, action_type) in typed_action_params_list_orig]

            if len(action_params_list) == 0:
                arg_type = 'zero'
                action_params_str = ''
            elif len(action_params_list) == 1:
                arg_type = 'unary'
                action_params_str = action_params_list[0]
            else:
                arg_type = 'default'
                action_params_str = ', '.join(action_params_list[:-1]) + f' and {action_params_list[-1]}'

            template_input = {'conversion_type': 'action',
                              'argtype': arg_type,
                              'arguments': action_params_str,
                              'action_name': action_name}
            raw_action_mapping = conversion_template.render(**template_input)
            raw_action_mapping = raw_action_mapping.strip()
            output_formatted, output_template = self.format_model_output(model_output=raw_action_mapping, is_action=True)

            output_formatted_indef, output_indef_template = self.create_action_template_indefinite(model_output=raw_action_mapping)

            self.action_mappings[action_name] = output_formatted
            self.action_nl_templates[action_name] = output_template
            self.action_mappings_indef[action_name] = output_formatted_indef
            self.action_nl_templates_indef[action_name] = output_indef_template


