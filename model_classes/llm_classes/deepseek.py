import os
from copy import deepcopy
from typing import List, Union
from openai import OpenAI
from openai.types.chat import ChatCompletion
from llm_models.llm_classes.openai_models import OpenAIChatModel


class DeepSeekReasonModel(OpenAIChatModel):

    def __init__(self,
                 model_path: str = 'deepseek-reasoner',
                 model_name: str = 'deepseek',
                 max_history: Union[int, None] = None,
                 temperature: float = 0.0,
                 cache_directory: Union[str, None] = 'default',
                 # TODO
                 max_tokens: Union[None, int] = None,
                 seed: Union[int, None] = None,
                 additional_openai_parameters: Union[dict, None] = None,
                 openai_credentials: Union[dict, None] = None):

        super().__init__(model_path=model_path,
                         model_name=model_name,
                         max_history=max_history,
                         max_tokens=max_tokens,
                         seed=seed,
                         temperature=temperature,
                         cache_directory=cache_directory,
                         additional_openai_parameters=additional_openai_parameters,
                         openai_credentials=openai_credentials,
                         reasoning_model=True)

        self.last_reasoning = None

    def create_client(self, credentials: Union[dict, None]):
        if credentials:
            client = OpenAI(**credentials)
        else:
            client = OpenAI(
                api_key=os.environ.get('DEEPSEEK_API_KEY'),
                base_url="https://api.deepseek.com")

        return client

    def _generate(self, prompt: str):

        api_parameters = deepcopy(self.additional_api_parameters)
        api_parameters['model'] = self.model_path
        api_parameters['messages'] = self.history
        if self.seed:
            api_parameters['seed'] = self.seed
        if self.max_tokens:
            api_parameters['max_tokens'] = self.max_tokens

        #print(api_parameters)
        output = self.client.chat.completions.create(**api_parameters)
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
