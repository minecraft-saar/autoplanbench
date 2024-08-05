import os
from datetime import datetime
import time
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
                 env_config: dict,
                 task_num: Union[int, str],
                 task_name: str,
                 translation_neural: bool,
                 incremental: bool,
                 positive_feedback: str,
                 negative_feedback: str,
                 subgoal_feedback: bool,
                 provide_state: bool,
                 not_finished_feedback: bool,
                 log_history: bool,
                 assert_cache: bool = False,
                 allow_multi_action: Union[None, bool] = True,
                 planning_approach: Union[str, None] = None
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
        :param allow_multi_action: whether to allow the model to generate multiple actions at once in the incremental set-up
                                if set to False, then instructions with several actions will raise a ValueError
        :param planning_approach: the type of the planning approach used, i.e. "planning_approach" from the config file;
                              only used for logging the approach to the output file, i.e. has essentially no effect
        """
        self.translation_neural = translation_neural
        self.subgoal_feedback = subgoal_feedback
        self.positive_feedback = positive_feedback
        self.negative_feedback = negative_feedback
        self.provide_state = provide_state
        self.task_num = task_num
        self.count_successive_fails = 0
        self.allow_multi_action = allow_multi_action

        self.examples_chat = llm_config['plan'].get('examples_chat', False)

        print("Initializing world state")
        self.env_config = env_config
        self.env = self.create_world_env(env_config)
        self.subgoals = self.get_goal_status()
        self.log_history = log_history
        self.incremental = incremental
        self.not_finished_feedback = not_finished_feedback
        self.assert_cache = assert_cache

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
                         'negative_feedback': negative_feedback,
                         'subgoal_feedback': subgoal_feedback,
                         'provide_state': provide_state,
                         'incremental': self.incremental,
                         'not_finished_feedback': self.not_finished_feedback,
                         'planning_approach': planning_approach
                         }

        self.summary_planning = self.reset_summary_planning()

        print("Getting LLMs")
        print('Getting Plan LLM')
        self.llm_plan = self.create_plan_llm(llm_config['plan'])
        print('Getting Translate LLM')
        self.llm_translate = self.create_trans_llm(llm_config['translate'])


    def reset_summary_planning(self):

        summary_planning = {'success': False,
                            'reached_goal': False,
                            'executable': 'NA',
                            'n_steps': 0,
                            'step_reached_goal_first': 'NA',
                            'stopping_reason': 'NA'}
        return summary_planning


    @abstractmethod
    def create_world_env(self, env_dict: dict):
        """
        Create an environment to simulate the world
        :param env_dict:
        :return:
        """
        pass


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


    # TODO: this is still under construction!!
    def create_examples_dict_incre_chat(self, llm_config: dict) -> dict:
        print(f'-------WARNING THIS FUNCTION WAS NOT TESTED ENOUGH YET ---------')
        try:
            with open(llm_config['examples_file'], 'r') as ef:
                examples_dict = json.load(ef)
        except KeyError:
            examples_dict = dict()

        if 'prefixes' not in examples_dict.keys():
            examples_dict['prefixes'] = {'input': '', 'output': ''}

        if 'pos_examples' not in examples_dict.keys():
            examples_dict['pos_examples'] = None
        else:
            reformatted = []
            for ex in examples_dict['pos_examples']:
                current_input = ''
                current_output = ''
                current_type = 'input'
                for line in ex[0].split('\n'):
                    if line.strip().startswith('You:'):
                        current_type = 'output'
                        line = line.replace('You:', '')

                    if line.strip().startswith('I:'):

                        if current_type == 'output':
                            reformatted.append({'input': current_input.strip(),
                                                'output': current_output.strip()})
                            current_input = ''
                            current_output = ''
                        current_type = 'input'
                        line = line.replace('I:', '')

                    processed_line = line.strip()
                    if not processed_line:
                        continue
                    if current_type == 'input':
                        current_input += processed_line + '\n'
                    elif current_type == 'output':
                        current_output += processed_line + '\n'

                if current_input and current_output:
                    reformatted.append({'input': current_input.strip(),
                                        'output': current_output.strip()})

            examples_dict['pos_examples'] = reformatted

        return examples_dict


    def create_plan_task_prompt(self, include_examples: bool, examples_dict: Union[dict, None] = None) -> str:
        """
        Create the initial / system prompt for the self.llm_plan
        :param include_examples:
        :param examples_dict:
        :return:
        """
        examples = examples_dict if examples_dict else self.llm_plan.examples_dict
        include_examples = include_examples
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
        include_examples = include_examples #if include_examples else not self.llm_translate.examples_chat
        template_args = self.create_trans_template_args(examples_dict=examples)
        template_args['include_examples'] = include_examples

        #if include_examples:
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


    @abstractmethod
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

    def resume_log(self, max_steps: int, break_limit: int):
        """

        :param max_steps:
        :param break_limit:
        :return:
        """
        now = str(datetime.now())
        day_now = now.split(' ')[0]
        print(f'Continuing to use {self.log} for saving conversation')
        with open(self.log, 'a') as log:
            json.dump({'continued': True, 'max_steps': max_steps, 'break_limit': break_limit , 'date': day_now}, log)
            log.write('\n')

        return None


    def create_log(self, max_steps: int, break_limit: int, break_limit_reached_goal: int, directory='') -> str:
        """

        :param max_steps:
        :param break_limit:
        :param break_limit_reached_goal:
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
        metadata['break_limit'] = break_limit
        metadata['break_limit_reached_goal'] = break_limit_reached_goal

        prompts = dict()
        prompts['plan_prompt'] = self.get_plan_prompt()
        if self.llm_plan.examples_chat:
            prompts['plan_example_hist'] = self.llm_plan.get_list_examples()
        prompts['translate_prompt'] = self.get_translate_prompt()
        if self.llm_translate.examples_chat:
            prompts['trans_example_hist'] = self.llm_translate.get_list_examples()

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
            if self.examples_chat:
                self.observation = f'{self.env.get_description_goal_state()}\n{self.observation}'
            print(f'$SWorld: {self.observation} SWorld$')
            self.write_log(self.observation, 'auto_state')

        current_world = self.get_description_current_state()

        model_input = self.observation

        # generate instruction
        if debug:
            instruction = instr
        else:
            instruction = self.llm_plan.generate(model_input, assert_cache=self.assert_cache)
        print(f'$Model: {instruction} Model$')
        self.write_log(instruction, 'plan_model')

        if 'you are finished' in instruction.lower():
            return self.process_finished_message()

        # translate instruction
        if self.translation_neural:
            print('Translating')
            translation_output = self.llm_translate.generate(instruction)
        else:
            translation_output = self.text_to_plan(text=instruction)

        # output of the translation model can consist of several actions theoretically
        translation_output_list = self.process_multi_action_translations(translation_output=translation_output)

        # avoid problems is model adds empty lines between two steps
        translation_output_list = [tr_out for tr_out in translation_output_list if tr_out]
        assert len(translation_output_list) > 0

        print('Executing')
        observations, _ = self.try_execution(translation_output_list, current_world)
        self.observation = '\n'.join(observations)
        self.write_log(self.observation, 'env_feedback')

        return self.is_completed, False


    def process_multi_action_translations(self, translation_output: str) -> List[str]:
        """
        Instructions, and hence translations, can theoretically consist of several steps at once
        -> need to be split into the individual actions for executing them
        :param translation_output:
        :return:
        """
        n_actions = translation_output.count('(')
        sep_chars = '\n'
        # check whether translation resulted in several actions
        if n_actions > 1 and not self.allow_multi_action:
            raise ValueError('LLM generated instructions consisting of several steps.')
        elif n_actions > 1: # find the chars, that are used to separate several outputs
            char_index = translation_output.index(')')
            char = ')'
            sep_chars = ''
            while char != '(':
                char_index += 1
                char = translation_output[char_index]
                sep_chars += char

            translation_output_list = translation_output.split(sep_chars)
        else:
            translation_output_list = [translation_output]
        return translation_output_list


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

            if not executable or trans_output == '(look-around)':
                self.count_successive_fails += 1
            else:
                self.count_successive_fails = 0


            print(f'$SWorld: {self.observation} SWorld$')
            observations.append(self.observation)
            if not executable:
                break

        return observations, executable


    def create_complete_feedback(self, executable: bool, negative_feedback: str, positive_feedback: str,
                          subgoal_feedback: str, auto_state_feedback: str) -> str:
        """
        Creates the feedback, i.e. the observation, for an individual action
        :param executable: whether feedback is for an executable or a not executable action
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
            elif self.negative_feedback == 'pddl':
                complete_feedback = 'The action is not applicable in the current state.'
            else:
                raise NotImplementedError

        else:
            if self.positive_feedback == 'full':
                complete_feedback = positive_feedback
            elif self.positive_feedback == 'success':
                complete_feedback = 'Done.'
            elif self.positive_feedback == 'next':
                complete_feedback = 'Next.'
            elif self.positive_feedback == 'pddl':
                complete_feedback = 'Action was successfully executed.'
            else:
                raise NotImplementedError

            if self.subgoal_feedback:
                complete_feedback += f'\n\n{subgoal_feedback}'
            if self.provide_state:
                complete_feedback += f'\n\n{auto_state_feedback}'

        return complete_feedback


    def create_feedback_complete_plan(self,
                                      predicted_plan: list,
                                      translated_plan: list,
                                      failed_step: int,
                                      failed_feedback: str) -> str:
        """
        Generate feedback for a complete plan that is not executable
        :param predicted_plan: the complete predicted plan
        :param translated_plan: the complete translated plan
        :param failed_step: the position of the first action that is not executable
        :param failed_feedback: the observation / feedback from trying to execute the action that is not executable
        :return:
        """
        failed_action = predicted_plan[failed_step]
        feedback_plan = f'This plan is not a valid plan for my task because ' \
                                f'the action {failed_action} in step {failed_step} cannot be executed:\n' \
                                f'{failed_feedback}\n Please provide the complete corrected plan.'

        return feedback_plan


    def create_feedback_complete_executable_plan(self,
                                                 reached_goal: bool) -> str:
        """
        Generate feedback for a complete plan that is executable and
        1) reaches the goal
        or
        2) does not reach the goal
        :param reached_goal:
        :return:
        """
        if reached_goal:
            feedback = 'Great, the plan is correct and I successfully reached the goal.'

        else:
            feedback = f'This plan is not correct. I successfully executed all steps but have not reached my goal. \n{self.get_diff_to_goal_feedback()} \nPlease provide the complete corrected plan.'

        return feedback


    def run_instructions_all(self,
                             steps: int,
                             break_limit: Union[None, int] = None,
                             break_limit_reached_goal: Union[None, int]=None,
                             directory: str = '') -> bool:
        """

        :return:
        """
        if self.log == '':  # create new log file
            self.log = self.create_log(max_steps=steps, break_limit=break_limit, break_limit_reached_goal=break_limit_reached_goal, directory=directory)
        else:
            self.resume_log(max_steps=steps, break_limit=break_limit)  # write in previously created log file

        if self.log_history:
            with open('./temp_log_history.txt', 'w') as f:
                f.write(f'')
        start_time = time.time()

        if self.incremental:
            success = self.run_instructions_all_incremental(steps=steps, break_limit=break_limit, break_limit_reached_goal=break_limit_reached_goal)
        else:
            success = self.run_instructions_all_complete(attempts=break_limit)

        end_time = time.time()
        total_time = end_time - start_time

        self.log_planning_summary()
        self.log_time_and_token(measured_time=total_time)

        return success

    def log_planning_summary(self):

        for key, value in self.subgoals.items():
            self.summary_planning[key] = value

        with open(self.log, 'a') as log:
            json.dump(self.summary_planning, log)


    def log_time_and_token(self, measured_time):

        log_data = {'total_time': measured_time,
                    'total_input_tokens': self.llm_plan.model.total_input_tokens if self.llm_plan.model.total_input_tokens != 0 else None,
                    'total_output_tokens': self.llm_plan.model.total_output_tokens if self.llm_plan.model.total_output_tokens != 0 else None,
                    'total_tokens': self.llm_plan.model.total_tokens if self.llm_plan.model.total_tokens != 0 else None,
                    'max_input_tokens': self.llm_plan.model.max_input_tokens if self.llm_plan.model.max_input_tokens != 0 else None,
                    'max_output_tokens': self.llm_plan.model.max_output_tokens if self.llm_plan.model.max_output_tokens != 0 else None,
                    'max_tokens': self.llm_plan.model.max_total_tokens if self.llm_plan.model.max_total_tokens != 0 else None}

        with open(self.log, 'a') as log:
            log.write('\n')
            json.dump(log_data, log)


    def run_instructions_all_incremental(self, steps=30, break_limit=None, break_limit_reached_goal=1) -> bool:
        """

        :param steps:
        :param break_limit:
        :param break_limit_reached_goal:
        :return:
        """
        steps_reached_goal = []
        success = False
        self.summary_planning['stopping_reason'] = 'step_limit'
        for i in range(steps):

            is_completed, is_aware = self.get_next_instruction()
            self.summary_planning['n_steps'] += 1
            if is_completed:
                self.summary_planning['reached_goal'] = True
                if not steps_reached_goal:
                    self.summary_planning['step_reached_goal_first'] = self.summary_planning['n_steps']
                steps_reached_goal.append(self.summary_planning['n_steps'])

            # Stopping Criteria
            if is_aware:    # is_aware is only True if the model predicts to be in the goal state when this is the case
                success = True
                self.summary_planning['success'] = True
                self.summary_planning['stopping_reason'] = 'success'
                break
            if break_limit_reached_goal and len(steps_reached_goal) > break_limit_reached_goal:
                self.summary_planning['stopping_reason'] = 'limit_reached_goal'
                break
            # Then it very likely got stuck and will not recover
            if self.count_successive_fails and self.count_successive_fails > break_limit:
                self.summary_planning['stopping_reason'] = 'limit_not_executable'
                break

            # needed when running using openai API due to limit of requests per minute
            if self.llm_plan.model_param['model_name'].startswith('openai') or self.llm_translate.model_param[
                'model_name'].startswith('openai'):
                time.sleep(2)


        return success

    @abstractmethod
    def text_to_plan(self, text: str) -> str:
        pass

    def run_instructions_all_complete(self, attempts: int, batching: bool = False):
        success = False

        if attempts > 1:
            assert self.llm_plan.model.max_history > 0

        for attempt in range(attempts):
            if attempt == 0:
                # generate initial state description
                self.observation = self.get_description_current_state()
                if self.examples_chat:
                    self.observation = f'{self.env.get_description_goal_state()}\n{self.observation}'
                print(f'$SWorld: {self.observation} SWorld$')
                self.write_log(self.observation, 'auto_state')

            # pass as input to planning model
            plan = self.llm_plan.generate(self.observation, assert_cache=self.assert_cache)
            if batching:
                return self.llm_plan

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

            reached_goal_any_time, step_reached_goal_first, success, executable, observation = self.process_complete_pred_plan(
                predicted_plan=steps,
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

    def process_complete_pred_plan(self, predicted_plan: list, translated_plan: list):
        """

        :param predicted_plan:
        :param translated_plan:
        :return:
        """
        reached_goal_any_time = False
        step_reached_goal = []
        executable_plan = True
        reached_goal = False
        observation = ''

        # try to execute translated plan step by step
        for step, action in enumerate(translated_plan):
            observation, executable = self.try_execution(translation_output_list=[action],
                                                         current_world_state='')
            if executable and self.check_goal_completion():
                reached_goal_any_time = True
                step_reached_goal.append(step + 1)

            elif not executable:
                executable_plan = False
                observation = self.create_feedback_complete_plan(predicted_plan=predicted_plan,
                                                                 translated_plan=translated_plan,
                                                                 failed_step=step,
                                                                 failed_feedback=observation[0])
                break

        if executable_plan and self.check_goal_completion():
            reached_goal = True
        if executable_plan:
            observation = self.create_feedback_complete_executable_plan(reached_goal=reached_goal)

        if step_reached_goal:
            step_reached_goal_first = step_reached_goal[0]
        else:
            step_reached_goal_first = 'NA'
        return reached_goal_any_time, step_reached_goal_first, reached_goal, executable_plan, observation


    def replay_from_log(self, log_file):
        """
        Overwrite if log output format changes
        :param log_file:
        :return:
        """
        actions_to_execute = []
        plan_output = []
        feedback = []
        first_auto_state_found = False
        translate_prompt = None
        plan_prompt = None

        # TODO
        if self.examples_chat:
            raise NotImplementedError

        with open(log_file, 'r') as log:
            for line in log:
                line_log = json.loads(line)

                if 'plan_prompt' in line_log.keys():
                    plan_prompt = line_log['plan_prompt']
                    translate_prompt = line_log['translate_prompt']

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

        assert translate_prompt is not None
        assert plan_prompt is not None

        self.llm_plan.update_initial_prompt(new_init_prompt=plan_prompt)
        self.llm_translate.update_initial_prompt(new_init_prompt=translate_prompt)

        # get all translation outputs and pass them one after the other to the execution function
        for (model_out, action_to_exec) in zip(plan_output, actions_to_execute):
            print(f'$Model Output: {model_out} Model Output$')
            print(f'$Executed Action: {action_to_exec} Executed Action$')
            self.observation, executable, is_completed = self._execute(action_to_exec)
            print(f'$Observation {self.observation} Observation$')

        assert len(plan_output) == len(feedback)
        # create the history for the planning llm
        plan_history = self.llm_plan.get_history()
        for interaction_id in range(len(plan_output)):
            model_input = feedback[interaction_id]
            model_output = plan_output[interaction_id]
            plan_history.append({'role': self.llm_plan.model.role_user, 'content': model_input})
            plan_history.append({'role': self.llm_plan.model.role_assistant, 'content': model_output})

        self.llm_plan.model.update_history(plan_history)
        self.llm_plan.model.update_history_length()

        self.summary_planning['n_steps'] = len(plan_output)

        if self.llm_translate.model.max_history > 0:
            print('Warning: Replay is not implemented for max_history > 0. max_hist of translation model will be treated as 0.')
