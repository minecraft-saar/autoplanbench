import os
from copy import copy
from pathlib import Path
from typing import Union
from utils.paths import DATA_DIR, get_few_shot_dir, APPROACHES, THOUGHT_GEN_EXAMPLE_DOMAIN, THOUGHT_GEN_EXAMPLE_FILE, get_few_shot_ex_file

proj_dir_path = Path(__file__).resolve().parent.parent


# Fix the DATA_dir, add option to skip configs
def setup_files_domain(domain_name: str,
                       nl_domain: str,
                       few_shot_id: int,
                       llm: str,
                       react_length: Union[int, None],
                       react_example_domain: Union[str, None],
                       react_example_file: Union[str, None],
                       max_steps_inter: int,
                       break_inter: int,
                       max_steps_non_inter: int,
                       break_non_inter: int,
                       seed: Union[int, None],
                       thoughts: bool = True,
                       configs: bool = True,
                       encoding: str = 'automatic',
                       data_dir: str = DATA_DIR):
    """

    :param domain_name:
    :param few_shot_id:
    :param llm:
    :param thoughts:
    :param react_length:
    :param react_example_domain:
    :param react_example_file:
    :param max_steps_inter:
    :param break_inter:
    :param max_steps_non_inter:
    :param break_non_inter:
    :param configs:
    :param encoding:
    :param data_dir:
    :param seed:
    :return:
    """
    domain_dir = os.path.join(data_dir, domain_name)

    approaches = copy(APPROACHES)
    approaches.remove('act_pddl')
    approaches.remove('basic_pddl')

    # Create few-shot examples
    few_shot_script = os.path.join(proj_dir_path, 'llm_planning', 'create_few_shot_examples.py')

    create_few_shot_files(script=few_shot_script,
                          domain_dir=domain_dir,
                          nl_domain=nl_domain,
                          few_shot_id=few_shot_id,
                          encoding=encoding,
                          react_length=react_length,
                          versions=approaches,
                          seed=seed)

    # Generate thoughts for few-shot examples
    if thoughts:
        print('Generating thoughts')
        example_react_nl = react_example_domain if react_example_domain else THOUGHT_GEN_EXAMPLE_DOMAIN
        example_react_file = react_example_file if react_example_file else THOUGHT_GEN_EXAMPLE_FILE
        create_thought_files(domain_dir=domain_dir,
                             few_shot_id=few_shot_id,
                             llm=llm,
                             example_domain_nl=example_react_nl,
                             example_react=example_react_file,
                             seed=seed)

    if configs:
        print('Setting up the configs')
        # create configs
        cmd = f'python ./configs/create_config.py -d {domain_name} --d-dir {domain_dir} ' \
              f'--ex-id {few_shot_id} --enc {encoding} --llm {llm} ' \
              f'--ms-i {max_steps_inter} --br-i {break_inter} --ms-ni {max_steps_non_inter} --br-ni {break_non_inter}'
        os.system(cmd)


def create_thought_files(domain_dir: str, few_shot_id, llm: str, example_domain_nl: str, example_react: str, seed: Union[int, None]):

    create_thoughts_script = os.path.join(proj_dir_path, 'llm_planning', 'fill_thought_examples.py')
    few_shot_dir_react = get_few_shot_dir('react', domain_data_dir=domain_dir)
    template_file = os.path.join(few_shot_dir_react, f'react_template_instance-{few_shot_id}_seed{seed}.json')
    nl_file = os.path.join(domain_dir, f'domain_description_seed{seed}.json')
    few_shot_file_react = get_few_shot_ex_file(few_shot_dir=few_shot_dir_react, instance_id=few_shot_id, approach='react', seed=seed)
    output_file = few_shot_file_react

    cmd = f'python {create_thoughts_script} --template {template_file} --nl-domain {nl_file} ' \
          f'--ex-domain {example_domain_nl} --ex-react {example_react} --out {output_file} --llm {llm} --seed {seed}'
    os.system(cmd)


def create_few_shot_files(script, domain_dir, nl_domain, few_shot_id: int, encoding: str, react_length: Union[int, None], versions: list, seed: Union[int, None]):

    print(f'Setting up few-shot examples')

    for planning_version in versions:
        pref = get_example_prefix_mappings(planning_version)
        cmd = f'python {script} --dir {domain_dir} --nl-domain {nl_domain} --ex-id {few_shot_id} ' \
              f'--pref \"{pref}\" --version {planning_version} --enc {encoding} --rl {react_length} --seed {seed}'
        print(cmd)
        os.system(cmd)


def get_example_prefix_mappings(approach):
    if approach == 'basic':
        return '[STATEMENT]\n', '[PLAN]\n'
    else:
        return '', ''


