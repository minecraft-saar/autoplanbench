from argparse import ArgumentParser
from pddl_processing.create_domain_description import create_domain_nl_description


if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument('-d', required=True, help='Path to the domain description file')
    parser.add_argument('-t', required=False, default=None, help='Path to the jinja template file')
    parser.add_argument('-o', required=True, help='Path to the file where the domain encoding is saved to')
    args = parser.parse_args()

    if args.t:
        create_domain_nl_description(domain_nl_file=args.d,
                                     output_file=args.o,
                                     template_file=args.t)
    else:
        create_domain_nl_description(domain_nl_file=args.d,
                                     output_file=args.o)

