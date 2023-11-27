# AutoPlanBench

This repository contains the code for AutoPlanBench, a tool to convert PDDL domains and problems into natural language and to run different LLM planning approaches on them. 

Corresponding Paper: [AutoPlanBench: Automatically generating benchmarks for LLM planners from PDDL](https://arxiv.org/abs/2311.09830)


### Overview
This Readme contains the information needed to run the main parts of the project. More detailed information about the different options and configurations, the prompts, evaluation and additional scripts can be found in the [Wiki](https://github.com/minecraft-saar/LLM-planning-PDDL-domains/wiki).

Readme:
* [Requirements](https://github.com/minecraft-saar/LLM-planning-PDDL-domains/blob/main/README.md#requirements)
* [Converting PDDL to NL](https://github.com/minecraft-saar/LLM-planning-PDDL-domains/blob/main/README.md#converting-pddl-to-natural-language)
* [LLM Planning](https://github.com/minecraft-saar/LLM-planning-PDDL-domains/blob/main/README.md#llm-planning)
    * [Planning Configs](https://github.com/minecraft-saar/LLM-planning-PDDL-domains/blob/main/README.md#config-file)
    * [LLM Configs](https://github.com/minecraft-saar/LLM-planning-PDDL-domains/blob/main/README.md#llm-config)
    * [Few Shot examples](https://github.com/minecraft-saar/LLM-planning-PDDL-domains/blob/main/README.md#few-shot-examples)

## Requirements
* `conda install pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia`
* `pip install -e .` in the main folder of the repository
* download [fastdownward](https://www.fast-downward.org/Releases/22.12)
* get and compile [VAL](https://github.com/KCL-Planning/VAL)
* an OpenAI account (it is theoretically also possible to run other models such as llama or vicuna. However, we did not test these models on the tasks and cannot tell whether they successfully generate the formats required based on the prompts and few-shot examples from the current repository)

If running vicuna with bitsandbytes it might be necessary to manually install the transformers library from source.

the following environment variables need to be set
* 'OPENAI_API_KEY'
* 'FAST_DOWNWARD', 'VAL'
* 'TOKENIZERS_PARALLELISM' = 'false'

Create a file `set_env.py` in the main directory that looks like this:
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
    <img src="static/images/autoplanbench/autoplanbench.svg" width="60%" />
</center>

## Running the complete Pipeline


## Running step-by-step 


