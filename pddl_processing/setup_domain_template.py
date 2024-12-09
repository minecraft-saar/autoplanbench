import json
import os.path
from pathlib import Path
from typing import Union, Tuple
from pddl_processing.PDDL_describer_template import PDDLDescriberTemplate
from pddl_processing.create_translation_examples import create_translation_examples
from pddl_processing.setup_domain import set_up_instance_files
from utils.run_save_descriptions import create_domain_nl_description


def setup_pddl_domain_template(domain_file: str,
                               orig_instances_dir: str,
                               output_dir: str,
                               template_file: str,
                               n_instances: Union[None, int] = None,
                               len_constraint: Union[Tuple[int, int], None] = (2, 20),
                               plan_timeout: int = 1200,
                               overwrite: bool = False,
                               description_version: str = 'medium',
                               seed: int = 0):
    """

    :param domain_file:
    :param orig_instances_dir:
    :param output_dir:
    :param n_instances: if set to None / not set then all instances from the orig_instances_dir are chosen and names kept the same
    :param len_constraint:
    :param plan_timeout:
    :param overwrite:
    :param description_version:
    :param seed:
    :return:
    """

    Path(output_dir).mkdir(exist_ok=True, parents=True)

    pddl_describer = PDDLDescriberTemplate(domain_file=domain_file)

    # generate the natural language descriptions
    print(f'---- Generating Natural Language Domain Descriptions for {domain_file} ----')

    domain_file_name = domain_file.split(os.path.sep)[-1]
    nl_descrip_file = f'{domain_file_name.split(".")[0]}_description_{description_version}_seed{seed}.json' if description_version != 'medium' else f'{domain_file_name.split(".")[0]}_description_seed{seed}.json'
    pddl_describer.create_domain_descriptions_from_template(
        template_file=template_file,
        output_file=os.path.join(output_dir, nl_descrip_file),
        description_version=description_version
    )

    create_domain_nl_description(domain_nl_file=os.path.join(output_dir, nl_descrip_file))
    # TODO: make sure to change this again!!
    len_constraint = None
    if n_instances != 0:
        set_up_instance_files(domain_file=domain_file,
                              orig_instances_dir=orig_instances_dir,
                              output_dir=output_dir,
                              pddl_describer=pddl_describer,
                              n_instances=n_instances,
                              len_constraint=len_constraint,
                              plan_timeout=plan_timeout,
                              overwrite=overwrite,
                              run_inst_selection=False)
    else:
        print(f'Number of instances is set to 0. No instance files, gold plans or few-shot examples are generated!')


    # create few-shot examples
    print(f'---- Creating Few-shot Examples ----')
    translation_examples_file = os.path.join(output_dir, f'translation_examples_seed{seed}.json')
    translation_examples_repl_file = os.path.join(output_dir, f'translation_examples_dict_seed{seed}.json')

    if overwrite or (not os.path.exists(translation_examples_file)) or (
    not os.path.exists(translation_examples_repl_file)):

        example_data, example_data_replace = create_translation_examples(pddl_describer)
        with open(translation_examples_file, 'w') as f:
            json.dump(example_data, f, indent=4)
        with open(translation_examples_repl_file, 'w') as f:
            json.dump(example_data_replace, f, indent=4)
    else:
        print('Translation few-shot examples were already available and not created again.')

