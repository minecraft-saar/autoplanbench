from diskcache import Cache
from typing import Union
from .openai_models import OpenAIChatModel


"""
"Dummy" LLM model class that is used to create the correct format and content for the 
batch API requests by creating the same initial history as created when making
individual API calls but without actually generating any output text
"""


class OpenAIChatBatch(OpenAIChatModel):

    def __init__(self,
                 model_name: str,
                 model_path: str,
                 max_tokens: int,
                 temp: float,
                 max_history: Union[int, None],
                 cache_directory: Union[str, None] = None,
                 seed: Union[int, None] = None,
                 logprobs: Union[bool, None] = True):
        """

        :param model_name: the general name of the model to identify the correct LLMModel subclass, e.g. openai_chat
        :param model_path: the path to the model weights if using local weights
                           or the original name of the model for using Huggingface or OpenAI models
        :param max_tokens: maximum number of output tokens
        :param temp: temperature
        :param max_history: maximum length of the dialogue history at each point of the interaction (only for chat models)
                            e.g. if max_history = 5 then the dialogue history that the model gets as input always consists
                            of the system prompt + the 5 last interactions, where an interaction is both the input and output
                            i.e. the length of the dialogue history is always 1 + 2 * max_history
        :param cache_directory:
        """

        super().__init__(model_name=model_name, model_path=model_path,
                         max_tokens=max_tokens, temp=temp,
                         max_history=max_history, cache_directory=cache_directory,
                         seed=seed,
                         logprobs=logprobs)

    def generate(self, user_message: str, assert_cache: bool = False) -> str:
        """
        :param user_message:
        :return:
        """
        # Only update the history for the generation
        prompt = self.prepare_for_generation(user_message)
        response_source = 'generated'

        return ''

