import json
from argparse import ArgumentParser
from evaluation.evaluate_planning import PlanEvaluator


if __name__=='__main__':

    parser = ArgumentParser()
    parser.add_argument('-d', required=True, help='path to the .json file listing the data for evaluation')
    args = parser.parse_args()

    domain_file = args.d

    with open(domain_file, 'r') as f:
        data = json.load(f)

    data_to_eval = data['data_to_eval']

    for d2eval in data_to_eval:
        try:
            evaluator = PlanEvaluator(**d2eval)
            evaluator.run_evaluation()

        except FileNotFoundError as e:
            print(e)
            continue

