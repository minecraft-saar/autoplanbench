from typing import Union
from openai import OpenAI
from .openai_models import OpenAIChatModel
import os


class OllamaModel(OpenAIChatModel):

    def __init__(self,
                 model_path: str,
                 max_tokens: int,
                 temperature: float,
                 max_history: Union[int, None],
                 cache_directory: Union[str, None] = None,
                 seed: Union[int, None] = None,
                 logprobs: Union[bool, None] = False,
                 api_key: Union[None, str] = 'ollama'):

        cache_directory = None
        self.api_key = api_key
        
        super().__init__(model_path=model_path,
                         max_tokens=max_tokens,
                         temperature=temperature,
                         max_history=max_history,
                         cache_directory=cache_directory,
                         seed=seed,
                         logprobs=logprobs)

    def create_client(self, credentials):
        host = os.environ.get('OLLAMA_HOST', '127.0.0.1:11434')
        port = host.split(':')[-1]
        if self.api_key is None:
            client = OpenAI()
        else:
            client = OpenAI(api_key=self.api_key, base_url=f'http://localhost:{port}/v1/')
        return client

    def _generate(self, prompt: str):
        assert self.seed is not None

        if self.seed:
            output = self.client.chat.completions.create(
                model=self.model_path,
                messages=self.history,
                temperature=self.temperature,
                max_tokens=self.max_tokens,
                seed=self.seed,
                logprobs=self.logprobs
            )
        else:
            output = self.client.chat.completions.create(
                model=self.model_path,
                messages=self.history,
                temperature=self.temperature,
                max_tokens=self.max_tokens,
                logprobs=self.logprobs
            )
        output = self.convert_completion_response(completion=output)

        return output

