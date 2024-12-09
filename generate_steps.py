import argparse
import copy
import json
import os
import re
from set_env import get_key_openai


TEMPLATE_DIR = "configs/templates"


def generate_domain_setup_steps(domain_name, few_shot_id, seed, logfile_name):
    steps = []        
    # Domain setup
    steps.append(f"nohup python -u run_domain_setup.py -o data/{domain_name} --llm gpt-4o --seed {seed} >> logs_domain_setup/{logfile_name}.txt 2>> logs_domain_setup/{logfile_name}.err")
    steps.append(f"nohup python -u run_setup_exp_files.py -d {domain_name} --ex-id {few_shot_id} --llm gpt-4o --seed {seed} --nl-domain data/{domain_name}/domain_description_seed{seed}.json --no-config >> logs_domain_setup/{logfile_name}.txt 2>> logs_domain_setup/{logfile_name}.err")
    return steps


def generate_domain_setup_steps_templates(domain_name, few_shot_id, seed, logfile_name):
    steps = []

    # Domain setup
    steps.append(f"nohup python -u run_domain_setup_templates.py -o data/{domain_name} --temp pddl_processing/templates/basic_conversion_template.txt --seed {seed} >> logs_domain_setup/{logfile_name}.txt 2>> logs_domain_setup/{logfile_name}.err")
    # Fewshots
    steps.append(f"nohup python -u run_setup_exp_files.py -d {domain_name} --ex-id {few_shot_id} --llm none --seed {seed} --nl-domain data/{domain_name}/domain_description_seed{seed}.json --no-config --no-thoughts >> logs_domain_setup/{logfile_name}.txt 2>> logs_domain_setup/{logfile_name}.err")
    return steps


def generate_domain_setup_steps_pddl(domain_name, few_shot_id, seed, logfile_name):
    steps = []

    dir_name = os.path.join('data', domain_name)

    # Fewshots
    steps.append(f"nohup python -u ./llm_planning/raw_pddl_input/create_few_shot_examples_pddl.py --dir {dir_name} --appr act_pddl --few-shot-id {few_shot_id} --seed {seed} >> logs_domain_setup/{logfile_name}.txt 2>> logs_domain_setup/{logfile_name}.err")

    steps.append(
        f"nohup python -u ./llm_planning/raw_pddl_input/create_few_shot_examples_pddl.py --dir {dir_name} --appr basic_pddl --few-shot-id {few_shot_id} --seed {seed} >> logs_domain_setup/{logfile_name}.txt 2>> logs_domain_setup/{logfile_name}.err")
    return steps


def generate_planning_steps(config_paths,
                            domain_name,
                            few_shot_id,
                            seed,
                            logfile_name,
                            api_key_name,
                            sleep="7m",
                            approaches: set = {'basic', 'act', 'cot', 'react'}):
    steps = []
    steps_make_batch_requests = []
    steps_no_batching = []
    steps_get_batch_results = []
    steps_run_after_batching = []
    # Create configs first
    config_paths, output_dirs = make_configs(config_paths, domain_name, approaches, few_shot_id, seed, api_key_name=api_key_name)
    # Include planning steps
    for approach, config_path in config_paths.items():

        if '_pddl' in approach:
            continue

        if approach in {"basic", "cot"}:
            # Batch handling
            steps_make_batch_requests.append(f"nohup python -u run_batch_openai.py -m CS --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")

           # steps_get_batch_results.append(f"nohup python -u retrieve_and_run_batch_response.py --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")

            steps_get_batch_results.append(f"nohup python -u run_batch_openai.py -m R --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")
            steps_run_after_batching.append(f"nohup python -u run_planning.py --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")
        else:
            steps_no_batching.append(f"nohup python -u run_planning.py --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")

    steps.extend(steps_make_batch_requests)
    steps.extend(steps_no_batching)
    steps.append(f"sleep {sleep}")
    steps.extend(steps_get_batch_results)
    steps.extend(steps_run_after_batching)

    # Steps for eval
    eval_config_paths = make_eval_configs(output_dirs, domain_name, seed, list(approaches))
    # if thought_only:
        # eval_config_paths = make_eval_configs(output_dirs, domain_name, seed, ["react", "cot"])
    # else:
        # eval_config_paths = make_eval_configs(output_dirs, domain_name, seed, ["react", "act", "cot", "basic"])
    for eval_config_path in eval_config_paths:
        steps.append(f"nohup python -u run_evaluation.py -d {eval_config_path} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")
    return steps


