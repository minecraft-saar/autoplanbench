import os
import openai
from argparse import ArgumentParser
from llm_planning.planning_set_up import play_games, get_game_class, set_up_configurations
from set_env import set_env_vars

set_env_vars()
openai.api_key = os.environ['OPENAI_API_KEY']


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('--config', required=True)
    parser.add_argument('--few-shot-path', required=False)
    args = parser.parse_args()

    config_file = args.config

    config, few_shot_path = set_up_configurations(args.config, args.few_shot_path)

    #config_file = "./configs/grippers/config_basic_gpt-4.json"
    #config, few_shot_path = set_up_configurations(config_file, "./data/grippers/few_shot_examples_basic/planning_examples_instance-7.json")

    encoding_type = config.get('encoding_type', 'automatic')
    thoughts = False if config['planning_approach'] == 'simple' else True
    planbench = True if encoding_type == 'planbench' else False

    game_class = get_game_class(thoughts=thoughts, planbench=planbench)
    play_games(config=config, few_shot_path=few_shot_path, game_class=game_class)


