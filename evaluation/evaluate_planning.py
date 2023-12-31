import json
import os
from pathlib import Path
from typing import Union
from collections import Counter
from argparse import ArgumentParser


class PlanEvaluator:

    def __init__(self,
                 generated_plans_path: str,
                 evaluation_results_file: str,
                 gold_plan_dir: Union[str, None],
                 is_complete_plan: bool = False
                 ):

        self.generated_plans_path = generated_plans_path
        self.evaluation_results_file = evaluation_results_file
        self.gold_plan_dir = gold_plan_dir
        self.is_complete_plan = is_complete_plan

        eval_res_dir, eval_file = os.path.split(evaluation_results_file)
        Path(eval_res_dir).mkdir(exist_ok=True, parents=True)

        # Information extracted for all instances
        self.instance_results = {
            'task_ids': [],                         # int
            'solved_successfully': [],              # bool
            'n_mistakes': [],                       # int
            'solved_without_mistake': [],           # bool
            'reached_goal_without_stopping': [],    # bool
            'predicted_goal_erroneously': [],       # bool
            'unsuccessful_bec_not_reached_goal': [],# bool
            'unsuccessful_bec_not_executable': [],  # bool
            'unsuccessful_bec_not_recog_goal': [],    # bool
            'look_arounds': [],                     # int
            'look_arounds_after_mistake': [],       # int
            'interaction_length': [],               # int
            'successful_plan_length': [],           # int
            'successful_interaction_length': [],    # int
            'optimal_plan_length': [],              # int
            'factor_plan_length': [],               # float
            'reached_step_limit_wo_mistake': [],    # bool
            'reached_break_limit_earlier': [],      # bool
        }
        # Results taken together from all instances
        self.eval_results = {
            'n_instances': 0,
            'n_solved_successfully': 0,
            'accuracy': 0.0,
            'n_solved_without_mistake': 0,
            'accuracy_no_mistakes': 0.0,
            'avg_factor_plan_length': 0.0,
            'n_reached_goal_without_stopping': 0,
            'n_predicted_goal_erroneously': 0,
            'unsuccessful_bec_not_reached_goal': 0,
            'unsuccessful_bec_not_executable': 0,
            'unsuccessful_bec_not_recog_goal': 0,
            'n_look_arounds': 0,
            'n_look_arounds_after_mistakes': 0,
            'avg_interaction_length': 0.0,
            'avg_optimal_plan_length': 0.0,
            'avg_length_successful_interactions': 0.0,
            'avg_length_unsuccessful_interactions': 0.0,
            'n_reached_step_limit_wo_mistake': 0,
            'n_reached_break_limit_earlier': 0,
            'avg_length_executable_plans': 0.0,
            'successful_tasks': [],
            'successful_tasks_without_mistakes': [],
            'unsuccessful_tasks': [],
            'successful_tasks_with_mistakes': []
        }

    def run_evaluation(self):

        self.evaluate_all_outputs()

        n_tasks = len(self.instance_results['task_ids'])
        for value in self.instance_results.values():
            assert len(value) == n_tasks or len(value) == 0

        return self.create_evaluation_overview()


    def create_evaluation_overview(self):
        n_instances = len(self.instance_results['task_ids'])
        self.eval_results['n_instances'] = n_instances
        self.eval_results['n_solved_successfully'] = self.instance_results['solved_successfully'].count(True)
        self.eval_results['n_solved_without_mistake'] = self.instance_results['n_mistakes'].count(0)

        self.eval_results['accuracy'] = self.eval_results['n_solved_successfully'] / self.eval_results['n_instances']
        self.eval_results['accuracy_no_mistakes'] = self.eval_results['n_solved_without_mistake'] / self.eval_results['n_instances']

        self.eval_results['n_reached_goal_without_stopping'] = self.instance_results['reached_goal_without_stopping'].count(True)
        self.eval_results['unsuccessful_bec_not_reached_goal'] = self.instance_results['unsuccessful_bec_not_reached_goal'].count(True)
        self.eval_results['unsuccessful_bec_not_executable'] = self.instance_results['unsuccessful_bec_not_executable'].count(True)
        self.eval_results['unsuccessful_bec_not_recog_goal'] = self.instance_results['unsuccessful_bec_not_recog_goal'].count(True)

        self.eval_results['n_predicted_goal_erroneously'] = self.instance_results['predicted_goal_erroneously'].count(
            True) if not self.is_complete_plan else 'NA'
        self.eval_results['n_look_arounds'] = sum(self.instance_results['look_arounds']) if not self.is_complete_plan else 'NA'
        self.eval_results['n_look_arounds_after_mistakes'] = sum(self.instance_results['look_arounds_after_mistake']) if not self.is_complete_plan else 'NA'
        self.eval_results['n_reached_step_limit_wo_mistake'] = sum(self.instance_results['reached_step_limit_wo_mistake']) if not self.is_complete_plan else 'NA'
        self.eval_results['n_reached_break_limit_earlier'] = sum(self.instance_results['reached_break_limit_earlier']) if not self.is_complete_plan else 'NA'

        self.eval_results['avg_optimal_plan_length'] = sum(self.instance_results['optimal_plan_length']) / n_instances
        self.eval_results['avg_interaction_length'] = sum(self.instance_results['interaction_length']) / n_instances

        successful_plan_lengths = [pl for pl in self.instance_results['successful_plan_length'] if pl != -1]
        successful_interaction_lengths = [pl for pl in self.instance_results['successful_interaction_length'] if pl != -1]
        factor_plan_lengths = [f_pl for f_pl in self.instance_results['factor_plan_length'] if f_pl != -1]
        try:
            self.eval_results['avg_length_executable_plans'] = sum(successful_plan_lengths) / len(successful_plan_lengths)
        except ZeroDivisionError:
            self.eval_results['avg_length_executable_plans'] = 0
        try:
            self.eval_results['avg_factor_plan_length'] = sum(factor_plan_lengths) / len(factor_plan_lengths)
        except ZeroDivisionError:
            self.eval_results['avg_factor_plan_length'] = 0
        try:
            self.eval_results['avg_length_successful_interactions'] = sum(successful_interaction_lengths) / len(successful_interaction_lengths)
        except ZeroDivisionError:
            self.eval_results['avg_length_successful_interactions'] = 0

        lengths_successful_tasks = []
        lengths_unsuccessful_tasks = []
        for instance_index, instance_id in enumerate(self.instance_results['task_ids']):
            successful = self.instance_results['solved_successfully'][instance_index]
            if successful:
                self.eval_results['successful_tasks'].append(instance_id)
            else:
                self.eval_results['unsuccessful_tasks'].append(instance_id)
            if self.instance_results['n_mistakes'][instance_index] == 0 and successful:
                self.eval_results['successful_tasks_without_mistakes'].append(instance_id)
            elif successful:
                self.eval_results['successful_tasks_with_mistakes'].append(instance_id)
            if successful:
                lengths_successful_tasks.append(self.instance_results['interaction_length'][instance_index])
            else:
                lengths_unsuccessful_tasks.append(self.instance_results['interaction_length'][instance_index])
        try:
            checking_length_comp = sum(lengths_successful_tasks) / len(lengths_successful_tasks)
        except ZeroDivisionError:
            checking_length_comp = 0
        assert self.eval_results['avg_length_successful_interactions'] == checking_length_comp
        try:
            self.eval_results['avg_length_unsuccessful_interactions'] = sum(lengths_unsuccessful_tasks) / len(lengths_unsuccessful_tasks)
        except ZeroDivisionError:
            self.eval_results['avg_length_unsuccessful_interactions'] = 0

        self.eval_results['successful_tasks'].sort()
        self.eval_results['successful_tasks_without_mistakes'].sort()
        self.eval_results['unsuccessful_tasks'].sort()
        self.eval_results['successful_tasks_with_mistakes'].sort()

        with open(self.evaluation_results_file, 'w') as f:
            f.write(f'Source\t{self.generated_plans_path}\n')
            for key, value in self.eval_results.items():
                if key.startswith('avg') or key.startswith('accuracy'):
                    value = round(value, 6)
                f.write(f'{key}\t{value}\n')

        print(f'EVALUATION OF {self.generated_plans_path}:')
        for key, value in self.eval_results.items():
            print(f'{key}: {value}')
        print(f'\n')

        return self.eval_results['n_reached_step_limit_wo_mistake'], self.eval_results['n_reached_break_limit_earlier']



    def evaluate_basic_instance(self, generated_plan_file: str):
        """

        :param generated_plan_file:
        :return:
        """
        instance_data = []
        with open(generated_plan_file, 'r') as f:
            for line in f:
                instance_data.append(json.loads(line))

        for entry in instance_data:

            if 'task' in entry.keys():
                config_data = entry
                task_num = config_data['task']['task_num']
                self.instance_results['task_ids'].append(task_num)

            if 'incremental' in entry.keys():
                assert not entry['incremental']

            if 'type' in entry.keys():
                if entry['type'] == 'Plan Model':
                    predicted_plan_str = entry['text']
                    predicted_plan = predicted_plan_str.split('\n')
                    try:
                        predicted_plan.remove('[PLAN END]')
                    except ValueError:
                        print(f'Plan without "[PLAN END]" ending tag in file {generated_plan_file}.')

                else:
                    if isinstance(entry['text'], list):
                        all_translations = entry['text']
                        for trans in all_translations:
                            if not trans.startswith('('):
                                print(f"Check file {generated_plan_file} for missing translations")

        last_line = instance_data[-1]

        successful = last_line['success']
        reached_goal = last_line['reached_goal']
        executable = last_line['executable']
        steps = last_line['attempts']

        self.instance_results['solved_successfully'].append(successful)
        self.instance_results['interaction_length'].append(steps)

        if reached_goal and not successful and executable:
            self.instance_results['unsuccessful_bec_not_recog_goal'].append(True)
            self.instance_results['reached_goal_without_stopping'].append(True)
        else:
            self.instance_results['unsuccessful_bec_not_recog_goal'].append(False)
            self.instance_results['reached_goal_without_stopping'].append(False)

        if executable and not reached_goal:
            self.instance_results['unsuccessful_bec_not_reached_goal'].append(True)
        else:
            self.instance_results['unsuccessful_bec_not_reached_goal'].append(False)

        if not executable:
            self.instance_results['unsuccessful_bec_not_executable'].append(True)
        else:
            self.instance_results['unsuccessful_bec_not_executable'].append(False)

        optimal_plan = self.get_gold_plan(task_num=task_num)
        len_optimal_plan = len(optimal_plan)
        len_predicted_plan = len(predicted_plan)

        self.instance_results['optimal_plan_length'].append(len_optimal_plan)

        if successful:
            self.instance_results['n_mistakes'].append(0)
            factor_length = len_predicted_plan / len_optimal_plan
            self.instance_results['factor_plan_length'].append(round(factor_length, 6))
            self.instance_results['successful_plan_length'].append(len_predicted_plan)
            self.instance_results['successful_interaction_length'].append(steps)
        else:
            self.instance_results['n_mistakes'].append(1)
            self.instance_results['factor_plan_length'].append(-1)
            self.instance_results['successful_plan_length'].append(-1)
            self.instance_results['successful_interaction_length'].append(-1)


    def evaluate_incremental_instance(self, generated_plan_file: str):
        """

        :param generated_plan_file:
        :return:
        """
        interaction_data = []
        with open(generated_plan_file, 'r') as f:
            for line in f:
                interaction_data.append(json.loads(line))

        mistakes = 0
        look_arounds = 0
        look_arounds_after_mistakes = 0
        prev_entry_mistake = False
        first_mistake_execution = False
        wrong_finished_prediction = 0
        executable_actions = 0

        last_line = interaction_data[-1]

        completed_run = True if 'success' in last_line.keys() else False
        if not completed_run:
            return

        for entry in interaction_data:

            if 'type' in entry.keys():
                entry_type = entry['type']

                if entry_type == 'Plan Model' and 'look around' in entry['text'].lower():
                    look_arounds += 1
                    if prev_entry_mistake:
                        look_arounds_after_mistakes += 1
                    prev_entry_mistake = False

                if entry_type == 'Env Feedback' and ('not' in entry['text'] or 'cannot' in entry['text']):

                    if 'not finished' in entry['text']:
                        wrong_finished_prediction += 1
                    elif mistakes == 0:
                        first_mistake_execution = True

                    mistakes += 1

                elif entry_type == 'Env Feedback':
                    prev_entry_mistake = False

                elif entry_type == 'Translation Model':
                    executable = entry.get('executable', False)
                    if executable and not 'look' in entry['text']:
                        executable_actions += 1

            elif 'task' in entry.keys():
                task_num = entry['task']['task_num']
                self.instance_results['task_ids'].append(task_num)
                step_limit = entry['max_steps']

            if 'incremental' in entry.keys():
                assert entry['incremental']


        self.instance_results['look_arounds'].append(look_arounds)
        self.instance_results['look_arounds_after_mistake'].append(look_arounds_after_mistakes)
        self.instance_results['n_mistakes'].append(mistakes)

        successful = last_line['success']
        reached_goal = last_line['reached_goal']
        steps = last_line['n_steps']

        self.instance_results['solved_successfully'].append(successful)
        self.instance_results['interaction_length'].append(steps)

        if reached_goal and not successful and mistakes == 0:
            self.instance_results['unsuccessful_bec_not_recog_goal'].append(True)
        else:
            self.instance_results['unsuccessful_bec_not_recog_goal'].append(False)

        if reached_goal and not successful:
            self.instance_results['reached_goal_without_stopping'].append(True)
        else:
            self.instance_results['reached_goal_without_stopping'].append(False)

        if mistakes == 0 and successful:
            self.instance_results['solved_without_mistake'].append(True)
        else:
            self.instance_results['solved_without_mistake'].append(False)

        if mistakes == 0 and not reached_goal:
            self.instance_results['unsuccessful_bec_not_reached_goal'].append(True)
        else:
            self.instance_results['unsuccessful_bec_not_reached_goal'].append(False)

        if first_mistake_execution:
            self.instance_results['unsuccessful_bec_not_executable'].append(True)
        else:
            self.instance_results['unsuccessful_bec_not_executable'].append(False)

        if wrong_finished_prediction:
            self.instance_results['predicted_goal_erroneously'].append(True)
        else:
            self.instance_results['predicted_goal_erroneously'].append(False)

        gold_plan = self.get_gold_plan(task_num=task_num)
        optimal_plan_length = len(gold_plan)

        self.instance_results['optimal_plan_length'].append(optimal_plan_length)


        if successful:
            self.instance_results['successful_interaction_length'].append(steps)
            factor_length = executable_actions / optimal_plan_length
            self.instance_results['factor_plan_length'].append(round(factor_length, 6))
            self.instance_results['successful_plan_length'].append(executable_actions)
        else:
            self.instance_results['successful_interaction_length'].append(-1)
            self.instance_results['factor_plan_length'].append(-1)
            self.instance_results['successful_plan_length'].append(-1)

        if mistakes == 0 and not successful and not reached_goal:
            self.instance_results['reached_step_limit_wo_mistake'].append(True)
        else:
            self.instance_results['reached_step_limit_wo_mistake'].append(False)
        if not successful and steps < step_limit:
            self.instance_results['reached_break_limit_earlier'].append(True)
        else:
            self.instance_results['reached_break_limit_earlier'].append(False)



    def get_gold_plan(self, task_num):

        gold_plan_file = os.path.join(self.gold_plan_dir, f'instance-{task_num}_gold_plan.txt')

        gold_actions = []
        with open(gold_plan_file, 'r') as f:
            for line in f.readlines():
                if line.startswith('('):
                    gold_actions.append(line.strip())

        return gold_actions


    def evaluate_all_outputs(self):
        """

        :return:
        """
        if os.path.isfile(self.generated_plans_path):
            if self.is_complete_plan:
                self.evaluate_basic_instance(os.path.join(self.generated_plans_path))
            else:
                self.evaluate_incremental_instance(self.generated_plans_path)
        else:
            for file in os.listdir(self.generated_plans_path):
                if not os.path.isfile(os.path.join(self.generated_plans_path, file)):
                    continue

                if self.is_complete_plan:
                    self.evaluate_basic_instance(os.path.join(self.generated_plans_path, file))
                else:
                    self.evaluate_incremental_instance(os.path.join(self.generated_plans_path, file))


