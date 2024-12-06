from typing import Tuple, Union, List, Dict
import re
from model_classes.planning_games import PlanningGame
from llm_planning.game_classes.llm_models_pddl_planning import TranslationModelBlocksWorld, PlanningModelBlocksWorld
from llm_planning.raw_pddl_input.raw_pddl_env import RawPDDLEnvironment


class RawPDDLPlanningGame(PlanningGame):

    def __init__(self,
                 llm_config: dict,
                 domain_file: str,
                 domain_nl_file: Union[str, None],
                 instance_file: str,
                 task_num: Union[int, str],
                 incremental: bool,
                 provide_state: bool,
                 log_history: bool = False,
                 assert_cache: bool = False,
                 translation_neural: bool = False,
                 not_finished_feedback: bool = False,
                 positive_feedback: str = 'pddl',
                 negative_feedback: str = 'pddl',
                 subgoal_feedback: bool = False,
                 allow_multi_action: Union[None, bool] = False,
                 planning_approach: Union[str, None] = None
                 ):

        with open(domain_file, 'r') as df:
            self.domain_descript = df.read().strip()

        super().__init__(llm_config=llm_config, env_config={'domain_file': domain_file, 'instance_file': instance_file},
                         task_num=task_num, task_name=f'instance-{task_num}', translation_neural=translation_neural,
                         incremental=incremental, positive_feedback=positive_feedback,
                         negative_feedback=negative_feedback, subgoal_feedback=subgoal_feedback,
                         provide_state=provide_state, not_finished_feedback=not_finished_feedback,
                         log_history=log_history, allow_multi_action=allow_multi_action,
                         planning_approach=planning_approach,
                         assert_cache=assert_cache)

    def split_problem_file(self, instance_file):

        with open(instance_file, 'r') as pf:
            problem_text = pf.read()
        problem_text = problem_text.strip()
        pref, definition = problem_text.split('(:objects')
        problem_def, goal_def = definition.split('(:goal')

        problem_def = f'(:objects {problem_def}'
        goal_def = f'(:goal {goal_def}'
        goal_def = goal_def.strip()
        if goal_def[-1] == ')':
            goal_def = goal_def[:-1]

        return problem_def, goal_def

    def create_world_env(self, env_dict: dict):
        """

        :param env_dict:
        :return:
        """
        domain_file = env_dict['domain_file']
        instance_file = env_dict['instance_file']
        env = RawPDDLEnvironment(domain_file=domain_file,
                                 instance_file=instance_file)

        return env


    def create_plan_llm(self, plan_llm_config: dict):
        """

        :param plan_llm_config:
        :return:
        """
        self.task_description = self.env.get_description_goal_state()
        examples_in_prompt = not plan_llm_config.get('examples_chat', False)
        if self.incremental and not examples_in_prompt:
            examples_dict = self.create_examples_dict_incre_chat(llm_config=plan_llm_config)
        else:
            examples_dict = self.create_examples_dict(llm_config=plan_llm_config)

        initial_prompt = self.create_plan_task_prompt(include_examples=examples_in_prompt,
                                                      examples_dict=examples_dict)
        model = PlanningModelBlocksWorld(model_type=plan_llm_config['model_name'],
                                         model_param=plan_llm_config,
                                         example_dict=examples_dict,
                                         init_prompt=initial_prompt)

        return model


    def create_plan_template_args(self, examples_dict) -> dict:
        args = {'task_description': self.task_description,
                'pos_examples': examples_dict['pos_examples'],
                'actions': self.get_possible_actions_plan_task(),
                'prefixes': examples_dict['prefixes']}

        return args


    def create_trans_llm(self, translate_llm_config: dict):

        model = TranslationModelBlocksWorld(model_type=translate_llm_config['model_name'],
                                            model_param=translate_llm_config,
                                            example_dict=dict(),
                                            init_prompt='')
        return model


    def _execute(self, translation_output: str) -> Tuple[str, bool, bool]:
        observation, executable, is_completed = self.env.step(translation_output)
        return observation, executable, is_completed


    def text_to_plan(self, text: str) -> str:

        reg = r'\(.*\)'
        pddl_actions = re.findall(reg, text)
        if not pddl_actions:
            return text
        else:
            return pddl_actions[0]


    def get_possible_actions_plan_task(self) -> str:
        return self.domain_descript


    def get_description_current_state(self) -> str:
        return self.env.get_description_initial_state()


    def get_goal_status(self) -> Dict[str, Tuple[bool, str, str]]:
        """

        :return:
        """
        goal_facts_status = dict()
        for pos_goal_fact in self.env.conditions_goal_state['pos_conditions']:
            if pos_goal_fact in self.env.facts_current_state:
                goal_facts_status[pos_goal_fact] = (True, '', 'mandatory')
            else:
                goal_facts_status[pos_goal_fact] = (False, '', 'mandatory')

        for neg_goal_fact in self.env.conditions_goal_state['neg_conditions']:
            negated_goal_fact_str = f'not {neg_goal_fact}'
            if neg_goal_fact in self.env.facts_current_state:
                goal_facts_status[negated_goal_fact_str] = (False, '', 'mandatory')
            else:
                goal_facts_status[negated_goal_fact_str] = (True, '', 'mandatory')

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

        return ''

    def check_goal_completion(self) -> bool:
        return self.is_completed

    def get_diff_to_goal_feedback(self) -> str:
        return ''

    def get_possible_actions_trans_task(self) -> str:
        return ''

    def get_all_actions(self) -> List[str]:
        return []

    def get_all_available_referents(self) -> List[str]:
        return []

    def get_all_available_referents_str(self) -> str:
        return ''

    def create_trans_template_args(self, examples_dict) -> dict:
        return dict()

    def create_trans_task_prompt(self, include_examples: Union[bool, None] = None, examples_dict: Union[dict, None] = None) -> str:
        return ''
