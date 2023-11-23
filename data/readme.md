# AutoPlanBench Dataset

Dataset from the paper: [AutoPlanBench: Automatically generating benchmarks for LLM planners from PDDL](https://arxiv.org/abs/2311.09830)



## Domains 

**Blocksworld**<br>
* taken from: [PlanBench](https://github.com/karthikv792/LLMs-Planning/tree/main/plan-bench)
* modifications: none
* short description: The task is to rearrange to a set of blocks into specified stacks

**Depot**<br>
* taken from: [PlanBench](https://github.com/karthikv792/LLMs-Planning/tree/main/plan-bench)
* modifications: none
* short description: The task is to move crates between depots and distributors using a truck. In order to load and unload the crates a hoist at the specific place must be used. All depots and distributors are connected.

**Ferry**<br>
* taken from: [pddl-generators](https://github.com/AI-Planning/pddl-generators/tree/main)
* modifications: none
* short description: The task is to transport cars using a ferry to their goal locations. The ferry can only transport one car at a time and only move between non-equal locations. Non-equality is specified by state predicate for all pairs of locations

**Floortile**<br>
* taken from: [pddl-generators](https://github.com/AI-Planning/pddl-generators/tree/main)
* modifications: removed costs
* short description: A set of robots need to paint floortiles in a grid world using two colors. Robots can only paint floortiles that are located up or down the current position. There are four actions for moving, one for each direction and robots cannot move on painted tiles. 

**Goldminer**<br>
* taken from: [pddl-generators](https://github.com/AI-Planning/pddl-generators/tree/main)
* modifications: none
* short description: A robot needs to navigate a grid world to reach the location with gold. The locations are blocked by soft or hard rocks that need to be removed using a laser or a bomb (only soft rocks). Using the laser on the gold location destroys the gold. Connectivity of locations is defined by a predicate.

**Grid**<br>
* taken from: [pddl-generators](https://github.com/AI-Planning/pddl-generators/tree/main)
* modifications: none
* short description: A robot needs to move in a grid world and move different types of keys to specific locations. Locations can be locked and a matching key can be used to open them. Connectivity of locations is defined by a predicate.

**Grippers**<br>
* taken from: [pddl-generators](https://github.com/AI-Planning/pddl-generators/tree/main)
* modifications: none
* short description: A number of robots with two gripper hands need to transport balls between rooms. All rooms are connected.

**Logistics**<br>
* taken from: [PlanBench](https://github.com/karthikv792/LLMs-Planning/tree/main/plan-bench)
* modifications: none
* short description: The task is to transport packages either within cities using trucks or between cities using airplanes. All cities and locations are connected.

**Movie-complex**<br>
* taken from: based on the movie domain from [pddl-generators](https://github.com/AI-Planning/pddl-generators/tree/main)
* modifications: Yes, changed some preconditions, actions and predicates to ensure that buying snacks cannot happen at any arbitrary step
* short description: Adapted from the Movie domain where the task is to buy one of each of 5 kinds of snacks, rewind the movie and reset the counter to zero. The rewinding needs to happen before setting the counter but buying snack can happen at any state. In the adapted domain the snacks need to be bought before rewinding the movie and resetting the counter. If snacks are still missing afterwards the rewind action needs to undone before buying again.

**Rovers**<br>
* taken from: [pddl-generators](https://github.com/AI-Planning/pddl-generators/tree/main)
* modifications: none
* short description: A number of rovers need to navigate between waypoints, find substance samples, calibrate cameras, take pictures and communicate with a lander

**Satellite**<br>
* taken from: [pddl-generators](https://github.com/AI-Planning/pddl-generators/tree/main)
* modifications: none
* short description: The task is to let satellites take images of observations in specific modes. This involves turning on the instruments supporting the target mode, calibrate the satellite and instruments, adapting the direction and taking the images.

**Visitall**<br>
* taken from: [pddl-generators](https://github.com/AI-Planning/pddl-generators/tree/main)
* modifications: none
* short description: A robot needs to move in a grid world until having visited all specified goal locations. The robot can only move to connected locations and some locations in the grid are not available.

## Dataset

Please note: the data included in this directory is not the complete dataset. All few-shot examples are removed in order to avoid that the few-shot examples might get into the training data of LLMs. The complete dataset can be found [here](https://github.com/minecraft-saar/autoplanbench/tree/main/autoplanbench_dataset) and can be opened with "benchplanauto"

### data folder

The folder contains the data of the 12 domains that were used in the experiments. (Note, the StateReasoning approach was actually not used).

Each subfolder contains the following data:

* **domain.pddl**: the domain definition in PDDL
* **domain_description.json**: the natural language descriptions of the domain generated by AutoPlanBench
* **instance_object_mappings.json**: the mappings between object names in the original problems generated by the problem generators and the object names in the adapted problem files that are used for the LLM planning
* **translation_examples.json**: domain-specific few-shot examples for the T-LLM, i.e. for translating the actions predicted in natural language back to PDDL
* **translation_examples_dict.json**: a second version for domain-specific few-shot examples for the T-LLM; this version can be used e.g. if there are object names in the natural language descriptions that are not valid object names in PDDL (e.g. if using multi-token names). Then the translation is done in two steps. Note that these files have not been actually used in the experiments


* **adapted_instances**: the 21 problems selected from the problems in orig_problems given the constraints that they are 1) solvable and 2) their gold plans consist of 2 - 20 steps; problems differ from the orig_problems only w.r.t. their names
* **few_shot_examples_act**: few-shot examples for the Act planning approach 
* **few_shot_examples_basic**: few-shot examples for the Basic planning approach
* **few_shot_examples_cot**: 
    * cot_example_instance-X.json: the CoT example based on instance-X, obtained by removing the observations from the react_example_instance-X.json  
* **few_shot_examples_react**: 
    * react_template_instance-X.json: the template for a react example based on instance-X without the thoughts
    * react_example_instance-X.json: the React example based on instance-X with thoughts
    * **Note**: instance-0 means that the problem was designed manually
* **few_shot_examples_state_reasoning**: few-shot examples for the StateReasoning planning approach 
* **gold_plans**: optimal gold plans generated using A* search and lmcut for all problems in adapted_instances and in not_selected_by_filter (if solvable)
* **not_selected_by_filter**: contains all problems that were filtered out from the adapted_instances because 1) they are not solvable, 2) do not match the length constraint or 3) are left over after having selected 21 problems
* **orig_problems**: the original problems generated by problem generators

### data_planbench folder


The folder data_planbench contains all data from the experiments based on the domain descriptions created by [Valmeekam et al.](https://github.com/karthikv792/LLMs-Planning/tree/main/plan-bench). 

The **.yaml** files are the original configuration files from their repository. The original problems (i.e. before adapting the object names) for the blocksworld and logistics domain were taken from their repository as well and are not included in our data set. The **domain_description.json** files are created based on the 'intro' and 'mappings' in the original .yaml files.

The rest of the files and folders is the same as described above. 

### Format of the few-shot examples

The overall structure for the few-shot examples looks like this:
```
{
    "prefixes": {
        "input": "",
        "output": "",
    },
    "pos_examples": 
    [
        [example1_input,
        example1_output],
        [example2_input,
        example2_output],
        ...
    ]
}
```
"prefixes" are the prefixes that get attached at the beginning of each input and output respectively when presenting the examples to the model. When using an interactive planning approach this is always set to "", i.e. no prefixes are added.

"pos_examples" is a list of all few-shot examples, where each example is a 2-element list where the first element is the input and the second the output. For interactive planning approaches the output is usually set to "" because each examples presents a complete interaction by itself.



