import os
import openai
import json
from argparse import ArgumentParser
from llm_planning.planning_set_up import get_prompts, get_game_class, set_up_configurations
from set_env import set_env_vars

set_env_vars()
openai.api_key = os.environ['OPENAI_API_KEY']

if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('--config', required=True, help='Path to the planning config file')
    parser.add_argument('--few-shot-path', required=False, help='Path to the specific few-shot example to use. Default is ')
    parser.add_argument('--pl-out', required=True, help='Path for the file where the P-LLM prompt gets saved')
    parser.add_argument('--tr-out', required=True, help='Path for the file where the T-LLM prompt gets saved')
    args = parser.parse_args()

    config, few_shot_path = set_up_configurations(args.config, args.few_shot_path)
    encoding_type = config.get('encoding_type', 'automatic')
    thoughts = False if config['planning_approach'] == 'simple' else True
    planbench = True if encoding_type == 'planbench' else False

    game_class = get_game_class(thoughts=thoughts, planbench=planbench)
    plan_prompt, translate_prompt, _ = get_prompts(config=config, few_shot_path=few_shot_path, game_class=game_class)

    with open(args.pl_out, 'w') as file:
        file.write(plan_prompt)
    with open(args.tr_out, 'w') as file:
        file.write(translate_prompt)
