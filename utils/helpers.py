from datetime import datetime


def get_timestamp_for_log():
    now = str(datetime.now())
    day_now = now.split(' ')[0]
    time_now = now.split(' ')[1]
    time_now = time_now.split('.')[0]  # remove milli sec

    unique_timestamp = day_now + '-' + time_now.replace(':', '-')

    return unique_timestamp


def create_log_file_name(name_prefix: str, file_ending: str):
    time_stamp = get_timestamp_for_log()
    file_name = f'{name_prefix}_{time_stamp}.{file_ending}'
    return file_name


def change_determiners(action_str: str):

    tokens = action_str.split(' ')
    parameter_inds = [ind for ind, token in enumerate(tokens) if token == "{}"]
    for p_ind in parameter_inds:
        potential_determiner = tokens[p_ind - 2]
        if potential_determiner == 'a' or potential_determiner == 'an':
            tokens[p_ind - 2] = 'the'
    action_str = ' '.join(tokens)

    return action_str


def get_llm_type(llm_name: str):
    if llm_name.startswith('gpt-4') or llm_name.startswith('gpt-3.5-turbo'):
        llm_type = 'openai_chat'
    else:
        raise ValueError(f'The model {llm_name} could not be mapped to a model type / class. Please specify the type of the model using as "--llm-type", e.g. openai_chat for chat models, openai_comp for text completion models.')
    return llm_type

