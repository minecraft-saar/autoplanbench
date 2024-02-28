import os
import json
import shutil
from pathlib import  Path
from collections import Counter, defaultdict
from utils.paths import OUTPUT_DIR

"""
(Re)move all model output files from runs that were aborted or aborted with an openAI error 
"""


def clean_incomplete_runs(delete: bool, out_dir: str = OUTPUT_DIR, new_dir: str = ''):

    files_to_clean = find_files_to_clean(out_dir=out_dir)
    Path(new_dir).mkdir(exist_ok=True)

    for domain in files_to_clean.keys():
        Path(os.path.join(new_dir, domain)).mkdir(exist_ok=True)
        for file in files_to_clean[domain]:
            if not delete:
                shutil.move(os.path.join(out_dir, domain, file), os.path.join(new_dir, domain, file))
            else:
                os.remove(os.path.join(out_dir, domain, file))



def find_files_to_clean(out_dir: str = OUTPUT_DIR):

    files_to_clean = defaultdict(list)
    issues = []

    for domain_dir in os.listdir(out_dir):
        domain_dir_path = os.path.join(out_dir, domain_dir)
        for file in os.listdir(domain_dir_path):
            if file.startswith('.'):
                continue
            with open(os.path.join(out_dir, domain_dir, file)) as f:
                text = f.readlines()
                try:
                    last_line = text[-1]
                except IndexError:
                    files_to_clean[domain_dir].append(file)
                    issues.append('empty')

                while last_line.strip() == '':
                    text = text[:-1]
                    last_line = text[-1]

                try:
                    last_log = json.loads(last_line)

                    if 'text' in last_log.keys():
                        files_to_clean[domain_dir].append(file)
                        issues.append('aborted')

                    elif 'reached_goal' in last_log.keys():
                        continue

                    elif 'Failed' in last_log.keys():
                        files_to_clean[domain_dir].append(file)
                        issues.append(last_log["Error_type"])

                    else:
                        print(f'File {os.path.join(out_dir, domain_dir, file)} does not match any covered keys for the last line. Check manually.')

                except json.decoder.JSONDecodeError:
                    files_to_clean[domain_dir].append(file)
                    issues.append("not_json_format")

    issue_counts = Counter(issues)
    print(issue_counts)

    return files_to_clean
