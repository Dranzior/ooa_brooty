import re
import sys

__ooa_source = sys.argv[1]

def __create_copy_replace_import(path, filename, regex_to_remove):
    with open(path+"\\"+filename, 'r') as file:
        content = file.read()
        content = re.sub(".*import.*", "", content)
        content = re.sub(regex_to_remove, "", content)
    with open("ReferenceFiles/"+filename, 'w') as file:
        file.write(content)

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

def get_ref_files():
    __create_copy_replace_import(__ooa_source + "/data", "Items.py", ".*ItemClassification.*")
    __create_copy_replace_import(__ooa_source + "/data", "Locations.py", ".*COLLECT.*")
    __create_copy_replace_import(__ooa_source + "/data/logic", "DungeonsLogic.py", "")
    __create_copy_replace_import(__ooa_source + "/data/logic", "OverworldLogic.py", "")