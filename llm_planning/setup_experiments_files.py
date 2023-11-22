import os
from pathlib import Path
from typing import Union
from utils.paths import DATA_DIR, get_few_shot_dir

proj_dir_path = Path(__file__).resolve().parent.parent

def setup_files_domain(domain_name: str,
                       few_shot_id: int,
                       llm: Union[str, None],
                       react_length: Union[int, None],
                       max_steps_inter: int,
                       break_inter: int,
                       max_steps_non_inter: int,
                       break_non_inter: int,
                       encoding: str = 'automatic',
                       data_dir: str = DATA_DIR):
    """

    :param domain_name:
    :param few_shot_id:
    :param llm:
    :param react_length:
    :param max_steps_inter:
    :param break_inter:
    :param max_steps_non_inter:
    :param break_non_inter:
    :param encoding:
    :param data_dir:
    :return:
    """
    domain_dir = os.path.join(data_dir, domain_name)

    approaches = ['basic', 'incremental', 'state_reasoning', 'react', 'cot']

    # Create few-shot examples
    few_shot_script = os.path.join(proj_dir_path, 'llm_planning', 'create_few_shot_examples.py')
    create_few_shot_files(script=few_shot_script, domain_dir=domain_dir,
                          few_shot_id=few_shot_id, encoding=encoding, react_length=react_length, versions=approaches)

    # Generate thoughts for few-shot examples
    if llm:
        create_thought_files(domain_dir=domain_dir, few_shot_id=few_shot_id, data_dir=data_dir, llm=llm)

    print('Setting up the configs')
    # create configs
    cmd = f'python ./configs/create_config.py -d {domain_name} --d-dir {domain_dir} ' \
          f'--ex-id {few_shot_id} --enc {encoding} --llm {llm} ' \
          f'--ms-i {max_steps_inter} --br-i {break_inter} --ms-ni {max_steps_non_inter} --br-ni {break_non_inter}'
    os.system(cmd)


def create_thought_files(domain_dir: str, data_dir: str, few_shot_id, llm: str):

    create_thoughts_script = os.path.join(proj_dir_path, 'llm_planning', 'fill_thought_examples.py')
    few_shot_dir_react = get_few_shot_dir('react', domain_data_dir=domain_dir)
    template_file = os.path.join(few_shot_dir_react, f'react_template_instance-{few_shot_id}.json')
    nl_file = os.path.join(domain_dir, 'domain_description.json')
    output_file = os.path.join(few_shot_dir_react, f'react_example_instance-{few_shot_id}.json')

    example_domain_nl = os.path.join(data_dir, 'logistics', 'domain_description.json')
    example_react = os.path.join(data_dir, 'logistics', 'few_shot_examples_react', 'logistics_react.json')

    cmd = f'python {create_thoughts_script} --template {template_file} --nl-domain {nl_file}' \
          f'--ex-domain {example_domain_nl} --ex-react {example_react} --out {output_file} --llm {llm}'
    os.system(cmd)


def create_few_shot_files(script, domain_dir, few_shot_id: int, encoding: str, react_length: Union[int, None], versions: list):

    print(f'Setting up few-shot examples')

    for planning_version in versions:
        pref = get_example_prefix_mappings(planning_version)
        is_pb = False if encoding == 'automatic' else True
        cmd = f'python {script} --dir {domain_dir} --ex-id {few_shot_id} ' \
              f'--pref \"{pref}\" --version {planning_version} --is-pb {is_pb} --react-len {react_length}'
        print(cmd)
        os.system(cmd)


def get_example_prefix_mappings(approach):
    if approach == 'basic':
        return '[STATEMENT]\n', '[PLAN]\n'
    else:
        return '', ''


