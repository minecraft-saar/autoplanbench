from typing import List, Union
from abc import ABC, abstractmethod
from diskcache import Cache

"""
Abstract class for LLMs that can be used as plan model and translation model in the planning games
Note:
- code documentation is mostly for the openai chat models
- completion models do not have a history, so self.history and self.initial_history stay always empty and can be ignored
- if using Conversation templates, the dialogue history is also not stored in self.history but in the conversation object
"""

class LLMModel(ABC):

    def __init__(self,
                 model_name: str,
                 model_path: str,
                 max_tokens: int,
                 temp: float,
                 max_history: Union[int, None],
                 cache_directory: Union[str, None] = None,
                 seed: Union[int, None] = None):
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
        :param seed: seed value for inference or None
        """

        self.model_name = model_name
        self.model_path = model_path
        self.max_tokens = max_tokens
        self.temp = temp
        self.max_history = max_history

        self.cache = cache_directory
        self.seed = seed

        self.history = []           # the dialogue history (stays empty if model uses a Conversation template that takes care of the history
        self.initial_history = []   # the initial history
        self.full_history_w_source = [] # history where each element has "source" key with the source of the message as value

        self.initial_prompt = ''    # the initial system prompt
        self.role_user = ''         # user role for specific model template, e.g. 'user', 'HUMAN'
        self.role_assistant = ''    # user role for specific model template, e.g. 'ASSISTANT'

        # Keep track of the total number of tokens that get processed during one run
        self.total_tokens = 0           # self.total_input_tokens + self.total_output_tokens
        self.total_input_tokens = 0
        self.total_output_tokens = 0
        # Keep track of the maximum number of tokens that get processed per call to the LLM
        self.max_input_tokens = 0
        self.max_output_tokens = 0
        self.max_total_tokens = 0

    @abstractmethod
    def init_model(self, init_prompt: str):
        """
        initialize a model with the initial prompt
        should take care of setting
        - self.initial_prompt
        - self.role_user
        - self.role_assistant
        - initializing self.initial_history
        :param init_prompt: initial prompt
        :return:
        """
        pass

    def update_init_prompt(self, new_init_prompt: str):
        """
        update the initial prompt, including the initial prompt in the dialogue history
        :param new_init_prompt: new initial prompt
        :return:
        """
        # need to adapt self.initial_prompt, self.history and self.initial_history
        self.initial_prompt = new_init_prompt
        self.initial_history[0]["content"] = new_init_prompt
        self.history = self.initial_history.copy()
        self.full_history_w_source.append({"role": "Warning: Updated init prompt",
                                           "content": "Warning: Updated init prompt"})

    @abstractmethod
    def add_examples(self, examples: List[dict]) -> None:
        """
        Add few-shot examples to the dialogue history
        Set the initial_history to the updated history
        :param examples:
        :return:
        """
        pass

    def get_history(self) -> List[dict]:
        """
        Returns the current dialogue history in the following format:
        [{"role": "system", "content": initial_prompt}, {"role": role, "content": content}, ...]
        :return:
        """
        return self.history

    def get_initial_history(self) -> List[dict]:
        """
        Returns the initial history, i.e. system prompt + few-shot examples, in the following format:
        [{"role": "system", "content": initial_prompt}, {"role": role, "content": content}, ...]
        :return:
        """
        return self.initial_history

    def reset_history(self):
        """
        Resets the dialogue history to initial history
        :return:
        """
        self.history = self.initial_history.copy()

    def update_history(self, new_history: List[dict]):
        """
        Resets the dialogue history to new_history
        :param new_history:
        :return:
        """
        self.history = new_history.copy()
        self.full_history_w_source.append({"role": "Warning: Updated history",
                                           "content": "Warning: Updated history"})
        self.full_history_w_source.extend(new_history)

    def get_initial_prompt(self) -> str:
        """
        returs the initial prompt
        :return:
        """
        return self.initial_prompt

    def generate(self, user_message: str, assert_cache: bool = False) -> str:
        """
        Takes care of
        - adding the user_message to the dialogue history
        - generating a reply by calling self._generate()
        - adding response to the dialogue history
        - updating dialogue history to not exceed max_history by calling self.update_history_length
        :param user_message:
        :return:
        """
        prompt = self.prepare_for_generation(user_message)
        response_source = 'generated'
        if self.temp == 0 and self.cache:
            cache_query = self.create_cache_query(prompt=prompt)
            with Cache(directory=self.cache) as cache:
                if assert_cache:
                    if not cache_query in cache:
                        print(cache_query)
                    assert cache_query in cache
                if cache_query in cache:
                    print('Retrieved from cache')
                    response = cache[cache_query]
                    response_source = 'cache'
                else:
                    response = self._generate(prompt)
                    cache[cache_query] = response

        else:
            response = self._generate(prompt)

        actual_response = self.clean_up_from_generation(model_response=response,
                                                        response_source=response_source)

        self.update_history_length()  # make sure history is not exceeding the max_history length

        return actual_response


    @abstractmethod
    def _generate(self, prompt: str):
        """
        Running the actual generation step, i.e. passing the input and all other necessary parameters to the
        generation function of the specific model
        Also includes tokenization and decoding if HF model
        :param prompt:
        :return:
        """
        pass

    @abstractmethod
    def create_cache_query(self, prompt: str):
        pass

    @abstractmethod
    def prepare_for_generation(self, user_message) -> str:
        pass

    @abstractmethod
    def clean_up_from_generation(self, model_response, response_source: Union[str, None] = None) -> str:
        """
        update the history based on the generated response
        optionally, update the self.full_history_w_source to include the source of the response (e.g. generated, cache, initial input)
        :param model_response:
        :param response_source:
        :return: the model response
        """
        pass


    def update_history_length(self):
        """
        Reduce the dialogue history such it includes only
        - the initial history (i.e. system prompt + potentially few-shot examples)
        - the last 2*max_history elements, i.e. the max_history last interactions
        :return:
        """
        actual_history_length = len(self.get_history()) - len(self.get_initial_history())
        if self.max_history is None:
            pass
        elif self.max_history > 0 and actual_history_length > self.max_history + 1:   # there is always the init prompt
            # one interaction are two entries in the history
            reduced_history = self.initial_history + self.history[-2*self.max_history:]
            self.update_history(reduced_history)
        elif self.max_history == 0:
            self.reset_history()
        else:
            pass        # then there still less entries in the history than max_history
