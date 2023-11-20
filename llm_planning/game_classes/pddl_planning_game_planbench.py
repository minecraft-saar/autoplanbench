import json

from llm_planning.game_classes.pddl_planning_game import PDDLPlanningGame
from llm_planning.game_classes.pddl_game_env_planbench import PlanBenchEnvironment

class PDDLGamePlanBench(PDDLPlanningGame):

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
                 by_action: bool = True
                 ):

        with open(domain_nl_file, 'r') as nl_file:
            self.domain_nl = json.load(nl_file)


        super().__init__(llm_config=llm_config, task_num=task_num,
                         domain_file=domain_file, domain_nl_file=domain_nl_file,
                         instance_file=instance_file, translation_neural=translation_neural,
                         incremental=incremental, positive_feedback=positive_feedback,
                         negative_feedback=negative_feedback, subgoal_feedback=subgoal_feedback,
                         provide_state=provide_state, not_finished_feedback=not_finished_feedback,
                         log_history=log_history, by_action=by_action)



    def create_blocks_world_env(self, domain_file, instance_file):
        """

        :param domain_file:
        :param instance_file:
        :return:
        """
        bw_env = PlanBenchEnvironment(domain_nl=self.domain_nl,
                                        instance_file=instance_file,
                                        domain_file=domain_file)
        return bw_env


    def create_plan_template_args(self, examples_dict) -> dict:

        args = {
            'domain_intro': self.domain_nl['domain_intro'],
            'incremental': self.incremental,
            'pos_examples': examples_dict['pos_examples'],
            'prefixes': examples_dict['prefixes'],
            'task_description': self.task_description,
        }

        return args


    def get_possible_actions_plan_task(self) -> str:
        """
        Gets never used
        :return:
        """
        return ''

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

            unique_args = []
            for i, arg in enumerate(action_args):
                arg_new = f'?{arg}{i}'
                unique_args.append(arg_new)

            action_pddl = f'({action_name} {" ".join(unique_args)})'
            action_description = self.domain_nl['action_mappings'][action_name].format(*unique_args)

            action_form = f'{action_pddl}\ndescription: {action_description}\n'
            all_actions_list_form.append(action_form)

        all_actions_list_form.append('(look-around)\nlook around to get a state description')
        all_actions_str = '\n'.join(all_actions_list_form)
        return all_actions_str



