import os
from argparse import ArgumentParser


def create_eval_overview(eval_files: list, overview_file: str):
    """

    :param eval_files:
    :param overview_file:
    :return:
    """
    data_for_csv = {'Eval file': []}
    ordering = ['Eval file']

    for file_ind, file in enumerate(eval_files):
        data_for_csv['Eval file'].append(os.path.split(file)[1])
        with open(file, 'r') as f:
            for line in f.readlines():
                cols = line.strip().split('\t')
                key = cols[0]
                value = cols[1]

                if file_ind == 0:
                    ordering.append(key)
                    data_for_csv[key] = []

                if key == 'Source':
                    value = os.path.split(value)[1]
                data_for_csv[key].append(value)


    with open(overview_file, 'w') as f:
        for ordered_key in ordering:
            all_values = "\t".join(data_for_csv[ordered_key])
            f.write(f'{ordered_key}\t{all_values}\n')



if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('-d', required=True, help='Path to directory with evaluation files')
    parser.add_argument('-o', required=True, help='Path to the output file with the overview')
    args = parser.parse_args()

    eval_dir = args.d

    eval_files = []
    for file in os.listdir(eval_dir):
        if os.path.isfile(os.path.join(eval_dir, file)):
            eval_files.append(os.path.join(eval_dir, file))

    eval_overview_name = args.o

    create_eval_overview(eval_files, eval_overview_name)