def generate_planning_steps_pddl(config_paths,
                                 domain_name,
                                 few_shot_id,
                                 seed,
                                 logfile_name,
                                 api_key_name,
                                 sleep="7m",
                                 approaches: set = {'basic', 'act', 'cot', 'react'}):
    steps = []
    steps_make_batch_requests = []
    steps_no_batching = []
    steps_get_batch_results = []
    steps_run_after_batching = []
    # Create configs first
    config_paths, output_dirs = make_configs(config_paths, domain_name, approaches, few_shot_id, seed, api_key_name=api_key_name)
    # Include planning steps
    for approach, config_path in config_paths.items():

        if not '_pddl' in approach:
            continue

        elif approach in {"cot", "react"}:
            continue

        elif approach == 'basic_pddl':
            # Batch handling
            steps_make_batch_requests.append(f"nohup python -u run_batch_openai.py -m CS --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")

            #steps_get_batch_results.append(f"nohup python -u retrieve_and_run_batch_response.py --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")

            steps_get_batch_results.append(f"nohup python -u run_batch_openai.py -m R --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")
            steps_get_batch_results.append(f"nohup python -u run_planning.py --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")
        else:
            steps_no_batching.append(f"nohup python -u run_planning.py --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")

    steps.extend(steps_make_batch_requests)
    steps.extend(steps_no_batching)
    steps.append(f"sleep {sleep}")
    steps.extend(steps_get_batch_results)
    steps.extend(steps_run_after_batching)

    # Steps for eval
    eval_config_paths = make_eval_configs(output_dirs, domain_name, seed, ["act_pddl", "basic_pddl"])
    for eval_config_path in eval_config_paths:
        steps.append(f"nohup python -u run_evaluation.py -d {eval_config_path} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")
    return steps


# TODO: maybe add react and cot again
def generate_planning_steps_templates(config_paths,
                                      domain_name,
                                      few_shot_id,
                                      seed,
                                      logfile_name,
                                      api_key_name,
                                      approaches={'basic', 'act', 'cot', 'react'},
                                      sleep="10m"):
    steps = []
    steps_make_batch_requests = []
    steps_no_batching = []
    steps_get_batch_results = []
    steps_run_after_batching = []
    # Create configs first
    config_paths, output_dirs = make_configs(config_paths, domain_name, approaches, few_shot_id, seed, api_key_name=api_key_name)
    # Include planning steps
    for approach, config_path in config_paths.items():

        if approach in {"cot", "react"}:
            continue
        if '_pddl' in approach:
            continue

        elif approach == "basic":
            # Batch handling
            steps_make_batch_requests.append(
                f"nohup python -u run_batch_openai.py -m CS --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")

            #steps_get_batch_results.append(f"nohup python -u retrieve_and_run_batch_response.py --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")

            steps_get_batch_results.append(f"nohup python -u run_batch_openai.py -m R --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")
            steps_get_batch_results.append(f"nohup python -u run_planning.py --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")
        else:
            steps_no_batching.append(
                f"nohup python -u run_planning.py --config {config_path} --few-shot-id {few_shot_id} --seed {seed} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")

    steps.extend(steps_make_batch_requests)
    steps.extend(steps_no_batching)
    steps.append(f"sleep {sleep}")
    steps.extend(steps_get_batch_results)
    steps.extend(steps_run_after_batching)

    # Steps for eval
    eval_config_paths = make_eval_configs(output_dirs, domain_name, seed, ["act", "basic"])
    for eval_config_path in eval_config_paths:
        if not 'react' in eval_config_path and not 'cot' in eval_config_path:
            steps.append(
                f"nohup python -u run_evaluation.py -d {eval_config_path} >> logs_planning/{logfile_name}.txt 2>> logs_planning/{logfile_name}.err")
    return steps


