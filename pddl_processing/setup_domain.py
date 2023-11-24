import json
import os.path
from pathlib import Path
from typing import Union, Tuple
import logging
from pythonjsonlogger import jsonlogger
from pddl_processing.PDDL_describer import PDDLDescriber
from pddl_processing.adapt_instances import adapt_instance_files
from pddl_processing.create_translation_examples import create_translation_examples
from pddl_processing.create_gold_plans import create_gold_plan_files
from pddl_processing.problem_generator_filter import select_problems


def setup_pddl_domain(domain_file: str,
                      orig_instances_dir: str,
                      output_dir: str,
                      llm: str,
                      n_instances: Union[None, int] = None,
                      len_constraint: Tuple[int, int] = (2, 20),
                      plan_timeout: int = 1200,
                      overwrite: bool = False,
                      description_version: str = 'medium',
                      pddl2text_version: str = 'extended'):
    """

    :param domain_file:
    :param orig_instances_dir:
    :param output_dir:
    :param n_instances: if set to None / not set then all instances from the orig_instances_dir are chosen and names kept the same
    :param len_constraint:
    :param plan_timeout:
    :param overwrite:
    :param llm:
    :param description_version:
    :param pddl2text_version:
    :return:
    """

    Path(output_dir).mkdir(exist_ok=True, parents=True)

    pddl_describer = PDDLDescriber(domain_file=domain_file)

    # generate the natural language descriptions
    print(f'---- Generating Natural Language Domain Descriptions for {domain_file} ----')

    domain_file_name = domain_file.split(os.path.sep)[-1]
    nl_descrip_file = f'{domain_file_name.split(".")[0]}_description_{description_version}.json' if description_version != 'medium' else f'{domain_file_name.split(".")[0]}_description.json'
    examples_file = f'./pddl_processing/examples/examples_mappings_{pddl2text_version}.json'
    pddl_describer.create_domain_descriptions_from_scratch(prompt_file=examples_file,
                                                           output_file=os.path.join(output_dir, nl_descrip_file),
                                                           description_version=description_version,
                                                           pddl2text_llm=llm,
                                                           pddl2text_version=pddl2text_version)

    if n_instances != 0:
        set_up_instance_files(domain_file=domain_file, orig_instances_dir=orig_instances_dir, output_dir=output_dir,
                              pddl_describer=pddl_describer, n_instances=n_instances, len_constraint=len_constraint,
                              plan_timeout=plan_timeout,
                              overwrite=overwrite)
    else:
        print(f'Number of instances is set to 0. No instance files, gold plans or few-shot examples are generated!')


def set_up_instance_files(domain_file: str,
                         orig_instances_dir: str,
                         output_dir: str,
                         pddl_describer: PDDLDescriber,
                         n_instances: Union[None, int] = None,
                         len_constraint: Tuple[int, int] = (2, 20),
                         plan_timeout: int = 1200,
                         overwrite: bool = False):
    """

    :param domain_file:
    :param orig_instances_dir:
    :param output_dir:
    :param pddl_describer:
    :param n_instances:
    :param len_constraint:
    :param plan_timeout:
    :param overwrite: whether to do the adaption and planning step for files that are already there
    :return:
    """

    # adapt the instance files, i.e. adapt the object names
    print(f'---- Adapting Instance Files for {domain_file} ----')
    new_inst_dir = os.path.join(output_dir, 'adapted_instances')
    instance_mappings_file = os.path.join(output_dir, f'instance_object_mappings.json')
    instances_object_mappings = adapt_instance_files(instances_path=orig_instances_dir, adapted_inst_dir=new_inst_dir, overwrite=overwrite, instance_mappings_file=instance_mappings_file)
    with open(instance_mappings_file, 'w') as f:
        json.dump(instances_object_mappings, f, indent=4)

    # get gold plans for adapted instances
    print(f'---- Creating Gold Plans ----')
    gold_plan_dir = os.path.join(output_dir, 'gold_plans')
    create_gold_plan_files(domain_file=domain_file, instance_dir=new_inst_dir, plan_dir=gold_plan_dir, plan_timeout=plan_timeout, overwrite_plans=overwrite)


    print(f'---- Selecting Instance Files ----')
    not_matching_instance_dir = os.path.join(output_dir, 'not_selected_by_filter')

    select_problems(n_instances=n_instances,
                    problem_dir=new_inst_dir,
                    gold_plan_dir=gold_plan_dir,
                    not_selected_problem_dir=not_matching_instance_dir,
                    len_constraint=list(len_constraint))


    # create few-shot examples
    print(f'---- Creating Few-shot Examples ----')
    translation_examples_file = os.path.join(output_dir, 'translation_examples.json')
    translation_examples_repl_file = os.path.join(output_dir, 'translation_examples_dict.json')

    if overwrite or (not os.path.exists(translation_examples_file)) or (not os.path.exists(translation_examples_repl_file)):

        example_data, example_data_replace = create_translation_examples(pddl_describer)
        with open(translation_examples_file, 'w') as f:
            json.dump(example_data, f, indent=4)
        with open(translation_examples_repl_file, 'w') as f:
            json.dump(example_data_replace, f, indent=4)




