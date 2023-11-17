from setuptools import setup

with open('requirements.txt', 'r', encoding='utf-8') as r:
    requirements = [line.strip() for line in r]

setup(name='llm-pddl-planning',
      packages=['llm_planning', 'model_classes', 'pddl_processing', 'utils'],
      install_requires=requirements
      )