def make_configs(template_dir,
                 domain_name: str,
                 approaches: set,
                 few_shot_id: int,
                 seed: int,
                 api_key_name: str):
    config_dir = f"configs/{domain_name}_seed{seed}_configs"
    # Create directory for configs
    try:
        os.mkdir(config_dir)
    except FileExistsError:
        print("Config directory exists and therefore will not be created again.")

    # Create each config
    adjusted_config_paths = {}
    output_dirs = {}

    if 'planbench' in domain_name:
        template_dir = TEMPLATE_DIR = "configs/templates_planbench"

    for config_file in os.listdir(template_dir):
        approach = config_file.replace('_template_config.json', '')
        if not approach in approaches:
            continue
        config_path = os.path.join(template_dir, config_file)
        # Adjust config
        with open(config_path, encoding="utf-8") as f:
            config_template = json.load(f)

        # Adjust api key
        config_template["llm_config"]["plan"]["api_key"] = get_key_openai(api_key_name)
        config_template["llm_config"]["translate"]['api_key'] = get_key_openai(api_key_name)
        # Adjust seeds
        config_template["llm_config"]["plan"]["seed"] = seed
        config_template["llm_config"]["translate"]["seed"] = seed
        # Adjust paths with domain name
        config_template["llm_config"]["translate"]["examples_file"] = config_template["llm_config"]["translate"]["examples_file"].replace("{domain_name}", domain_name).replace("{seed}", str(seed))
        config_template["domain_dir"] = config_template["domain_dir"].replace("{domain_name}", domain_name)
        config_template["run_config"]["directory"] = config_template["run_config"]["directory"].replace("{domain_name}", domain_name)
        config_template["run_config"]["directory"] = config_template["run_config"]["directory"].replace("{seed}", str(seed))
        # Adjust IDs
        task_nums = []
        for file in os.listdir(f"data/{domain_name}/adapted_instances"):
            instance_id = int(re.findall(r"\d+", file)[0])
            if not instance_id == few_shot_id:
                task_nums.append(instance_id)
        config_template["task_nums"] = task_nums

        # Save adjusted version
        filepath = os.path.join(config_dir, f"config_{approach}_{domain_name}_seed{seed}.json")

        with open(filepath, "w", encoding="utf-8") as file_out:
            json.dump(config_template, file_out, ensure_ascii=False, indent=4)

        adjusted_config_paths[approach] = filepath
        output_dirs[approach] = config_template["run_config"]["directory"] 

    return adjusted_config_paths, output_dirs


def make_eval_configs(output_dirs, domain_name, seed, approaches):
    config_dir = f"evaluation_results/eval_configs/{domain_name}_seed{seed}_configs"
    # Create directory for configs
    try:
        os.mkdir(config_dir)
    except FileExistsError:
        print("Evaluation config directory exists and therefore will not be created again.")

    # Get template
    with open("evaluation_results/eval_configs/template.json", encoding="utf-8") as file_in:
        template = json.load(file_in)
    
    eval_config_paths = []
    # TODO: not done for pddl yet
    for approach in approaches:
        # Adjust config
        eval_config = copy.deepcopy(template)
        for i in eval_config["data_to_eval"]:
            if approach in {"basic", "cot", "basic_pddl"}:
                i["is_complete_plan"] = True
            # Adjust paths
            i["generated_plans_path"] = i["generated_plans_path"].replace("{output_dir}", output_dirs[approach])
            i["evaluation_results_file"] = i["evaluation_results_file"].replace("{output_dir}", output_dirs[approach])
            i["gold_plan_dir"] = i["gold_plan_dir"].replace("{domain_name}", domain_name)

        eval_config_path = os.path.join(config_dir, f"{approach}_seed{seed}.json")
        with open(eval_config_path, "w", encoding="utf-8") as file_out:
            json.dump(eval_config, file_out, ensure_ascii=False, indent=4)
        eval_config_paths.append(eval_config_path)

    return eval_config_paths


