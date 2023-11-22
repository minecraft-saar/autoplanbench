import json
import os
from utils.paths import *
from argparse import ArgumentParser
from llm_planning.select_few_shot_example import select_few_shot_instance


def run_auto_planbench(domain_name: str,
                       n_instances: int,
                       llm: str,
                       data_dir: str = DATA_DIR,
                       orig_inst_dir: str = ORIG_INST_FOLDER,
                       len_criterium_inst: tuple = (2, 20),
                       len_criterium_example: tuple = (3, 5),
                       react_length: int = 3,
                       timeout: int = 1200,
                       overwrite: bool = False,
                       description_version: str = 'medium',
                       pddl2text_version: str = 'extended',
                       max_steps_inter: int = 24,
                       break_inter: int = 5,
                       max_steps_non_inter: int = 1,
                       break_non_inter: int = 1,
                       approaches: tuple = ('basic', 'cot', 'react', 'act')):

    domain_file_path = get_domain_file_path(domain_name=domain_name, data_dir=data_dir)
    domain_data_path = get_domain_data_dir(domain_name=domain_name, data_dir=data_dir)
    # run domain set-up
    params_domain_set_up = {'d': domain_file_path,
                            'i': orig_inst_dir,
                            'o': domain_data_path,
                            'n': n_instances,
                            'len': len_criterium_inst,
                            'timeout': timeout,
                            'overwrite': overwrite,
                            'llm': llm,
                            'desc': description_version,
                            'to_text': pddl2text_version}
    cmd_domain = 'python run_domain_setup.py -d {d} -i {i} -o {o} -n {n} --len {len} --timeout {timeout} ' \
          '--overwrite {overwrite} --llm {llm} --desc {desc} --to-text {to_text}'.format(**params_domain_set_up)
    os.system(cmd_domain)

    # select example ID
    instance_dir = get_instance_dir(domain_name=domain_name, data_dir=data_dir)
    gold_plan_dir = get_gold_plan_dir(domain_name=domain_name, data_dir=data_dir)
    ex_id = select_few_shot_instance(instance_dir=instance_dir, plan_dir=gold_plan_dir,
                                     length_criterium=len_criterium_example, alternative_criterium='minimum')

    # set up the experiment files
    params_exp_file_set_up = {'domain_name': domain_name,
                              'few_shot_id': ex_id,
                              'llm': llm,
                              'react_length': react_length,
                              'max_steps_inter': max_steps_inter,
                              'break_inter': break_inter,
                              'max_steps_non_inter': max_steps_non_inter,
                              'break_non_inter': break_non_inter,
                              'encoding': 'automatic',
                              'data_dir': data_dir}
    cmd_exp_files = 'python run_setup_exp_files -d {domain_name} --id {few_shot_id} --llm {llm} ' \
                    '--rl {react_length} --ms-i {max_steps_inter} --br-i {break_inter} ' \
                    '--ms-ni {max_steps_non_inter} --br-ni {break_non_inter} --enc {encoding} --dd {data_dir}'.format(**params_exp_file_set_up)
    os.system(cmd_exp_files)

    # run planning
    cmd_run_planning = 'python run_planning.py --config {config} --few-shot-path {few-shot-path}'

    data_to_eval = []

    for appr in approaches:
        # run planning
        config_file = get_config_file(domain_name=domain_name, config_dir=CONFIG_DIR, approach=appr, model=llm)
        few_shot_dir = get_few_shot_dir(planning_approach=appr, domain_data_dir=domain_data_path)
        few_shot_file = get_few_shot_ex_file(few_shot_dir=few_shot_dir, instance_id=ex_id, approach=appr)
        params_plan = {"config": config_file, "few-shot-path": few_shot_file}
        cmd_plan = cmd_run_planning.format(**params_plan)
        os.system(cmd_plan)

        # save info for evaluation
        d = dict()
        with open(config_file, 'r') as cf:
            conf = json.load(cf)
            output_exp_dir = os.path.join(OUTPUT_DIR, conf['run_config']['directory'])
            d['generated_plans_path'] = output_exp_dir
            d['evaluation_results_file'] = os.path.join(EVALUATION_RES_DIR, f'{output_exp_dir}.csv')
            d['gold_plan_dir'] = gold_plan_dir
            d['is_complete_plan'] = False if conf['incremental'] else True
        data_to_eval.append(d)

    # run evaluation
    domains_2_eval_file = os.path.join(f'./evaluation/{domain_name}_files_to_eval.json')
    main_dict = {'data_to_eval': data_to_eval}
    with open(domains_2_eval_file, 'w') as d2e:
        json.dump(main_dict, d2e, indent=4)

    cmd_eval = f'python run_evaluation -d {domains_2_eval_file}'
    os.system(cmd_eval)


