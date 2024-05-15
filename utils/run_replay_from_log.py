import json
import os
import openai
import copy
import json
from ast import literal_eval
from argparse import ArgumentParser
from llm_planning.planning_set_up import get_game_class, set_up_configurations, create_game, get_gold_based_steps
from set_env import set_env_vars

set_env_vars()
openai.api_key = os.environ['OPENAI_API_KEY']



def play_from_log(config, few_shot_path, game_class, log_file, new_log_dir, total_steps=None):
    instance_config = copy.deepcopy(config)
    run_config = instance_config.pop('run_config')
    run_config['directory'] = new_log_dir

    executed_steps = 0
    original_log_text = []
    orig_max_steps = 0
    with open(log_file, 'r') as l:
        for line in l:
            line_dict = json.loads(line)
            if 'task' in line_dict.keys():
                task_num = line_dict['task']['task_num']
                #break_limit = line_dict['break_limit']
                orig_max_steps = line_dict['max_steps']
            if 'text' in line_dict.keys():
                if line_dict['type'] == 'Plan Model':
                    executed_steps += 1
            if not 'success' in line_dict.keys() and not 'total_time' in line_dict.keys():
                original_log_text.append(line_dict)

    game = create_game(task_num=task_num, instance_config=instance_config,
                       few_shot_path=few_shot_path, game_class=game_class)

    if total_steps is None:
        total_steps = get_gold_based_steps(domain_dir=instance_config['domain_dir'],
                                     task_num=task_num)
    remaining_steps = total_steps - executed_steps
    run_config['steps'] = remaining_steps

    new_log_file = game.create_log(max_steps=orig_max_steps, break_limit=run_config['break_limit'], directory=new_log_dir)
    with open(new_log_file, 'w') as l:
        for orig in original_log_text:
            json.dump(orig, l)
            l.write('\n')

    game.replay_from_log(log_file=log_file)
    game.log = new_log_file
    game.run_instructions_all(**run_config)



if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('--config', required=True, help='Path to the planning config file')
    parser.add_argument('--steps', required=True)
    parser.add_argument('--few-shot-id', required=True,
                        help='ID of the few-shot example to use. Will be selected from the few-shot example directory of the specific approach.')
    parser.add_argument('--log-file', required=True)
    parser.add_argument('--new-log-dir')
    args = parser.parse_args()

    config_file = args.config

    few_shot_id = literal_eval(args.few_shot_id) if isinstance(args.few_shot_id, str) else args.few_shot_id
    steps = literal_eval(args.steps) if isinstance(args.steps, str) else args.steps

    config, few_shot_path = set_up_configurations(args.config, few_shot_id)
    encoding_type = config.get('encoding_type', 'automatic')
    thoughts = config['thoughts']
    planbench = True if encoding_type == 'planbench' else False

    if 'pddl' in config['planning_approach']:
        pddl = True
    else:
        pddl = False

    game_class = get_game_class(thoughts=thoughts, planbench=planbench, pddl=pddl)

    play_from_log(config=config, few_shot_path=few_shot_path, game_class=game_class,
                  log_file=args.log_file, new_log_dir=args.new_log_dir, total_steps=steps)

