import copy
from typing import List, Union
from openai import OpenAI
from ..llm_base_class import LLMModel
from openai.types.chat import ChatCompletion
from utils.set_env import set_env_vars


class OpenAIChatModel(LLMModel):

    def __init__(self,
                 model_path: str,
                 model_name: str = 'openai_chat',
                 max_history: Union[int, None] = None,
                 temperature: float = 0.0,
                 cache_directory: Union[str, None] = 'default',
                 max_tokens: Union[None, int] = None,
                 seed: Union[int, None] = None,
                 logprobs: bool = True,
                 additional_openai_parameters: Union[dict, None] = None,
                 openai_credentials: Union[dict, None] = None,
                 reasoning_model: bool = False):
        """

        :param model_path: the name of the open AI model
        :param max_tokens: maximum number of output tokens
        :param temperature: temperature
        :param max_history: maximum length of the dialogue history at each point of the interaction
                            e.g. if max_history = 5 then the dialogue history that the model gets as input always consists
                            of the system prompt + the 5 last interactions, where an interaction is both the input and output
                            i.e. the length of the dialogue history is always 1 + 2 * max_history
                    set to None to keep the complete history
        :param cache_directory:
        :param seed:
        :param logprobs:
        :param additional_openai_parameters:
        :param openai_credentials:
        """
        set_env_vars()
        super().__init__(model_type=model_name,
                         model_path=model_path,
                         max_tokens=max_tokens,
                         temp=temperature,
                         max_history=max_history,
                         cache_directory=cache_directory,
                         seed=seed,
                         reasoning_model=reasoning_model)
        self.logprobs = logprobs
        self.client = self.create_client(openai_credentials)

        self.additional_api_parameters = additional_openai_parameters if additional_openai_parameters else dict()

    def create_client(self, credentials: Union[dict, None]):
        if credentials:
            client = OpenAI(**credentials)
        else:
            client = OpenAI()
        return client

    def init_model(self, init_prompt: str, examples: List[dict]):
        self.initial_prompt = init_prompt
        if not init_prompt:
            self.initial_history = []
        else:
            self.history.append({"role": "system", "content": self.initial_prompt})
            self.full_history_w_source.append({"role": "system", "content": self.initial_prompt, "source": "initial_input"})
            self.initial_history = [{"role": "system", "content": self.initial_prompt}]
        self.role_user = "user"
        self.role_assistant = "assistant"

        self.add_examples(examples)

    def convert_example_format(self, examples: List[dict]):
        """

        :param examples:
        :return:
        """
        formatted_examples = []

        for example in examples:
            if 'user' in example.keys() and 'assistant' in example.keys():
                input = example['user']
                output = example['assistant']
            elif 'input' in example.keys() and 'output' in example.keys():
                input = example['input']
                output = example['output']
            else:
                raise ValueError

            formatted_examples.append({"role": "user", "content": input})
            formatted_examples.append({"role": "assistant", "content": output})

        return formatted_examples

    def add_examples(self, examples: List[dict]) -> None:
        """
        Add the examples from the input list to the dialogue history
        :param examples: list of examples, where each example is of the form:
                        {'role': 'user', 'content': content} or {'role': 'assistant', 'content': content}
        :return:
        """
        formatted_examples = self.convert_example_format(examples=examples)

        for example in formatted_examples:
            role_type = example['role']
            if role_type == 'user':
                role = self.role_user
            elif role_type == 'assistant':
                role = self.role_assistant
            else:
                raise ValueError
            content = example['content']
            self.history.append({"role": role, "content": content})
            self.full_history_w_source.append({"role": role, "content": content, "source": "initial_input"})
        self.initial_history = self.history.copy()

    def _generate(self, prompt: str):

        api_parameters = copy.deepcopy(self.additional_api_parameters)
        api_parameters['model'] = self.model_path
        api_parameters['messages'] = self.history
        api_parameters['temperature'] = self.temperature
        api_parameters['logprobs'] = self.logprobs
        if self.seed:
            api_parameters['seed'] = self.seed
        if self.max_tokens:
            api_parameters['max_tokens'] = self.max_tokens

        output = self.client.chat.completions.create(**api_parameters)

        output = self.convert_completion_response(completion=output)

        return output

    def update_token_counts(self, usage_dict: dict):
        """
        Update the processed token counts based on the information returned by the Chat model
        :param usage_dict:
        :return:
        """
        self.total_input_tokens += usage_dict['prompt_tokens']
        self.total_output_tokens += usage_dict['completion_tokens']
        self.total_tokens += usage_dict['total_tokens']
        self.max_input_tokens = usage_dict['prompt_tokens'] if usage_dict['prompt_tokens'] > self.max_input_tokens else self.max_input_tokens
        self.max_output_tokens = usage_dict['completion_tokens'] if usage_dict['completion_tokens'] > self.max_output_tokens else self.max_output_tokens
        self.max_total_tokens = usage_dict['total_tokens'] if usage_dict['total_tokens'] > self.max_total_tokens else self.max_total_tokens

    def create_cache_query(self, prompt: str):
        # put together everything that is in the chat history (this already includes the prompt)
        text_query = ''
        for entry in self.history:
            for role, content in entry.items():
                text_query += f'{role}: {content} // '
        # Add the seed as part of the cache query
        cache_query = (text_query, self.seed)

        return cache_query

    def prepare_for_generation(self, user_message) -> str:
        """
        Add the user message to the history that is passed to the model as input
        :param user_message:
        :return:
        """
        self.history.append({"role": self.role_user, "content": user_message})
        self.full_history_w_source.append({"role": self.role_user, "content": user_message, "source": "user"})

        return user_message

    def clean_up_from_generation(self, model_response: dict, response_source: Union[str, None] = None) -> str:
        """
        extract the part of interest from the model response,
            e.g. get the "message" from the object returned by the OpenAI API
        update the history based on the generated response
        optionally, update the self.full_history_w_source to include the source of the response (e.g. generated, cache, initial input)
        update token counts
        :param model_response:
        :param response_source:
        :return:
        """

        # text part of the response
        text_output = model_response['choices'][0]['message']['content']

        # add the generated response to the history
        self.history.append({"role": self.role_assistant, "content": text_output})
        self.full_history_w_source.append({"role": self.role_assistant, "content": text_output, "source": response_source})

        # update token counts
        self.update_token_counts(model_response['usage'])

        return text_output

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
            current_choice['message'] = {'content': choice.message.content,
                                         'role': choice.message.role,
                                         'function_call': choice.message.function_call,
                                         'tool_calls': choice.message.tool_calls}
            if self.logprobs:
                current_choice['logprobs'] = []
                for token_logprob in choice.logprobs.content:
                    current_token = {'token': token_logprob.token,
                                     'bytes': token_logprob.bytes,
                                     'logprob': token_logprob.logprob,
                                     'top_logprobs': token_logprob.top_logprobs}
                    current_choice['logprobs'].append(current_token)
            else:
                current_choice['logprobs'] = None
            dict_response['choices'].append(current_choice)

        return dict_response