if __name__=='__main__':
    parser = ArgumentParser()
    parser.add_argument('-d', required=True, help='Name of the domain')
    parser.add_argument('-n', required=True, help='Number of instances to select')
    parser.add_argument('--llm', required=True, help='Name of the LLM to use')
    parser.add_argument('--data', required=False, help='Path to the directory containing all data')
    parser.add_argument('--orig', required=False, help='Path to the directory with the original instances')
    parser.add_argument('--len-i', required=False, help='Select only instances for which the length of the optimal plan is within the specified limits (inclusive). Default is (2, 20)')
    parser.add_argument('--len-e', required=False, help='Select the few-shot example by selecting randomly one of the instances with an optimal plan within the specified limits (inclusive). Default is (2, 5)')
    parser.add_argument('--len-react', required=False, help='Number of steps in the ReAct example; Default is 3')
    parser.add_argument('--timeout', required=False, default=1200,
                                 help='Time (in sec) to wait until stopping planning if no plan found so far. Default is 1200, i.e. 20 minutes.')
    parser.add_argument('--overwrite', required=False, default=False,
                                 help='Whether to re-run the adaption and plan generation for instances for which they already exist. Default is False')
    parser.add_argument('--desc', required=False, default='medium')
    parser.add_argument('--to-text', required=False, default='extended')
    parser.add_argument('--ms-i', required=False, default=24,
                        help='Max number of steps interactive approaches; defaults to 24')
    parser.add_argument('--br-i', required=False, default=5,
                        help='Break limit for interactive approaches; defaults to 5')
    parser.add_argument('--ms-ni', required=False, default=1,
                        help='Max number of steps noninteractive approaches; defaults to 1')
    parser.add_argument('--br-ni', required=False, default=1,
                        help='Break limit for noninteractive approaches; defaults to 1')
    parser.add_argument('--app', required=False, help='Tuple with the names of all planning approaches to run and evaluate. Defaults to ("basic", "cot", "react", "act")')

    args = parser.parse_args()

    apb_params = dict()
    apb_params['domain_name'] = args.d
    apb_params['n_instances'] = args.n
    apb_params['llm'] = args.llm
    if args.data:
        apb_params['data_dir'] = args.data
    if args.orig:
        apb_params['orig_inst_dir'] = args.orig
    if args.len_i:
        apb_params['len_criterium_inst'] = args.len_i
    if args.len_e:
        apb_params['len_criterium_example'] = args.len_e
    if args.len_react:
        apb_params['react_length'] = args.len_react
    if args.timeout:
        apb_params['timeout'] = args.timeout
    if args.overwrite:
        apb_params['overwrite'] = args.overwrite
    if args.desc:
        apb_params['description_version'] = args.desc
    if args.to_text:
        apb_params['pddl2text_version'] = args.to_text
    if args.ms_i:
        apb_params['max_steps_inter'] = args.ms_i
    if args.br_i:
        apb_params['break_inter'] = args.br_i
    if args.ms_ni:
        apb_params['max_steps_non_inter'] = args.ms_ni
    if args.br_ni:
        apb_params['break_non_inter'] = args.br_ni
    if args.app:
        apb_params['approaches'] = args.app

    run_auto_planbench(**apb_params)


