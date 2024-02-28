# Dataset

**Please note**: the data included in this directory is not the complete dataset. All few-shot examples are removed in order to avoid that the few-shot examples might get into the training data of LLMs. 

The **complete dataset** can be found [here](https://github.com/minecraft-saar/autoplanbench/tree/main/autoplanbench_dataset) and **can be opened with "benchplanauto"**. Additional details about the format of the files can also be found in there.

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





