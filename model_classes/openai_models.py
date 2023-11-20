from typing import List, Union
import openai
from .llm_models import LLMModel


class OpenAIChatModel(LLMModel):

    def __init__(self,
                 model_name: str,
                 model_path: str,
                 max_tokens: int,
                 temp: float,
                 max_history: Union[int, None],
                 cache_directory: Union[str, None] = None):
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

        super().__init__(model_name=model_name, model_path=model_path, max_tokens=max_tokens,
                         temp=temp, max_history=max_history, cache_directory=cache_directory)

    def init_model(self, init_prompt: str):
        self.initial_prompt = init_prompt
        self.history.append({"role": "system", "content": self.initial_prompt})
        self.initial_history = [{"role": "system", "content": self.initial_prompt}]
        self.role_user = "user"
        self.role_assistant = "assistant"

    def update_init_prompt(self, new_init_prompt: str):
        # need to adapt self.initial_prompt, self.history and self.initial_history
        self.initial_prompt = new_init_prompt
        self.initial_history[0]["content"] = new_init_prompt
        self.history = self.initial_history.copy()

    def add_examples(self, examples: List[dict]) -> None:
        """
        Add the examples from the input list to the dialogue history
        :param examples: list of examples, where each example is of the form:
                        {'role': 'user', 'content': content} or {'role': 'assistant', 'content': content}
        :return:
        """
        for example in examples:
            role_type = example['role']
            if role_type == 'user':
                role = self.role_user
            elif role_type == 'assistant':
                role = self.role_assistant
            else:
                raise ValueError
            content = example['content']
            self.history.append({"role": role, "content": content})
        self.initial_history = self.history.copy()

    def get_history(self) -> List[dict]:
        return self.history

    def get_initial_history(self) -> List[dict]:
        return self.initial_history

    def reset_history(self):
        self.history = self.initial_history.copy()

    def update_history(self, new_history: List[dict]):
        self.history = new_history.copy()


    def _generate(self, prompt: str):
        output = openai.ChatCompletion.create(model=self.model_path, messages=self.history, temperature=self.temp, max_tokens=self.max_tokens)

        response = output['choices'][0]['message']['content']

        return response

    def create_cache_query(self, prompt: str):
        # put together everything that is in the chat history (this already includes the prompt)
        query = ''
        for entry in self.history:
            for role, content in entry.items():
                query += f'{role}: {content} // '
        return query

    def prepare_for_generation(self, user_message) -> str:

        self.history.append({"role": self.role_user, "content": user_message})

        return user_message

    def clean_up_from_generation(self, model_response) -> str:
        # add the generated response to the history
        self.history.append({"role": self.role_assistant, "content": model_response})

        return model_response


class OpenAIComplModel(LLMModel):

    def __init__(self,
                 model_name: str,
                 model_path: str,
                 max_tokens: int,
                 temp: float,
                 max_history: Union[int, None],
                 cache_directory: Union[str, None] = None):
        """

        :param model_name:
        :param model_path:
        :param max_tokens:
        :param temp:
        :param max_history:
        :param cache_directory:
        """
        super().__init__(model_name=model_name, model_path=model_path, max_tokens=max_tokens,
                         temp=temp, max_history=max_history, cache_directory=cache_directory)

        if max_history > 0:
            print(f'Warning: Completion model has no chat history.')

    def init_model(self, init_prompt: str):
        self.initial_prompt = init_prompt

    def update_init_prompt(self, new_init_prompt: str):
        self.initial_prompt = new_init_prompt

    def add_examples(self, examples: List[dict]):
        print(f'Warning: Not possible to add chat-like examples for completion model.')

    def get_history(self) -> List[dict]:
        return self.history

    def get_initial_history(self):
        return [{'system': self.initial_prompt}]

    def reset_history(self):
        pass

    def update_history(self, new_history: List[dict]):
        pass


    def _generate(self, prompt: str):
        output = openai.Completion.create(model=self.model_path, prompt=prompt, temperature=self.temp, max_tokens=self.max_tokens)
        response = output['choices'][0]['text']
        return response


    def create_cache_query(self, prompt: str):
        # as there is no history, simply return the prompt as it is
        return prompt

    def prepare_for_generation(self, user_message) -> str:

        prompt = self.initial_prompt + '\n\n' + user_message

        return prompt

    def clean_up_from_generation(self, model_response) -> str:
        # no history and no further formatting so simply return the input
        return model_response


