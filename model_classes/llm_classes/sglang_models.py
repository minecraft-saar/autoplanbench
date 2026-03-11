import os
from typing import Union
from openai import OpenAI
from openai.types.chat import ChatCompletion
from .openai_models import OpenAIChatModel


class SGLangModel(OpenAIChatModel):

    def __init__(self,
                 model_path: str,
                 max_tokens: int,
                 temperature: float = 0.7,
                 top_p=0.8,
                 min_p=0,
                 top_k=20,
                 presence_penalty: int = 0,
                 max_history: Union[int, None] = None,
                 seed: Union[int, None] = None,
                 reasoning_model: bool = False,
                 api_key: Union[None, str] = 'None',
                 cache_directory: Union[str, None] = 'default'):

        cache_directory = None
        self.api_key = 'None'

        super().__init__(model_path=model_path,
                         max_tokens=max_tokens,
                         temperature=temperature,
                         max_history=max_history,
                         cache_directory=cache_directory,
                         seed=seed,
                         logprobs=False,
                         reasoning_model=reasoning_model)

        self.top_p = top_p
        self.min_p = min_p
        self.top_k = top_k
        self.presence_penalty = presence_penalty

        self.seed = 1

    def create_client(self, credentials):
        host = os.environ.get('SERVER_END_POINT')
        assert host is not None
        print(host)
        if self.api_key is None:
            client = OpenAI()
        else:
            client = OpenAI(api_key=self.api_key, base_url=host)
        return client

    def _generate(self, prompt: str):
        print(self.model_path)
        output = self.client.chat.completions.create(
            model=self.model_path,
            messages=self.history,
            temperature=self.temperature,
            max_tokens=self.max_tokens,
            top_p=self.top_p,
            # min_p=self.min_p,
            presence_penalty=self.presence_penalty,
            extra_body={
                "top_k": self.top_k,
                "chat_template_kwargs": {"enable_thinking": False},
            }
        )

        output = self.convert_completion_response(completion=output)

        return output


class SGLangThinking(SGLangModel):

    def __init__(self,
                 model_path: str,
                 max_tokens: int,
                 temperature: float = 0.6,
                 top_p=0.95,
                 min_p=0,
                 top_k=20,
                 presence_penalty: int = 0,
                 max_history: Union[int, None] = None,
                 seed: Union[int, None] = None,
                 api_key: Union[None, str] = 'None',
                 cache_directory: Union[str, None] = 'default'):

        super().__init__(model_path=model_path,
                         max_tokens=max_tokens,
                         temperature=temperature,
                         top_p=top_p,
                         top_k=top_k,
                         presence_penalty=presence_penalty,
                         max_history=max_history,
                         cache_directory=cache_directory,
                         seed=seed,
                         api_key=api_key,
                         reasoning_model=True)

        assert self.reasoning_model
        self.last_reasoning = None
        self.api_key = 'None'


    def _generate(self, prompt: str):

        output = self.client.chat.completions.create(
            model=self.model_path,
            messages=self.history,
            temperature=self.temperature,
            max_tokens=self.max_tokens,
            top_p=self.top_p,
            presence_penalty=self.presence_penalty,
            extra_body={
                "top_k": self.top_k,
                "chat_template_kwargs": {"enable_thinking": True},
            }
        )

        reasoning = output.choices[0].message.reasoning_content
        self.last_reasoning = reasoning

        output = self.convert_completion_response(completion=output)

        return output

    def convert_completion_response(self, completion: ChatCompletion) -> dict:
        """
        Converts a Completion Object returned by the OpenAI API into a dictionary with that
        consists only of standard python object types
        :param completion:
        :return:
        """
        dict_response = dict()
        dict_response['id'] = completion.id
        dict_response['created'] = completion.created
        dict_response['model'] = completion.model
        dict_response['system_fingerprint'] = completion.system_fingerprint
        dict_response['usage'] = {"completion_tokens": completion.usage.completion_tokens,
                                  "prompt_tokens": completion.usage.prompt_tokens,
                                  "total_tokens": completion.usage.total_tokens}
        dict_response['object'] = completion.object
        dict_response['choices'] = []
        for choice in completion.choices:
            current_choice = dict()
            current_choice['finish_reason'] = choice.finish_reason
            current_choice['index'] = choice.index
            current_choice['message'] = {
                'content': choice.message.content,
                'reasoning_content': choice.message.reasoning_content,
                'role': choice.message.role}

            current_choice['logprobs'] = None
            dict_response['choices'].append(current_choice)

        return dict_response