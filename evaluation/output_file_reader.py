import os
import json
from pathlib import Path

class PlannerOutputReader:

    def __init__(self,
                 generated_plan_path: str,
                 is_complete_plan: bool):

        self.generated_plan_path = generated_plan_path
        self.is_complete_plan = is_complete_plan

        self.instance_data = []
        with open(generated_plan_path, 'r') as f:
            for line in f:
                self.instance_data.append(json.loads(line))

        self.task_num = None
        self.example_file = None
        self.successful = None
        self.reached_goal = None
        self.executable = None
        self.steps = None
        self.step_limit = None
        self.step_reached_goal = None
        self.stopping_reason = 'NA'
        self.time_token_data = dict()

        self.predicted_plan = []
        self.executable_actions = []
        self.executable_actions_to_goal = []
        self.incremental_data = dict()

        if self.is_complete_plan:
            self.read_basic_instance()
        else:
            self.read_incremental_instance()


    def read_basic_instance(self):
        executable_actions = []
        for entry in self.instance_data:

            if 'task' in entry.keys():
                config_data = entry
                self.task_num = config_data['task']['task_num']
                self.example_file = entry['model_config']['plan']['examples_file']

            if 'incremental' in entry.keys():
                assert not entry['incremental']

            if 'type' in entry.keys():
                if entry['type'] == 'Plan Model':
                    predicted_plan_str = entry['text']
                    predicted_plan_split = predicted_plan_str.split('\n')
                    try:
                        predicted_plan_split.remove('[PLAN END]')
                    except ValueError:
                        print(f'Plan without "[PLAN END]" ending tag in file {self.generated_plan_path}.')

                elif entry['type'] == 'Translation Model' or entry['type'] == 'RuleBased':
                    if isinstance(entry['text'], list):
                        predicted_plan = entry['text']
                        self.predicted_plan = predicted_plan
                        for trans in predicted_plan:
                            if not trans.startswith('('):
                                print(f"Check file {self.generated_plan_path} for missing translations")
                    else:
                        if entry['executable']:
                            executable_actions.append(entry['text'])
                        else:
                            executable_actions.append('NOTEXEC')

            if 'success' in entry.keys():
                self.successful = entry['success']
                self.reached_goal = entry['reached_goal']
                self.executable = entry['executable']
                self.stopping_reason = entry.get('stopping_reason', 'NA')
                self.step_reached_goal = entry.get('step_reached_goal_first', 'NA')
                try:
                    self.steps = entry['n_steps']
                except KeyError:
                    self.steps = entry['attempts']

                #self.steps = len(executable_actions)

            if 'total_time' in entry.keys():
                self.time_token_data = entry

        if self.step_reached_goal != 'NA' and self.step_reached_goal is not None:
            steps_until_goal = executable_actions[:self.step_reached_goal]
            self.executable_actions_to_goal = [ac for ac in steps_until_goal if ac != 'NOTEXEC']

        self.executable_actions = [ac for ac in executable_actions if ac != 'NOTEXEC']


    def read_incremental_instance(self):

        prev_entry_mistake = False
        incremental_data = {'mistakes': 0,
                          'look_arounds': 0,
                          'look_arounds_after_mistake': 0,
                          'first_mistake_execution': False,
                          'wrong_finished_prediction': 0}
        executable_actions = []

        for entry in self.instance_data:

            if 'incremental' in entry.keys():
                assert entry['incremental']

            if 'type' in entry.keys():
                entry_type = entry['type']

                if entry_type == 'Plan Model' and 'look around' in entry['text'].lower():
                    incremental_data['look_arounds'] += 1
                    if prev_entry_mistake:
                        incremental_data['look_arounds_after_mistakes'] += 1
                    prev_entry_mistake = False

                if entry_type == 'Env Feedback' and ('not' in entry['text'] or 'cannot' in entry['text']):

                    if 'not finished' in entry['text']:
                        incremental_data['wrong_finished_prediction'] += 1
                    elif incremental_data['mistakes'] == 0:
                        incremental_data['first_mistake_execution'] = True

                    incremental_data['mistakes'] += 1

                elif entry_type == 'Env Feedback':
                    prev_entry_mistake = False

                elif entry_type == 'Translation Model' or entry_type == 'RuleBased':
                    executable = entry.get('executable', False)
                    if not 'look' in entry['text']:
                        self.predicted_plan.append(entry['text'])
                    if executable and not 'look' in entry['text']:
                        executable_actions.append(entry['text'])
                    else:
                        executable_actions.append('NOTEXEC')

            if 'task' in entry.keys():
                self.task_num = entry['task']['task_num']
                self.step_limit = entry['max_steps']
                self.example_file = entry['model_config']['plan']['examples_file']

            if 'success' in entry.keys():
                self.successful = entry['success']
                self.reached_goal = entry['reached_goal']
                self.executable = entry['executable']
                self.steps = entry['n_steps']
                self.stopping_reason = entry.get('stopping_reason', 'NA')
                self.step_reached_goal = entry.get('step_reached_goal_first', 'NA')

            if 'total_time' in entry.keys():
                self.time_token_data = entry

        if self.step_reached_goal != 'NA' and self.step_reached_goal is not None:
            steps_until_goal = executable_actions[:self.step_reached_goal]
            self.executable_actions_to_goal = [ac for ac in steps_until_goal if ac != 'NOTEXEC']

        self.executable_actions = [ac for ac in executable_actions if ac != 'NOTEXEC']

        self.incremental_data = incremental_data


def check_completeness_run(generated_plan_file: str) -> bool:

    logged_summary = False
    openai_error = False
    stopping_reason = None
    with open(generated_plan_file, 'r') as f:
        for line in f:
            entry = json.loads(line)
            if 'success' in entry.keys():
                logged_summary = True
                stopping_reason = entry.get('stopping_reason', None)
            if 'Failed' in entry.keys():
                openai_error = True

    if logged_summary and not openai_error:
        completed_run = True
    elif stopping_reason is not None and stopping_reason == 'reached_token_limit':
        completed_run = True
    else:
        completed_run = False

    if not completed_run:
        print(f'Not complete: {generated_plan_file}')
        return False
    else:
        return True
