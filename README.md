# AutoPlanBench

This repository contains the code for AutoPlanBench, a tool to convert PDDL domains and problems into natural language and to run different LLM planning approaches on them. 

Corresponding Paper: [AutoPlanBench: Automatically generating benchmarks for LLM planners from PDDL](https://arxiv.org/abs/2311.09830)


### Overview
This Readme contains the information needed to run the main parts of the project. More detailed information about the different options and configurations, the prompts, evaluation and additional scripts can be found in the [Wiki](https://github.com/minecraft-saar/LLM-planning-PDDL-domains/wiki).

Readme:
* [Requirements](https://github.com/minecraft-saar/LLM-planning-PDDL-domains/blob/main/README.md#requirements)
* [AutoPlanBench Overview](https://github.com/minecraft-saar/autoplanbench#autoplanbench-overview)
* [Running the Pipeline](https://github.com/minecraft-saar/autoplanbench#running-the-complete-pipeline)
* [Running individual steps](https://github.com/minecraft-saar/autoplanbench/blob/main/README.md#running-individual-steps)
    * [Generating domain descriptions](https://github.com/minecraft-saar/autoplanbench#generating-the-domain-descriptions)
    * [Generating adapted instances, gold plans, translation examples](https://github.com/minecraft-saar/autoplanbench#generating-adapted-instances-gold-plans-and-translation-examples)
    * [Generating planning few-shot examples](https://github.com/minecraft-saar/autoplanbench#generating-planning-few-shot-examples)
    * [Generating planning configurations](https://github.com/minecraft-saar/autoplanbench#generating-planning-configurations)
    * [Running LLM planning](https://github.com/minecraft-saar/autoplanbench#running-llm-planning)
    * [Evaluation](https://github.com/minecraft-saar/autoplanbench#evaluation)

## Requirements
* `conda install pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia`
* `pip install -e .` in the main folder of the repository
* download [fastdownward](https://www.fast-downward.org/Releases/22.12)
* get and compile [VAL](https://github.com/KCL-Planning/VAL)
* an OpenAI account (it is theoretically also possible to run other models such as llama or vicuna. However, we did not test these models on the tasks and cannot tell whether they successfully generate the formats required based on the prompts and few-shot examples from the current repository)

If running vicuna with bitsandbytes it might be necessary to manually install the transformers library from source.

Create a file `set_env.py` in the main directory and specify the environment variables for openai and the planning tools like this:
```
import os
def set_env_vars():
    os.environ['OPENAI_API_KEY'] = '[KEY]'
    os.environ['FAST_DOWNWARD'] = '[PATH]/fast-downward-22.12'
    os.environ['VAL'] = '[PATH]/VAL'
    os.environ['TOKENIZERS_PARALLELISM'] = 'false'

```

## AutoPlanBench Overview
<center>
    <img src="images/autoplanbench.svg" width="40%" />
</center>

## Required input files

A .pddl domain description and .pddl problem files for the domain are required as input files. Create a folder in the `data` directory with the domain name as folder name. Add the domain description to this folder and name it `domain.pddl`. The problem files should be placed in a subfolder called `orig_problems`. 

The `DATA_DIR` and `ORIG_INST_FOLDER` variables in [utils/paths.py](https://github.com/minecraft-saar/autoplanbench/blob/main/utils/paths.py) can be changed if another data directory or another name for the subfolder with the problem instances is used. Alternatively different directories can be specified when running run_autoplanbench.py

## Running the complete Pipeline

In order to run the complete AutoPlanBench pipeline including the generation of the natural language domain descriptions, all required files and running LLM planning and evaluation run:

`python run_autoplanbench.py -d [domain_name] -n [n_instances] --p-llm [planning_llm] --nl-llm [pddl2nl_llm]`

* `domain_name`: name of the domain; needs to match the name of the subfolder in the data folder where the domain file is located
* `n_instances`: number of instances that should be processed (set to number of instances to run planning on + 1 for few-shot example)
* `planning-llm`: the name of the LLM to use for the LLM planning and for translating the natural language output back to PDDL (in order to use two different models for planning and translation follow the individual steps approach below); e.g. 'gpt-4' or 'gpt-3.5-turbo'
* `nl-llm`: the name of the LLM to use for the generation of the natural language domain descriptions and the ReAct and CoT few-shot examples (currently only 

This will run the same experiments as reported in the paper with the same parameters. In order to change the parameters, the following additional arguments can be specified.

  Additional optional arguments:
  * `--app`: Tuple with the names of all planning approaches to run and evaluate. Defaults to ("basic", "cot", "react", "act")
  * `--data`: Path to the directory containing all data. Defaults to utils.paths.DATA_DIR
  * `--orig`: Path to the directory with the original instances. Defaults to utils.paths.DATA_DIR/domain_name/ORIG_INST_FOLDER
  * `--len-i`: Select only instances for which the length of the optimal plan is within the specified limits (inclusive). Default is (2, 20)
  * `--len-e`: Select the few-shot example by selecting randomly one of the instances with an optimal plan within the specified limits (inclusive). Default is (2, 5)
  * `--len-react`: Number of steps in the ReAct (and CoT) example; Default is 3
  * `--timeout`: Time (in sec) to let fast downward try to find an optimal gold plan. If no plan is found within this time limit the problem is treated as unsolvable, i.e. not considered. Default is 1200, i.e. 20 minutes. 
  * `--overwrite`: Whether to re-run the adaption and plan generation for instances for which they already exist. Default is False
  * `--desc`: Approach to create the precondition and effect descriptions: 'medium', 'long' or 'short'. Defaults to 'medium'. (see [here](https://github.com/minecraft-saar/autoplanbench/wiki/Generating-Natural-Language-Descriptions#composing-domain-descriptions-from-fragments) for mor details)
  * `--to-text`: Type of few-shot examples to use for creating the natural language domain descriptions: 'extended', 'annotated', 'full', 'simple; Defaults to 'extended' (see [here](https://github.com/minecraft-saar/autoplanbench/wiki/Generating-Natural-Language-Descriptions#prompts-and-examples-for-generating-the-natural-language-fragments) for more details)
  * `--ms-i`: Max number of steps the planning LLM is allowed to predict in the interactive approaches; defaults to 24
  * `--br-i`: Break limit for interactive approaches, i.e. if br-i consecutive predictions are not executable then stop; defaults to 5
  * `--ms-ni`: Max number of steps the planning LLM is allowed to predict in the non-interactive approaches; defaults to 24
  * `--br-ni`: Break limit for non-interactive approaches, i.e. if br-ni consecutive predictions are not executable then stop; defaults to 5
  

## Running Individual Steps 

### Generating the domain descriptions

### Generating adapted instances, gold plans and translation examples

### Generating planning few-shot examples

### Generating planning configurations 

### Running LLM planning

### Evaluation
