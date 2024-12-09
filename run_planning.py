import os
import openai
from argparse import ArgumentParser
from llm_planning.planning_set_up import play_games, get_game_class, set_up_configurations
from set_env import set_env_vars

set_env_vars()
openai.api_key = os.environ['OPENAI_API_KEY']


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('--config', required=True, help='Path to the planning config file')
    parser.add_argument('--few-shot-id', type=int, required=True,
                        help='ID of the few-shot example to use. Will be selected from the few-shot example directory of the specific approach.')
    parser.add_argument('--seed', type=int, required=True, help='Seed used for generation of domain_description and few_shot example thoughts.')

    args = parser.parse_args()

    config_file = args.config

    config, few_shot_path = set_up_configurations(args.config, args.few_shot_id, seed=args.seed)
    encoding_type = config.get('encoding_type', 'automatic')
    thoughts = config['thoughts']
    planbench = True if encoding_type == 'planbench' else False

    if 'pddl' in config['planning_approach']:
        pddl = True
    else:
        pddl = False

    approach = config['planning_approach']
    #assert approach == 'cot' or approach == 'react'

    game_class = get_game_class(thoughts=thoughts, planbench=planbench, pddl=pddl)
    play_games(config=config, few_shot_path=few_shot_path, game_class=game_class)

