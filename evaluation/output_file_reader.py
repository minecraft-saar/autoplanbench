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
        # TODO steps vs. attempts
        self.steps = None
        self.attempts = None
        self.step_limit = None
        self.predicted_plan = []
        self.executable_actions = []
        self.incremental_data = dict()

        if self.is_complete_plan:
            self.read_basic_instance()
        else:
            self.read_incremental_instance()


    def read_basic_instance(self):

        last_line = self.instance_data[-1]

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
                    self.predicted_plan = predicted_plan_str.split('\n')
                    try:
                        self.predicted_plan.remove('[PLAN END]')
                    except ValueError:
                        print(f'Plan without "[PLAN END]" ending tag in file {self.generated_plan_path}.')

                elif entry['type'] == 'Translation Model':
                    if isinstance(entry['text'], list):
                        all_translations = entry['text']
                        for trans in all_translations:
                            if not trans.startswith('('):
                                print(f"Check file {self.generated_plan_path} for missing translations")
                    else:
                        if entry['executable']:
                            self.executable_actions.append(entry['text'])

        self.successful = last_line['success']
        self.reached_goal = last_line['reached_goal']
        self.executable = last_line['executable']
        self.steps = last_line['attempts']



    def read_incremental_instance(self):
        last_line = self.instance_data[-1]

        prev_entry_mistake = False
        incremental_data = {'mistakes': 0,
                          'look_arounds': 0,
                          'look_arounds_after_mistake': 0,
                          'first_mistake_execution': False,
                          'wrong_finished_prediction': 0}

        for entry in self.instance_data:

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

                elif entry_type == 'Translation Model':
                    executable = entry.get('executable', False)
                    if not 'look' in entry['text']:
                        self.predicted_plan.append(entry['text'])
                    if executable and not 'look' in entry['text']:
                        self.executable_actions.append(entry['text'])

            elif 'task' in entry.keys():
                self.task_num = entry['task']['task_num']
                self.step_limit = entry['max_steps']
                self.example_file = entry['model_config']['plan']['examples_file']

            if 'incremental' in entry.keys():
                assert entry['incremental']

        self.successful = last_line['success']
        self.reached_goal = last_line['reached_goal']
        self.steps = last_line['n_steps']

        self.incremental_data = incremental_data


def read_gold_plan(gold_plan_dir: str, task_num: int) -> list:

    gold_plan_file = os.path.join(gold_plan_dir, f'instance-{task_num}_gold_plan.txt')

    gold_actions = read_plan_from_file(pddl_plan_file=gold_plan_file)

    return gold_actions

def read_plan_from_file(pddl_plan_file: str) -> list:

    actions = []
    with open(pddl_plan_file, 'r') as f:
        for line in f.readlines():
            if line.startswith('('):
                actions.append(line.strip())

    return actions

def check_completeness_run(generated_plan_file: str) -> bool:

    interaction_data = []
    with open(generated_plan_file, 'r') as f:
        for line in f:
            interaction_data.append(json.loads(line))

    last_line = interaction_data[-1]
    completed_run = True if 'success' in last_line.keys() else False
    if not completed_run:
        print(f'Not complete: {generated_plan_file}')
        return False
    else:
        return True
