# Evaluation


### Evaluate output of an experiment
The file `run_evalution.py` in the main project directory takes care of the evaluation of the outputs generated by
the LLMs and can be run in the following way: `python run_evaluation.py -d [path_data_to_eval]`.

The model outputs that should be evaluated can be specified in a json file of the following form:

```
{
  "data_to_eval": [
    {
      "generated_plans_path": [PATH TO OUTPUT DIR],
      "evaluation_results_file": [PATH TO EVALUATION FILE],
      "gold_plan_dir": [PATH TO DIR WITH GOLD PLANS],
      "is_complete_plan": True | False
    },
    {
      "generated_plans_path": [PATH TO OUTPUT DIR],
      "evaluation_results_file": [PATH TO EVALUATION FILE],
      "gold_plan_dir": [PATH TO DIR WITH GOLD PLANS],
      "is_complete_plan": True | False
    },
    ...
   }
```
where 
* "generated_plans_path": the path to a directory containing the output files of running the LLM planning
* "evaluation_results_file": the path to the file with the evaluation results that gets created
* "gold_plan_dir": path to the directory containing all gold plans for each of the instances in "generated_plans_path" directory
* "is_complete_plan": True if the plans were generated using a non-interactive planning approache, False otherwise

### Create Overview over different experiments

The `evaluation_overview.py` script puts all evaluation results from the specified folder into one table for comparisons.

`python evaluation_overview.py -d [eval_folder] -o [overview_file]`

where eval_folder is the path to the folder with the evaluation results created by run_evaluation.py and overview_file is the path to the file to be created. 

### Analyze Characteristics of Instances

The script `analysis_instances.py` generates an overview over the number of objects, plan lengths, goals facts and size of initial states of the problem instances of all domains in the data directory.

`python analysis_instances.py -i [data_dir] -o [output_file]`

where `data_dir` is optional and defaults to utils.paths.DATADIR

### Evaluation Metrics

Different meaning of "successful" / "successfully solved" for incremental and non-incremental approaches 
* non incremental approaches: successful if the generated plan is executable and ends in the goal state; (if backprompting is used, then it is successful if any plan within the specified number of max. generated plans is successful)
* incremental approaches: successful if the model generates a sequences of actions that reaches the goal (but can include wrong predictions) and it correctly predicts to have reached the goal 

**n_instances**:
* number of evaluated instances

**n_solved_successfully**:<br>
* number of successfully solved instances

**n_solved_without_mistake**:<br>
* number of instances solved without any mistake 
* mistakes can be: action that is not executable and (in the incremental approaches) predicting to have reached the goal state when this is not the case
* for non incremental approaches this is always equal to n_solved_successfully

**n_reached_goal_without_stopping**:<br>
* number of instances where the goal state is reached but the model did not predict to be finished, i.e. does not predict the plan end tag or "You are finshed" 
* note: if the goal state is reached several times and at the end the model successfully predicts to be finished then these instances are not counted here

**n_predicted_goal_erroneously**:<br>
* number of instances where the model predicted to be in the goal state when it was not the case
* 'NA' for non incremental approach

**unsuccessful_bec_not_reached_goal**:<br>
* number of instances that are executable / do not include mistakes but do not reach the goal state (at any point in time)

**unsuccessful_bec_not_recog_goal**:<br>
* number of instances that are executable / do not include mistakes and reached the goal state at some point but did not stop there

**unsuccessful_bec_not_executable**:<br>
* number of instances that are not executable / where the first mistake is a non-executable action

**n_look_arounds**:<br>
* number of "look_around" actions
* 'NA' for non incremental approach

**n_look_arounds_after_mistakes**:<br>
* number of "look_around" actions that occur directly after a prediction mistake (i.e. non executable action or wrong finished prediction)
* 'NA' for non incremental approach

**avg_interaction_length**:<br>
* average of the lengths of the interactions:
* incremental approaches: length of interaction = number of actions predicted by the model, counting also the "You are finished" output
* non incremental approach: length of the interaction = number of complete plans (i.e. back prompting attempts) generated by the model

**avg_optimal_plan_length**:<br>
* average over the lengths of the (optimal) gold plans (**Note**: if the provided gold plans are not optimal, this is of course also not the optimal average length)

**avg_length_successful_interactions**:<br>
* average of the lengths of the interactions that are successful

**avg_length_unsuccessful_interactions**:<br>
* average of the lengths of the interactions that are not successful

**avg_length_executable_plans**:<br>
* average of the lengths of the actual plans, i.e. average over the lengths of all successful plans
* in the non incremental approach: actual plan length = number of actions in the successful plans
* in the incremental approach:a ctual plan length = number of executable actions in the successful interactions (excluding look around and "finished")

**avg_factor_plan_length**:<br>
* for each of the instances the factor of the predicted plan length compared to the gold plan length is computed by dividing the length of the actual plan (see above) by the length of the gold plan
* factor gets averaged over all instances

**successful_tasks**:<br>
* list of the problem IDs of the instances that are solved successfully

**unsuccessful_tasks**:<br>
* list of the problem IDs of instances that are not solved successfully

**successful_tasks_without_mistakes**:<br>
* list of the problem IDs of the instances that are solved successfully without any mistake 
* for the non incremental approach this is always equal to the successful_tasks

**successful_tasks_with_mistakes**:<br>
* list of the problem IDs of instances that are solved successfully but include any kind of mistake
* for non incremental approach this is not possible
