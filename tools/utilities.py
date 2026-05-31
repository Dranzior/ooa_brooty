import re


def fix_variable_name(name):
    name = name.replace(" ", "_")
    name = name.replace("'", "")
    name = name.replace("-", "_")
    name = name.replace("/", "_")
    name = name.replace("(", "_")
    name = name.replace(")", "_")
    name = name.replace(",", "_")
    name = name.replace(":", "_")
    name = name.replace("#", "")
    name = name.replace(".", "")

    name = re.sub(r"^(\d)", r"_\1", name)
    return name