def create_bash_script(script_name, steps):
    with open(script_name, "w") as file_out:
        file_out.write("#! /bin/bash\n\n")
        for step in steps:
            file_out.write(step + "\n")
    cmd = f'chmod 700 {script_name}'
    os.system(cmd)
    print(f"Script saved to {script_name}")


if __name__ == "__main__":
    # Set up parser
    parser = argparse.ArgumentParser()
    parser.add_argument('mode', choices=["domain_setup", "planning"], help='Whether to generate steps for domain_setup or for planning')
    parser.add_argument('--domain', required=True, help='Name of the domain (directory name in the data folder)')
    parser.add_argument('--few-shot-id', type=int, required=True,
                        help='ID of the few-shot example to use. Will be selected from the few-shot example directory of the specific approach.')
    parser.add_argument('--seed', type=int, required=True,
                        help='Seed used for generation of domain_description and few_shot example thoughts.')
    parser.add_argument('--template-dir', required=False, default=TEMPLATE_DIR, help='Path to the planning config file template')
    parser.add_argument('--pddl', required=False, default=False, type=bool, action=argparse.BooleanOptionalAction)
    parser.add_argument('--sleep', required=False, default='7m', type=str)
    parser.add_argument('--key', required=False, default='null')
    parser.add_argument('--approaches', required=False,
                        default=['basic', 'act', 'cot', 'react'], type=str,
                        nargs='+', choices=['basic', 'act', 'cot', 'react'])
    args = parser.parse_args()

    approaches = set(args.approaches)

    if not os.path.exists(f"scripts_{args.mode}"):
        os.mkdir(f"scripts_{args.mode}")
    if not os.path.exists(f"logs_{args.mode}"):
        os.mkdir(f"logs_{args.mode}")

    logfile_name = f"{args.domain}_seed{args.seed}_fewshotid{args.few_shot_id}"
    if args.mode == 'domain_setup':
        if args.pddl:
            steps = generate_domain_setup_steps_pddl(args.domain, args.few_shot_id, args.seed, logfile_name)
        elif 'templates' in args.domain:
            steps = generate_domain_setup_steps_templates(args.domain, args.few_shot_id, args.seed, logfile_name)
        else:
            steps = generate_domain_setup_steps(args.domain, args.few_shot_id, args.seed, logfile_name)
    else:
        if args.pddl:
            steps = generate_planning_steps_pddl(args.template_dir,
                                                 args.domain,
                                                 args.few_shot_id,
                                                 args.seed,
                                                 logfile_name,
                                                 api_key_name=args.key,
                                                 sleep=args.sleep,
                                                 approaches=approaches)
        elif 'templates' in args.domain:
            steps = generate_planning_steps_templates(args.template_dir,
                                                      args.domain,
                                                      args.few_shot_id,
                                                      args.seed,
                                                      logfile_name,
                                                      api_key_name=args.key,
                                                      sleep=args.sleep,
                                                      approaches=approaches)
        else:
            steps = generate_planning_steps(args.template_dir,
                                            args.domain,
                                            args.few_shot_id,
                                            args.seed,
                                            logfile_name,
                                            api_key_name=args.key,
                                            sleep=args.sleep,
                                            approaches=approaches)

    for step in steps:
        print(step)
    if args.pddl:
        script_name = f"scripts_{args.mode}/{args.mode}_{args.domain}_pddl_seed{args.seed}_fewshotid{args.few_shot_id}.sh"
    else:
        script_name = f"scripts_{args.mode}/{args.mode}_{args.domain}_seed{args.seed}_fewshotid{args.few_shot_id}.sh"
    create_bash_script(script_name, steps)

