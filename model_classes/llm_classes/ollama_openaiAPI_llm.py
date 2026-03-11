from typing import List, Union
from openai import OpenAI
from .openai_chat_llm import OpenAIChatModel


class OLlamaChatModel(OpenAIChatModel):

    def __init__(self,
                 model_name: str,
                 model_path: str,
                 max_tokens: int,
                 temp: float,
                 max_history: Union[int, None],
                 cache_directory: Union[str, None] = None,
                 seed: Union[int, None] = None):
        # Ollama OpenAI interface currently does not support logprobs (11. July 2024)
        super().__init__(model_name=model_name, model_path=model_path, max_tokens=max_tokens,
                         temp=temp, max_history=max_history, cache_directory=cache_directory, seed=seed, logprobs=False)

    def create_client(self):
        client = OpenAI(base_url='http://localhost:11434/v1/',
                             api_key='ollama')
        print('Loaded Ollama')
        return client

    def _generate(self, prompt: str):

        if self.seed:
            output = self.client.chat.completions.create(model=self.model_path, messages=self.history, temperature=self.temp, max_tokens=self.max_tokens, seed=self.seed)
        else:
            output = self.client.chat.completions.create(model=self.model_path, messages=self.history, temperature=self.temp,
             max_tokens=self.max_tokens)

        output = self.convert_completion_response(completion=output)

        return output



