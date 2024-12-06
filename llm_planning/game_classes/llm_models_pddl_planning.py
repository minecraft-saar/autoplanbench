from model_classes.planning_game_models import TranslationModel, PlanningModel

class PlanningModelBlocksWorld(PlanningModel):

    def __init__(self, model_type: str, model_param: dict, example_dict: dict, init_prompt: str):
        """

        :param model_type:
        :param model_param:
        :param example_dict:
        :param init_prompt:
        """
        self.model_param = model_param
        super().__init__(model_type=model_type, model_param=model_param, examples_dict=example_dict, init_prompt=init_prompt)


    def generate(self, user_message, assert_cache: bool = False) -> str:
        assert type(user_message) == str
        if not self.examples_chat:
            user_message = self.create_input_format_example(user_message)
        output = self.model.generate(user_message, assert_cache=assert_cache)
        return output




class TranslationModelBlocksWorld(TranslationModel):

    def __init__(self, model_type: str, model_param: dict, example_dict: dict, init_prompt: str):
        """

        :param model_type:
        :param model_param:
        :param example_dict:
        :param init_prompt:
        """
        super().__init__(model_type=model_type,
                         model_param=model_param,
                         examples_dict=example_dict,
                         init_prompt=init_prompt)




