from stanza import Pipeline
from llm_planning.game_classes.pddl_game_env import PDDLWorldEnvironment


class PlanBenchEnvironment(PDDLWorldEnvironment):

    def __init__(self, domain_nl: dict,
                 instance_file: str,
                 domain_file: str,
                 nlp_processor: Pipeline):

        domain_nl = domain_nl.copy()
        encoded_objs = domain_nl['encoded_objects'].items()
        for (key, value) in encoded_objs:
            if '{}' in key or '{}' in value:
                del domain_nl['encoded_objects']
                break

        super().__init__(domain_nl=domain_nl,
                         instance_file=instance_file,
                         domain_file=domain_file,
                         nlp_processor=nlp_processor)

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

            # in the manual planbench predicate mappings there are empty strings
            if self.predicates_text[pred_name] != "":
                objs = self.order_args(pred_type='predicate', pred_name=pred_name, obj_names_pddl_order=objs)
                pred_descr = self.predicates_text[pred_name].format(*objs)
                pred_descriptions.append(pred_descr)

        pred_descriptions.sort()
        state_description = sep.join(pred_descriptions)
        return state_description

    def order_args(self, pred_type: str, pred_name: str, obj_names_pddl_order: list):
        """
        Assume that the original planbench NL descriptions are written in a way such that they
        match the pddl argument order
        :param pred_type:
        :param pred_name:
        :param obj_names_pddl_order:
        :return:
        """

        return obj_names_pddl_order

