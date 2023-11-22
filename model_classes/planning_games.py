import os
from datetime import datetime
import json
import time
from pathlib import Path
from typing import Tuple, List, Dict, Union
from jinja2 import Template
from abc import ABC, abstractmethod
from .planning_game_models import TranslationModel, PlanningModel
from utils.helpers import create_log_file_name
from utils.paths import OUTPUT_DIR


class PlanningGame(ABC):

    def __init__(self,
                 llm_config: dict,
                 task_num: int,
                 task_name: str,
                 translation_neural: bool,
                 incremental: bool,
                 positive_feedback: str,
                 negative_feedback: str,
                 subgoal_feedback: bool,
                 provide_state: bool,
                 not_finished_feedback: bool,
                 log_history: bool
                 ):
        """

        :param llm_config: the dictionary with the configuration for the PlanningModel and TranslationModel
        :param task_num: ID of the task
        :param task_name: name of the task
        :param translation_neural: whether to use the LLM translation model (True) or another, rule based approach (False)
        :param incremental: whether to generate the instructions incrementally in interaction with the environmental feedback (True)
                            or generate the complete plan at once (False)
        :param positive_feedback: type of feedback to include in planning model input if execution of an action is successful
                                  only used if incremental=True
                                  if 'full': the automatic feedback from the execution in the environment is added to the input for the PlanningModel
                                  if 'success': only 'Done' is added to the input for the PlanningModel
                                  if 'next': only 'Next.' is added to the input for the PlanningModel
        :param negative_feedback: type of feedback to include in planning model input if execution of an action is not successful
                                  only used if incremental=True
                                  if 'full': some kind of detailed feedback about the source of the mistake is added to the input
                                             can come from the environment, the translation model, etc. needs to be defined in the get_next_step() method
                                  if 'success': only 'This does not work.' is added to the input for the PlanningModel
                                  if 'next': only 'Next.' is added to the input for the PlanningModel
        :param subgoal_feedback: whether to add feedback about reaching subgoals to the input of the planning model
        :param provide_state: whether to add the description of the new state to the input of the planning model every time
                              that the world state changes
        :param not_finished_feedback: if True: model gets feedback that / why goal is not reached yet when generating
                                                "You are finished" although not finished yet and can continue planning
                                      if False: if model generates "You are finished" and goal is not satisfied then
                                                game ends as not successful
        :param log_history: whether to log the history at each interaction step in a file './temp_history.txt'
                            gets overwritten at each run
                            only used if incremental=True
        """
        self.translation_neural = translation_neural
        self.subgoal_feedback = subgoal_feedback
        self.positive_feedback = positive_feedback
        self.negative_feedback = negative_feedback
        self.provide_state = provide_state
        self.task_num = task_num
        self.count_successive_fails = 0
        self.subgoals = self.get_goal_status()
        self.log_history = log_history
        self.incremental = incremental
        self.not_finished_feedback = not_finished_feedback

        self.plan_prompt_template = self.create_prompt_template(llm_config['plan'])
        self.translate_prompt_template = self.create_prompt_template(llm_config['translate'])

        self.observation = ''
        self.is_completed = False
        self.task_name = task_name
        self.task_description = ''

        self.log = ""
        self.metadata = {'model_config': llm_config,
                         'task': {'task_num': self.task_num},
                         'translation_neural': self.translation_neural,
                         'positive_feedback': positive_feedback,
                         'subgoal_feedback': subgoal_feedback,
                         'provide_state': provide_state,
                         'incremental': self.incremental,
                         'not_finished_feedback': self.not_finished_feedback
                         }

        print("Getting LLMs")
        self.llm_plan = self.create_plan_llm(llm_config['plan'])
        self.llm_translate = self.create_trans_llm(llm_config['translate'])


    @abstractmethod
    def create_plan_llm(self, plan_llm_config: dict) -> PlanningModel:
        """
        Create and initialize a PlanningModel
        - needs to call self.create_plan_task_prompt
        :param plan_llm_config:
        :return:
        """
        pass

    @abstractmethod
    def create_trans_llm(self, translate_llm_config: dict) -> TranslationModel:
        """
        Create and initialize a TranslationModel
        - needs to call sef.create_trans_task_prompt
        :param translate_llm_config:
        :return:
        """
        pass

    def create_prompt_template(self, llm_config: dict) -> Template:
        """

        :return:
        """
        with open(llm_config['prompt_file'], 'r') as f:
            prompt_template = Template(f.read())
        return prompt_template

    @abstractmethod
    def create_plan_template_args(self, examples_dict) -> dict:
        pass

    @abstractmethod
    def create_trans_template_args(self, examples_dict) -> dict:
        pass

    def create_examples_dict(self, llm_config: dict):

        try:
            with open(llm_config['examples_file'], 'r') as ef:
                examples_dict = json.load(ef)
        except KeyError:
            examples_dict = dict()

        if 'prefixes' not in examples_dict.keys():
            examples_dict['prefixes'] = {'input': '', 'output': '', 'wrong': ''}
        if 'pos_examples' not in examples_dict.keys():
            examples_dict['pos_examples'] = None
        else:
            reformatted = []
            for ex in examples_dict['pos_examples']:
                reformatted.append({'input': ex[0], 'output': ex[1]})
            examples_dict['pos_examples'] = reformatted
        if 'neg_examples' not in examples_dict.keys():
            examples_dict['neg_examples'] = None
        else:
            reformatted = []
            for ex in examples_dict['neg_examples']:
                reformatted.append({'input': ex[0], 'wrong': ex[1], 'output': ex[2]})
            examples_dict['neg_examples'] = reformatted

        return examples_dict

    def create_plan_task_prompt(self, include_examples: Union[bool, None] = None, examples_dict: Union[dict, None] = None) -> str:
        """
        Create the initial / system prompt for the self.llm_plan
        :param include_examples:
        :param examples_dict:
        :return:
        """
        examples = examples_dict if examples_dict else self.llm_plan.examples_dict
        include_examples = include_examples if include_examples else not self.llm_plan.examples_chat
        template_args = self.create_plan_template_args(examples_dict=examples)
        template_args['include_examples'] = include_examples

        prompt = self.plan_prompt_template.render(**template_args)
        return prompt

    def create_trans_task_prompt(self, include_examples: Union[bool, None] = None, examples_dict: Union[dict, None] = None) -> str:
        """
        Create the initial / system prompt for the self.llm_translate
        :param include_examples:
        :param examples_dict:
        :return:
        """
        examples = examples_dict if examples_dict else self.llm_translate.examples_dict
        include_examples = include_examples if include_examples else not self.llm_translate.examples_chat
        template_args = self.create_trans_template_args(examples_dict=examples)
        template_args['include_examples'] = include_examples

        if include_examples:
            if 'example_objs' in examples.keys() and 'objects' in template_args.keys():
                all_objs = set(examples['example_objs'] + template_args['objects'])
                all_objs = list(all_objs)
                all_objs.sort()
                template_args['objects'] = all_objs

        prompt = self.translate_prompt_template.render(**template_args)
        return prompt


    def get_translate_prompt(self) -> str:
        """

        :return: the initial prompt of the self.llm_translate
        """
        return self.llm_translate.get_initial_prompt()


    def get_plan_prompt(self) -> str:
        """

        :return: the initial prompt of the self.llm_plan
        """
        return self.llm_plan.get_initial_prompt()



    def get_all_available_referents_str(self) -> str:
        """
        Create a string with all objects returned by self.get_all_available_referents()
        :return:
        """
        pass

    @abstractmethod
    def get_all_available_referents(self) -> List[str]:
        """
        Create list with all available objects/referents
        :return:
        """
        pass

    @abstractmethod
    def get_possible_actions_plan_task(self) -> str:
        """
        Get information about the possible actions and create string representation of these actions
        as it should be included in the initial prompt of the self.llm_plan
        :return:
        """
        pass

    @abstractmethod
    def get_possible_actions_trans_task(self) -> str:
        """
        Get information about the possible actions and create string representation of these actions
        as it should be included in the initial prompt of the self.llm_translate
        :return:
        """
        pass

    @abstractmethod
    def get_all_actions(self) -> List[str]:
        """
        Return a list of all possible actions
        :return:
        """
        pass

    @abstractmethod
    def get_goal_status(self) -> Dict[str, Tuple[bool, str, str]]:
        """
        Return a dictionary with all goal subparts (e.g. subtasks, goal facts, etc.)
        where keys are the names of the goal subpart and values are triples
        (whether goal is satisfied, further description, 'mandatory'|'optional')
        :return:
        """
        pass

    @abstractmethod
    def update_goal_progress(self) -> str:
        """
        Call self.get_goal_status and set self.goal_facts_status = new_goal_status
        Determine which subgoals are now satisfied that where not before and the other way round and
        return feedback which should be passed to the model about the changes
        :return:
        """
        pass

    @abstractmethod
    def check_goal_completion(self) -> bool:
        """
        Return whether the goal is reached
        :return:
        """
        pass

    @abstractmethod
    def get_diff_to_goal_feedback(self) -> str:
        """

        :return:
        """
        pass

    @abstractmethod
    def get_description_current_state(self) -> str:
        """

        :return:
        """
        pass

    def resume_log(self, max_steps):
        """

        :param max_steps:
        :return:
        """
        now = str(datetime.now())
        day_now = now.split(' ')[0]
        print(f'Continuing to use {self.log} for saving conversation')
        with open(self.log, 'a') as log:
            json.dump({'continued': 'true', 'max_steps': max_steps, 'date': day_now}, log)
            log.write('\n')

        return None


    def create_log(self, max_steps, directory='') -> str:
        """

        :param max_steps:
        :param directory:
        :return:
        """
        # create a new file, make sure not to overwrite another
        filename = create_log_file_name(f'{self.metadata["model_config"]["plan"]["model_name"]}_{self.task_name}', 'jsonlines')
        print(f'Creating file {filename} for saving conversation')

        metadata = self.metadata.copy()
        now = str(datetime.now())
        day_now = now.split(' ')[0]
        metadata['date'] = day_now
        metadata['max_steps'] = max_steps

        prompts = dict()
        prompts['plan_prompt'] = self.get_plan_prompt()
        prompts['translate_prompt'] = self.get_translate_prompt()

        if directory == '':
            log_path = os.path.join(OUTPUT_DIR, filename)
        else:
            Path(os.path.join(OUTPUT_DIR, directory)).mkdir(exist_ok=True, parents=True)
            log_path = os.path.join(OUTPUT_DIR, directory, filename)
        with open(log_path, 'w') as log:
            # add all metadata / main information
            json.dump(metadata, log)
            log.write('\n')

            # add the prompts
            json.dump(prompts, log)
            log.write('\n')

        return log_path

    def write_log(self, text, text_type, executable=None):
        """

        :param text:
        :param text_type:
        :param executable:
        :return:
        """
        if self.log == "":
            return None

        with open(self.log, 'a') as log:
            data_point = {'text': text}
            if text_type == 'auto_state':
                data_point['type'] = 'World state'
            elif text_type == 'plan_model':
                data_point['type'] = 'Plan Model'
            elif text_type == 'translate_model':
                if self.translation_neural:
                    data_point['type'] = 'Translation Model'
                else:
                    data_point['type'] = 'RuleBased'
            elif text_type == 'similarity_model':
                data_point['type'] = 'Most Similar Action'
            elif text_type == 'env_feedback':
                data_point['type'] = 'Env Feedback'
            else:
                raise ValueError

            if executable is not None:
                data_point['executable'] = executable

            json.dump(data_point, log)
            log.write('\n')

        return None


    def get_next_instruction(self, debug=False, instr='') -> Tuple[bool, bool]:
        """
        This is the main function that takes care of the interaction of the planning model, the environment
        and the translation model
        :param debug:
        :param instr:
        :return:
        """


        if self.log_history:
            with open('./temp_log_history.txt', 'a') as f:
                f.write(f'{self.llm_plan.get_history()}\n')

        if self.observation == '':
            # generate initial state description
            self.observation = self.get_description_current_state()
            print(f'$SWorld: {self.observation} SWorld$')
            self.write_log(self.observation, 'auto_state')

        current_world = self.get_description_current_state()

        model_input = self.observation

        # generate instruction
        if debug:
            instruction = instr
        else:
            instruction = self.llm_plan.generate(model_input)
        print(f'$Model: {instruction} Model$')
        self.write_log(instruction, 'plan_model')

        if 'you are finished' in instruction.lower():
            return self.process_finished_message()

        # translate instruction
        if self.translation_neural:
            translation_output = self.llm_translate.generate(instruction)
        else:
            translation_output = self.text_to_plan(text=instruction)

        # output of the translation model can consist of several actions theoretically
        translation_output_list = translation_output.split('\n')
        # avoid problems is model adds empty lines between two steps
        translation_output_list = [tr_out for tr_out in translation_output_list if tr_out]
        assert len(translation_output_list) > 0

        observations, _ = self.try_execution(translation_output_list, current_world)
        self.observation = '\n'.join(observations)
        self.write_log(self.observation, 'env_feedback')

        return self.is_completed, False


    def process_finished_message(self):
        if self.check_goal_completion():
            aware = True
            self.observation = 'Great!'
        else:
            aware = False if self.not_finished_feedback else True  # if aware = True the generation stops
            goal_feedback = self.get_diff_to_goal_feedback()
            self.observation = goal_feedback

        self.write_log('---', 'translate_model')
        print(f'$World: {self.observation} $World')
        self.write_log(self.observation, 'env_feedback')

        return self.is_completed, aware

    @abstractmethod
    def _execute(self, translation_output: str) -> Tuple[str, bool, bool]:
        """

        :param translation_output:
        :return:
        """
        pass


    def find_best_candidate(self, translation_output: str, threshold=0.9):
        """
        Should be overwritten if using some kind of similarity measure
        :param translation_output:
        :param threshold:
        :return:
        """
        return translation_output


    def try_execution(self, translation_output_list: list, current_world_state: str) -> Tuple[list, bool]:
        """

        :param translation_output_list:
        :param current_world_state:
        :return:
        """
        observations = []
        executable = True
        for trans_output in translation_output_list:

            # pass to environment
            self.observation, executable, self.is_completed = self._execute(translation_output=trans_output)
            print(f'$Translated: {trans_output} Translated$')
            self.write_log(trans_output, 'translate_model', executable)

            if not executable:
                best_match_output = self.find_best_candidate(translation_output=trans_output)
                if best_match_output != trans_output:
                    self.observation, executable, self.is_completed = self._execute(translation_output=best_match_output)

                    print(f'$Matched: {best_match_output} Matched$')
                    self.write_log(trans_output, 'similarity_model', executable)

            # get subgoal_feedback and update progress
            subgoal_feedback = self.update_goal_progress()

            auto_state_feedback = ''

            new_world_state = self.get_description_current_state()
            if new_world_state != current_world_state:
                if self.provide_state:
                    auto_state_feedback = new_world_state
                    self.write_log(new_world_state, 'auto_state')

            complete_feedback = self.create_complete_feedback(executable=executable,
                                                              negative_feedback=self.observation,
                                                              positive_feedback=self.observation,
                                                              subgoal_feedback=subgoal_feedback,
                                                              auto_state_feedback=auto_state_feedback)
            self.observation = complete_feedback

            print(f'$SWorld: {self.observation} SWorld$')
            observations.append(self.observation)
            if not executable:
                break

        return observations, executable


    def create_complete_feedback(self, executable: bool, negative_feedback: str, positive_feedback: str,
                          subgoal_feedback: str, auto_state_feedback: str) -> str:
        """

        :param executable:
        :param negative_feedback:
        :param positive_feedback:
        :param subgoal_feedback:
        :param auto_state_feedback:
        :return:
        """
        if not executable:
            if self.negative_feedback == 'full':
                complete_feedback = negative_feedback
            elif self.negative_feedback == 'success':
                complete_feedback = 'This does not work.'
            elif self.negative_feedback == 'next':
                complete_feedback = 'Next.'
            else:
                raise NotImplementedError
            self.count_successive_fails += 1

        else:
            if self.positive_feedback == 'full':
                complete_feedback = positive_feedback
            elif self.positive_feedback == 'success':
                complete_feedback = 'Done.'
            elif self.positive_feedback == 'next':
                complete_feedback = 'Next.'
            else:
                raise NotImplementedError
            self.count_successive_fails = 0

            if self.subgoal_feedback:
                complete_feedback += f'\n\n{subgoal_feedback}'
            if self.provide_state:
                complete_feedback += f'\n\n{auto_state_feedback}'

        return complete_feedback


    def run_instructions_all(self, steps: int, break_limit: Union[None, int] = None, directory: str = '') -> bool:
        """

        :return:
        """
        if self.log == '':  # create new log file
            self.log = self.create_log(max_steps=steps, directory=directory)
        else:
            self.resume_log(max_steps=steps)  # write in previously created log file

        if self.log_history:
            with open('./temp_log_history.txt', 'w') as f:
                f.write(f'')

        if self.incremental:
            success = self.run_instructions_all_incremental(steps=steps, break_limit=break_limit)
        else:
            success = self.run_instructions_all_complete(attempts=break_limit)

        return success


    def run_instructions_all_incremental(self, steps=30, break_limit=None) -> bool:
        reached_goal = False    # becomes True if goal state is reached at any time
        success = False
        for i in range(steps):
            is_completed, is_aware = self.get_next_instruction()
            if is_completed:
                reached_goal = True
            if is_aware:    # is_aware is only True if the model predicts to be in the goal state when this is the case
                success = True
                break

            # Then it very likely got stuck and will not recover
            if self.count_successive_fails and self.count_successive_fails > break_limit:
                break

            # needed when running using openai API due to limit of requests per minute
            if self.llm_plan.model_param['model_name'].startswith('openai') or self.llm_translate.model_param[
                'model_name'].startswith('openai'):
                time.sleep(2)

        summary = {'success': success,
                   'reached_goal': reached_goal,
                   'executable': 'NA',
                   'n_steps': i + 1}
        for key, value in self.subgoals.items():
            summary[key] = value

        with open(self.log, 'a') as log:
            json.dump(summary, log)

        return success

    def text_to_plan(self, text: str) -> str:
        raise NotImplementedError

    def run_instructions_all_complete(self, attempts: int):

        attempt = 0
        reached_goal = False
        reached_goal_any_time = False
        success = False
        executable = False
        failing_step = None
        failed_action = None
        failing_message = None

        if attempts > 1:
            assert self.llm_plan.model.max_history > 0

        while attempt < attempts:
            if attempt == 0:
                # generate initial state description
                self.observation = self.get_description_current_state()
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
            plan = self.llm_plan.generate(self.observation)
            print(f'$Model: {plan} Model$')
            self.write_log(plan, 'plan_model')

            steps = plan.split('\n')
            # avoid problems if model adds empty lines between two steps
            steps = [st for st in steps if st]
            # translate plan
            translated_steps = []
            for step in steps:
                if step == '[PLAN END]':
                    break
                if self.translation_neural:
                    translated_step = self.llm_translate.generate(step)
                else:
                    translated_step = self.text_to_plan(step)
                translated_steps += translated_step.split('\n')


            print(f'$Translated: {translated_steps} Translated$')
            self.write_log(translated_steps, 'translate_model')

            # try to execute translated plan step by step
            for t_ind, t_step in enumerate(translated_steps):
                observations, executable = self.try_execution(translation_output_list = [t_step],
                                                              current_world_state='')
                if executable and self.check_goal_completion():
                    reached_goal_any_time = True
                elif not executable:
                    failing_step = t_ind
                    failed_action = t_step
                    failing_message = observations[0]
                    break

            if executable and self.check_goal_completion():
                reached_goal = True

            success = True if reached_goal else False
            attempt += 1

            if reached_goal:
                break



        summary = {'success': success,
                   'reached_goal': reached_goal_any_time,
                   'executable': executable,
                   'attempts': attempt}

        for key, value in self.subgoals.items():
            summary[key] = value

        with open(self.log, 'a') as log:
            json.dump(summary, log)

        return reached_goal


    def replay_from_log(self, log_file):

        actions_to_execute = []
        plan_output = []
        feedback = []
        first_auto_state_found = False
        with open(log_file, 'r') as log:
            for line in log:
                line_log = json.loads(line)
                if 'text' in line_log.keys():
                    if line_log['type'] == 'Translation Model' or \
                            line_log['type'] == 'RuleBased' or line_log['type'] == 'Most Similar Action':
                        actions_to_execute.append(line_log['text'])
                    elif line_log['type'] == 'Plan Model':
                        plan_output.append(line_log['text'])
                    elif line_log['type'] == 'Env Feedback':
                        feedback.append(line_log['text'])
                    elif line_log['type'] == 'World State' and not first_auto_state_found:
                        assert feedback == []
                        feedback.append(line_log['text'])
                        first_auto_state_found = True

        # get all translation outputs and pass them one after the other to the execution function
        for action_to_exec in actions_to_execute:
            print(f'$Executed Action: {action_to_exec} Executed Action$')
            self.observation, executable, is_completed = self._execute(action_to_exec)
            print(f'$Observation {self.observation} Observation$')

        assert len(plan_output) + 1 == len(feedback)
        # create the history for the planning llm
        plan_history = self.llm_plan.get_history()
        for interaction_id in range(len(plan_output)):
            model_input = feedback[interaction_id]
            model_output = plan_output[interaction_id]
            plan_history.append({'role': self.llm_plan.model.role_user, 'content': model_input})
            plan_history.append({'role': self.llm_plan.model.role_assistant, 'content': model_output})

        self.llm_plan.model.update_history(plan_history)
        self.llm_plan.model.update_history_length()

        if self.llm_translate.model.max_history > 0:
            print('Warning: Replay is not implemented for max_history > 0. max_hist of translation model will be treated as 0.')
