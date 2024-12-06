import time
import torch
from typing import List, Union, Tuple
from transformers import AutoTokenizer, AutoModelForCausalLM
from fastchat.conversation import Conversation, SeparatorStyle
from abc import ABC, abstractmethod
from .llm_models import LLMModel


class VicunaModel(LLMModel):

    def __init__(self,
                 model_name: str,
                 model_path: str,
                 cuda_n: int,
                 load_method: str,
                 temp: float,
                 max_history: Union[int, None],
                 max_tokens: int = 50,
                 cache_directory: Union[str, None] = None
                 ):
        """

        :param model_name: the general name of the model to identify the correct LLMModel subclass, e.g. vicuna
        :param model_path: the path to the model weights if using local weights
                           or the original name of the model for using Huggingface
        :param cuda_n: number/name of the GPU to use
        :param load_method: which approach to use for loading the model
                            can be '8bit' or '4bit' for compression using bitsandbytes
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

        self.load_method = load_method

        self.conversation: Conversation = None
        self.init_prompt = ''

        self.device_mapping, self.device = self.device_set_up(cuda_n=cuda_n)
        self.model, self.tokenizer = self.load_model()

    def device_set_up(self, cuda_n):
        """
        Set the device for running the model
        :param cuda_n:
        :return:
        """
        device = f'cuda:{cuda_n}' if torch.cuda.is_available() else 'cpu'
        torch.cuda.set_device(device)
        device_mapping = {'': cuda_n}
        print(device)
        return device_mapping, device

    def load_model(self) -> Tuple[AutoModelForCausalLM, AutoTokenizer]:
        """
        Loads the model and the tokenizer
        :return:
        """
        print('Loading')
        start_time = time.time()
        tokenizer = AutoTokenizer.from_pretrained(self.model_path)
        if self.load_method == '8bit':
            model = AutoModelForCausalLM.from_pretrained(self.model_path, device_map=self.device_mapping, load_in_8bit=True)
        elif self.load_method == '4bit':
            model = AutoModelForCausalLM.from_pretrained(self.model_path, device_map=self.device_mapping, load_in_4bit=True)
        else:
            model = AutoModelForCausalLM.from_pretrained(self.model_path)
            model.to(self.device)
        end_time = time.time()
        loading_time = end_time - start_time

        print(f'Loading time: {loading_time}')

        return model, tokenizer

    def init_model(self, init_prompt):
        self.init_prompt = init_prompt
        self.initial_history = []               # system prompt comes from the conversation template
        self.reset_history()
        self.role_user = self.conversation.roles[0]
        self.role_assistant = self.conversation.roles[1]

    def get_initial_prompt(self):
        return self.init_prompt

    def update_init_prompt(self, new_init_prompt: str):
        self.conversation.system = new_init_prompt
        self.init_prompt = new_init_prompt

    def get_history(self) -> List[dict]:
        """
        Returns the dialogue history in the same format as the history used for openai models
        :return:
        """
        history = [{"role": 'system', "content": self.init_prompt}]
        message_history = self.conversation.messages
        for msg in message_history:
            history.append({"role": msg[0], "content": msg[1]})
        return history

    def get_initial_history(self) -> List[dict]:
        """
        Returns the dialogue history in the same format as the history used for openai models
        :return:
        """
        history = [{'system': self.init_prompt}]
        for msg in self.initial_history:
            history.append({"role": msg[0], "content": msg[1]})
        return history

    def update_history(self, new_history: List[dict]):
        """

        :param new_history:
        :return:
        """
        if new_history[0]["role"] == "system":
            new_history = new_history[1:]
        self.conversation.messages = []
        for msg in new_history:
            role = msg["role"]
            content = msg["content"]
            self.conversation.append_message(role, content)

    def reset_history(self):
        self.conversation = get_conversation_template(model_name=self.model_name,
                                                      system_prompt=self.init_prompt)
        self.conversation.messages = self.initial_history

    def add_examples(self, examples: List[dict]):
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
            self.conversation.append_message(role, content)

        self.initial_history = self.conversation.messages.copy()

    # TODO: what about repetition penalty and do_sample parameters?
    def _generate(self, prompt: str):

        input_ids = self.tokenizer(prompt, return_tensors='pt').to(self.device)
        output_ids = self.model.generate(
            **input_ids,
            max_new_tokens=self.max_tokens,
            temperature=self.temp
        )
        # This includes the complete prompt!
        output = self.tokenizer.decode(output_ids[0], skip_special_tokens=True, spaces_between_special_tokens=False)

        prompt_mod = prompt.replace(self.conversation.sep2, self.conversation.sep)
        new_part_response = output.replace(prompt_mod, '')  # get the part that was newly generated
        first_response = new_part_response.split(f'{self.conversation.roles[1]}:')[0]  # take only the first generated response
                                                                                        # and exclude potentially added wrong continuations
        response = first_response.strip()

        return response

    def create_cache_query(self, prompt: str):
        # the prompt consists of everything so the prompt can be used as cache query key directly
        return prompt

    def prepare_for_generation(self, user_message) -> str:

        # add current message to the history
        self.conversation.append_message(self.conversation.roles[0], user_message)
        self.conversation.append_message(self.conversation.roles[1], None)

        prompt = self.conversation.get_prompt()  # this puts together the system prompt + everything in
                                                 # self.conversation.messages using the separation and role style specified

        return prompt

    def clean_up_from_generation(self, model_response, response_source: Union[str, None] = None) -> str:
        # add the generated response to the history
        self.conversation.messages[-1][-1] = model_response.strip()
        actual_response = model_response.replace(self.conversation.sep2, '') # remove end of sequence token

        return actual_response

def get_conversation_template(model_name: str, system_prompt: str):
    """
    Get the appropriate Conversation object for the specified model and initialize with the system prompt
    :param model_name:
    :param system_prompt:
    :return:
    """
    vicuna_like_models = ['vicuna']
    alpaca_like_models = ['vicuna-x-gpt']

    if model_name in vicuna_like_models:

        conversation = Conversation(
            name="vicuna_v1.1",
            system=system_prompt,
            roles=["USER", "ASSISTANT"],
            messages=[],
            offset=0,
            sep_style=SeparatorStyle.ADD_COLON_TWO,
            sep=" ",
            sep2="</s>",
        )

    elif model_name in alpaca_like_models:

        conversation = Conversation(
            name="alpaca",
            system=system_prompt,
            # this is from FastChat but wondering whether it should be ### Input, ### Response
            # https://huggingface.co/NousResearch/gpt4-x-vicuna-13b
            roles=["### Instruction", "### Response"],
            messages=[],
            offset=0,
            sep_style=SeparatorStyle.ADD_COLON_TWO,
            sep="\n\n",
            sep2="</s>",
        )

    else:
        raise NotImplementedError

    return conversation


