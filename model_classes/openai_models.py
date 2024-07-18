from typing import List, Union
from openai import OpenAI
from model_classes.llm_models import LLMModel
from openai.types.chat import ChatCompletion


class OpenAIChatModel(LLMModel):

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

        super().__init__(model_name=model_name, model_path=model_path, max_tokens=max_tokens,
                         temp=temp, max_history=max_history, cache_directory=cache_directory, seed=seed)
        self.logprobs = logprobs
        self.client = self.create_client()

    def create_client(self):
        client = OpenAI()
        return client

    def init_model(self, init_prompt: str):
        self.initial_prompt = init_prompt
        if not init_prompt:
            self.initial_history = []
        else:
            self.history.append({"role": "system", "content": self.initial_prompt})
            self.full_history_w_source.append({"role": "system", "content": self.initial_prompt, "source": "initial_input"})
            self.initial_history = [{"role": "system", "content": self.initial_prompt}]
        self.role_user = "user"
        self.role_assistant = "assistant"

    def update_init_prompt(self, new_init_prompt: str):
        # need to adapt self.initial_prompt, self.history and self.initial_history
        self.initial_prompt = new_init_prompt
        self.initial_history[0]["content"] = new_init_prompt
        self.history = self.initial_history.copy()
        self.full_history_w_source.append({"role": "Warning: Updated init prompt",
                                           "content": "Warning: Updated init prompt"})

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
            self.full_history_w_source.append({"role": role, "content": content, "source": "initial_input"})
        self.initial_history = self.history.copy()

    def get_history(self) -> List[dict]:
        return self.history

    def get_initial_history(self) -> List[dict]:
        return self.initial_history

    def reset_history(self):
        self.history = self.initial_history.copy()

    def update_history(self, new_history: List[dict]):
        self.history = new_history.copy()
        self.full_history_w_source.append({"role": "Warning: Updated history",
                                           "content": "Warning: Updated history"})
        self.full_history_w_source.extend(new_history)

    def _generate(self, prompt: str):

        if self.seed:
            output = self.client.chat.completions.create(model=self.model_path, messages=self.history, temperature=self.temp, max_tokens=self.max_tokens, seed=self.seed, logprobs=self.logprobs)
        else:
            output = self.client.chat.completions.create(model=self.model_path, messages=self.history, temperature=self.temp,
             max_tokens=self.max_tokens, logprobs=self.logprobs)

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



class OpenAIComplModel(LLMModel):

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

        :param model_name:
        :param model_path:
        :param max_tokens:
        :param temp:
        :param max_history:
        :param cache_directory:
        """
        print(f'Warning: Completion model type is no longer maintained and uses old caching method!!')
        super().__init__(model_name=model_name, model_path=model_path, max_tokens=max_tokens,
                         temp=temp, max_history=max_history, cache_directory=cache_directory,
                         seed=seed)
        self.logprobs = logprobs
        self.client = self.create_client()

        if max_history > 0:
            print(f'Warning: Completion model has no chat history.')

    def create_client(self):
        client = OpenAI()
        return client

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
        if self.seed:
            output = self.client.chat.completions.create(model=self.model_path, messages=prompt, temperature=self.temp, max_tokens=self.max_tokens, seed=self.seed)
        else:
            output = self.client.chat.completions.create(model=self.model_path, messages=prompt, temperature=self.temp,
                                              max_tokens=self.max_tokens)
        response = output['choices'][0]['text']
        return response


    def create_cache_query(self, prompt: str):
        # as there is no history, simply return the prompt as it is
        return prompt

    def prepare_for_generation(self, user_message) -> str:

        prompt = self.initial_prompt + '\n\n' + user_message

        return prompt

    def clean_up_from_generation(self, model_response, response_source: Union[str, None] = None) -> str:
        # no history and no further formatting so simply return the input
        return model_response

