import json
from typing import Tuple
from collections import defaultdict

from llm_planning.game_classes.pddl_game_env import PDDLWorldEnvironment
from llm_planning.game_classes.llm_models_pddl_planning import TranslationModelBlocksWorld, PlanningModelBlocksWorld
from model_classes.planning_games import PlanningGame


class PDDLPlanningGame(PlanningGame):

    def __init__(self,
                 llm_config: dict,
                 task_num: int,
                 domain_file: str,
                 domain_nl_file: str,
                 instance_file: str,
                 translation_neural: bool = True,
                 incremental: bool = True,
                 positive_feedback: str = 'full',
                 negative_feedback: str = 'full',
                 subgoal_feedback: bool = False,
                 provide_state: bool = False,
                 not_finished_feedback: bool = False,
                 log_history: bool = False,
                 by_action: bool = False
                 ):

        self.by_action = by_action
        with open(domain_nl_file, 'r') as nl_file:
            self.domain_nl = json.load(nl_file)

        print("Initializing world state")
        self.env = self.create_blocks_world_env(domain_file=domain_file,
                                                instance_file=instance_file)

        super().__init__(llm_config=llm_config, task_num=task_num,
                         subgoal_feedback=subgoal_feedback, provide_state=provide_state,
                         log_history=log_history, task_name=f'instance-{task_num}',
                         incremental=incremental, positive_feedback=positive_feedback,
                         negative_feedback=negative_feedback,
                         not_finished_feedback=not_finished_feedback,
                         translation_neural=translation_neural)

        self.metadata['by_action'] = by_action

    def create_blocks_world_env(self, domain_file, instance_file):
        """

        :param domain_file:
        :param instance_file:
        :return:
        """
        bw_env = PDDLWorldEnvironment(domain_nl=self.domain_nl,
                                      instance_file=instance_file,
                                      domain_file=domain_file)
        return bw_env


    def create_plan_llm(self, plan_llm_config: dict):
        """

        :param plan_llm_config:
        :return:
        """
        if plan_llm_config.get('task_description', None):
            self.task_description = plan_llm_config['task_description']
        else:
            self.task_description = self.env.get_description_goal_state()

        examples_dict = self.create_examples_dict(llm_config=plan_llm_config)
        examples_in_prompt = not plan_llm_config.get('examples_chat', False)
        initial_prompt = self.create_plan_task_prompt(include_examples=examples_in_prompt,
                                                      examples_dict=examples_dict)
        model = PlanningModelBlocksWorld(model_type=plan_llm_config['model_name'],
                                         model_param=plan_llm_config,
                                         example_dict=examples_dict,
                                         init_prompt=initial_prompt)
        return model


    def create_plan_template_args(self, examples_dict) -> dict:
        if not self.by_action:
            preconditions = []
            effects = []
            for action in self.domain_nl['actions'].keys():
                preconditions.extend(self.domain_nl['actions'][action]['preconditions'])
                effects.extend(self.domain_nl['actions'][action]['effects'])

            args = {
                'task_description': self.task_description,
                'actions': self.get_possible_actions_plan_task(),
                'preconditions': preconditions,
                'effects': effects,
                'incremental': self.incremental,
                'pos_examples': examples_dict['pos_examples'],
                'prefixes': examples_dict['prefixes'],
                'type_hierarchy': self.domain_nl['type_hierarchy']
            }
        else:
            action_prec_and_effects = []
            for action in self.domain_nl['actions'].keys():
                current_action_prec_eff = []
                for prec in self.domain_nl['actions'][action]['preconditions']:
                    current_action_prec_eff.append(prec)
                for eff in self.domain_nl['actions'][action]['effects']:
                    current_action_prec_eff.append(eff)
                action_prec_and_effects.append('\n'.join(current_action_prec_eff))

            args = {
                'task_description': self.task_description,
                'actions': self.get_possible_actions_plan_task(),
                'preconditions_and_effects': action_prec_and_effects,
                'incremental': self.incremental,
                'pos_examples': examples_dict['pos_examples'],
                'prefixes': examples_dict['prefixes'],
                'type_hierarchy': self.domain_nl['type_hierarchy']
            }

        return args

    def create_trans_llm(self, translate_llm_config: dict):
        """

        :param translate_llm_config:
        :return:
        """
        examples_dict = self.create_examples_dict(translate_llm_config)
        examples_in_prompt = not translate_llm_config.get('examples_chat')
        initial_prompt = self.create_trans_task_prompt(include_examples=examples_in_prompt,
                                                       examples_dict=examples_dict)

        model = TranslationModelBlocksWorld(model_type=translate_llm_config['model_name'],
                                            model_param=translate_llm_config,
                                            example_dict=examples_dict,
                                            init_prompt=initial_prompt)
        return model

    def create_trans_template_args(self, examples_dict) -> dict:
        args = {
            'actions': self.get_possible_actions_trans_task(),
            'objects': self.get_all_available_referents(),
            'pos_examples': examples_dict['pos_examples'],
            'prefixes': examples_dict['prefixes']
        }
        return args


    def get_all_available_referents_str(self) -> str:
        """

        :return:
        """
        all_available_list = self.get_all_available_referents()
        all_available_list = [f'a {obj}' for obj in all_available_list]
        all_obj_str = '\n'.join(all_available_list)
        return all_obj_str

    def get_all_available_referents(self) -> list:
        return self.env.possible_objects

    def get_all_possible_objects(self) -> list:
        return self.env.all_objects_domain

    def get_all_possible_objects_str(self) -> str:
        """

        :return:
        """
        all_available_list = self.get_all_possible_objects()
        all_available_list = [f'a {obj}' for obj in all_available_list]
        all_obj_str = '\n'.join(all_available_list)
        return all_obj_str

    def get_all_possible_encoded_objects_str(self) -> str:
        encoding = self.env.encoded_objects
        mapping_str = ''
        for key, value in encoding.items():
            mapping_str += f'{value}: {key}\n'
        return mapping_str

    def get_all_actions(self) -> list:
        """
        self.env.actions_pddl returns a dict: {'pick-up': '(pick-up object)', 'stack': '(stack object object)', ...}
        :return:
        """
        all_actions_pddl = list(self.env.actions_pddl.values())
        return all_actions_pddl

    def get_possible_actions_plan_task(self) -> str:
        actions = []
        for action_name in self.domain_nl['actions'].keys():
            actions.append(self.domain_nl['actions'][action_name]['description'])
        actions = '\n'.join(actions)
        return actions

    def get_possible_actions_trans_task(self) -> str:
        """

        :return:
        """
        all_actions_list = self.get_all_actions()
        all_actions_list_form = []
        for action in all_actions_list:
            action_no_brackets = action.replace('(', '').replace(')', '')
            action_args = action_no_brackets.split()[1:]
            action_name = action_no_brackets.split()[0]

            action_pddl = self.domain_nl['actions'][action_name]['pddl']
            action_description = self.domain_nl['action_nl_templates'][action_name]

            action_form = f'{action_pddl}\ndescription: {action_description}\n'
            all_actions_list_form.append(action_form)

        all_actions_list_form.append('(look-around)\nlook around to get a state description')
        all_actions_str = '\n'.join(all_actions_list_form)
        return all_actions_str


    def get_goal_status(self) -> dict:
        """

        :return:
        """
        goal_facts_status = dict()
        for goal_fact in self.env.facts_goal_state:
            if goal_fact in self.env.facts_current_state:
                goal_facts_status[goal_fact] = (True, '', 'mandatory')
            else:
                goal_facts_status[goal_fact] = (False, '', 'mandatory')

        return goal_facts_status


    def update_goal_progress(self) -> str:
        # check if last action made goal facts true that were false before or the other way around
        reached_goal_facts = []
        lost_goal_facts = []
        new_goal_status = self.get_goal_status()
        for goal_fact in new_goal_status.keys():
            old_status = self.subgoals[goal_fact][0]
            new_status = new_goal_status[goal_fact][0]
            if new_status and not old_status:
                reached_goal_facts.append(goal_fact)
            if not new_status and old_status:
                lost_goal_facts.append(goal_fact)

        # update goal status
        self.subgoals = new_goal_status

        feedback = ''
        if reached_goal_facts:
            feedback += f''
        if lost_goal_facts:
            feedback += f''

        return feedback

    def get_diff_to_goal_feedback(self):
        if self.negative_feedback == 'full':
            feedback = self.env.goal_feedback
        else:
            feedback = 'I am not finished yet.'
        return feedback


    def check_goal_completion(self):
        return self.is_completed


    def get_description_current_state(self):
        return self.env.get_description_current_state()


    def _execute(self, translation_output: str) -> Tuple[str, bool, bool]:

        split_output = translation_output.split('[2] ')
        pddl_action = split_output[-1]
        # pass to environment
        observation, executable, is_completed = self.env.step(pddl_action)

        return observation, executable, is_completed


