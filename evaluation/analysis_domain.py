import os
from pddl_processing.domain_class import Domain


def get_characteristics_domain(data_dir: str, output_file: str):

    domains_data = dict()

    for domain_name in os.listdir(data_dir):
        if 'planbench' in domain_name:
            continue
        elif 'template' in domain_name:
            continue
        elif 'bfs' in domain_name:
            continue

        elif not os.path.isdir(os.path.join(data_dir, domain_name)):
            continue

        domain_file = os.path.join(data_dir, domain_name, 'domain.pddl')

        domain = Domain(domain_file=domain_file)

        n_actions = len(domain.actions.keys())
        n_preds = len(domain.predicates.keys())
        n_types = len(domain.types.keys())

        domains_data[domain_name] = {'n_actions': n_actions,
                                     'n_preds': n_preds,
                                     'n_types': n_types}

    with open(output_file, 'w') as f:
        header = '\t'.join(['domain', 'n_actions', 'n_preds', 'n_types'])
        f.write(f'{header}\n')

        for d_name, d_vals in domains_data.items():
            line_list = [d_name, d_vals['n_actions'], d_vals['n_preds'], d_vals['n_types']]
            line_list_str = [str(v) for v in line_list]
            line = '\t'.join(line_list_str)
            f.write(f'{line}\n')


if __name__=='__main__':

    get_characteristics_domain(data_dir='../data',
                               output_file='../utils/domain_characteristics.tsv')

