import json
from stanza import Pipeline
from typing import Tuple, Union

from llm_planning.game_classes.pddl_planning_game import PDDLPlanningGame


class PDDLGameThoughts(PDDLPlanningGame):

    def __init__(self,
                 llm_config: dict,
                 task_num: Union[int, str],
                 domain_file: str,
                 domain_nl_file: str,
                 instance_file: str,
                 nlp_processor: Pipeline,
                 translation_neural: bool = True,
                 incremental: bool = True,
                 positive_feedback: str = 'full',
                 negative_feedback: str = 'full',
                 subgoal_feedback: bool = False,
                 provide_state: bool = False,
                 not_finished_feedback: bool = False,
                 assert_cache: bool = False,
                 log_history: bool = False,
                 by_action: bool = False,
                 planning_approach: Union[str, None] = None
                 ):

        with open(domain_nl_file, 'r') as nl_file:
            self.domain_nl = json.load(nl_file)

        super().__init__(llm_config=llm_config, task_num=task_num,
                         domain_file=domain_file, domain_nl_file=domain_nl_file,
                         instance_file=instance_file, translation_neural=translation_neural,
                         incremental=incremental, positive_feedback=positive_feedback,
                         negative_feedback=negative_feedback, subgoal_feedback=subgoal_feedback,
                         provide_state=provide_state, not_finished_feedback=not_finished_feedback,
                         log_history=log_history, by_action=by_action,
                         planning_approach=planning_approach,
                         assert_cache=assert_cache,
                         nlp_processor=nlp_processor)

    def get_next_instruction(self, debug=False, instr='') -> Tuple[bool, bool]:

        if self.log_history:
            with open('./temp_log_history.txt', 'a') as f:
                f.write(f'{self.llm_plan.get_history()}\n')

        if self.observation == '':
            # generate initial state description
            self.observation = self.get_description_current_state()
            # If initial step: use goal description for current state
            if self.examples_chat:
                self.observation = f'{self.env.get_description_goal_state()} {self.observation}'
            print(f'$SWorld: {self.observation} SWorld$')
            self.write_log(self.observation, 'auto_state')

        # What is current_world for?
        current_world = self.get_description_current_state()

        model_input = self.observation

        # generate instruction
        if debug:
            instruction = instr
        else:
            instruction = self.llm_plan.generate(model_input)
        print(f'$Model: {instruction} Model$')
        self.write_log(instruction, 'plan_model')

        if 'you are finished' in instruction.lower() or "you're finished" in instruction.lower():
            return self.process_finished_message()

        instruction_parts = instruction.strip().split('\n')
        instruction_parts = [ip.strip() for ip in instruction_parts]
        if len(instruction_parts) == 1 and instruction_parts[0].lower().startswith('think:'):
            observations = ['Ok.']
            print(f'$SWorld: Ok. SWorld$')

        else:
            non_think_instruction_pars = []
            for ip in instruction_parts:
                if ip != '' and not ip.lower().startswith('think:'):
                    non_think_instruction_pars.append(ip)

            instruction = '\n'.join(non_think_instruction_pars)

            instruction = instruction.replace('instruction: ', '').replace('Instruction: ', '')

            assert 'think' not in instruction.lower(), 'Think in processed instruction'
            # translate instruction
            if self.translation_neural:
                translation_output = self.llm_translate.generate(instruction)
            else:
                translation_output = self.text_to_plan(text=instruction)

            # output of the translation model can consist of several actions theoretically
            translation_output_list = self.process_multi_action_translations(translation_output=translation_output)
            assert len(translation_output_list) > 0, 'No translation output'

            observations, _ = self.try_execution(translation_output_list, current_world)

        self.observation = '\n'.join(observations)
        self.write_log(self.observation, 'env_feedback')
        #print(self.llm_plan.get_history())

        return self.is_completed, False

    def run_instructions_all_complete(self, attempts: int, batching: bool = False):

        success = False
        executable = False
        failing_step = None
        failed_action = None
        failing_message = None

        if attempts > 1:
            assert self.llm_plan.model.max_history > 0, 'Wrong max history value'

        for attempt in range(attempts):
            if attempt == 0:
                # generate initial state description
                self.observation = self.get_description_current_state()
                if self.examples_chat:
                    self.observation = f'{self.env.get_description_goal_state()}\n{self.observation}'
                print(f'$SWorld: {self.observation} SWorld$')
                self.write_log(self.observation, 'auto_state')

            else:
                # generate the replanning prompt
                # two possible scenarios: either not executable or did not reach goal state
                if executable:
                    replanning_prompt = f'This plan is not a valid plan for my task because ' \
                                        f'the action {failed_action} in step {failing_step} cannot be executed:\n' \
                                        f'{failing_message}\n Please provide the complete corrected plan.'
                else:
                    replanning_prompt = 'This plan is not a correct plan for my task because ' \
                                        'I have not reached my goal after executing all the actions.\n' \
                                        'Please provide me the complete corrected plan.'
                self.observation = replanning_prompt

            # pass as input to planning model
            plan = self.llm_plan.generate(self.observation, assert_cache=True)
            if batching:
                return self.llm_plan

            print(f'$Model: {plan} Model$')
            self.write_log(plan, 'plan_model')

            steps = plan.split('\n')
            # avoid problems if model adds empty lines between two steps
            steps = [st for st in steps if st]

            only_action_steps = []
            for step in steps:
                if step.strip().lower().startswith('think'):
                    continue
                else:
                    step = step.replace('instruction: ', '').replace('Instruction: ', '')
                    only_action_steps.append(step)

            # translate plan
            translated_steps = []
            for step in only_action_steps:
                if step == '[PLAN END]' or 'are finished' in step.lower():
                    break
                if self.translation_neural:
                    translated_step = self.llm_translate.generate(step)
                else:
                    translated_step = self.text_to_plan(step)
                translated_steps += translated_step.split('\n')


            print(f'$Translated: {translated_steps} Translated$')
            self.write_log(translated_steps, 'translate_model')

            reached_goal_any_time, step_reached_goal_first, success, executable, observation = self.process_complete_pred_plan(
                predicted_plan=only_action_steps,
                translated_plan=translated_steps)

            self.observation = observation

            self.summary_planning['reached_goal'] = reached_goal_any_time
            self.summary_planning['success'] = success
            self.summary_planning['executable'] = executable
            self.summary_planning['n_steps'] = attempt + 1
            self.summary_planning['step_reached_goal_first'] = step_reached_goal_first

            if success:
                break

            # else the environment needs to be reset to the initial world state
            self.env = self.create_world_env(self.env_config)
            self.reset_summary_planning()
            self.summary_planning['n_steps'] = attempt + 1

        return success


