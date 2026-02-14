import inspect
import re

import ReferenceFiles.OverworldLogic as OverworldLogic
import ReferenceFiles.DungeonsLogic as DungeonLogic

outputPath = "../../scripts/logic/generated"

location_set = {""}
path_list = []

def fix_location_name(location_name):
    location_name = location_name.replace(" ", "_")
    location_name = location_name.replace("'", "")
    location_name = location_name.replace("-", "_")
    location_name = location_name.replace("/", "_")
    location_name = location_name.replace("(", "_")
    location_name = location_name.replace(")", "_")
    location_name = location_name.replace(",", "_")
    return location_name

def cleanup_function(function_code):
    # Isolate the function and convert to a LUA function
    function_code = re.sub(".*lambda state:", "function() return", function_code)

    # strip comments
    function_code = re.sub(" *#.*", "", function_code)

    # convert function name
    function_code = function_code.replace("state.has", "Has")
    function_code = re.sub("all *\\(", "All(", function_code)
    function_code = re.sub("any *\\(", "Any(", function_code)

    # convert boolean to LUA
    function_code = function_code.replace("True", "true")
    function_code = function_code.replace("False", "false")

    # remove "state" and "player" parameter from every function call
    function_code = re.sub(",? *state *,? *", "", function_code)
    function_code = re.sub(",? *player *,? *", "", function_code)

    # lua doesn't support have comma after last element of a list
    function_code = re.sub(", *\n? *]", "]", function_code)
    function_code = re.sub(", *\n? *\\)", ")", function_code)

    # remove the ending of each line
    function_code = function_code.replace("],", "")

    # some more cleanup for python -> LUA
    function_code = function_code.replace("[", "")
    function_code = function_code.replace("]", "")

    # close the function
    function_code = function_code[:-1] + " end"

    return function_code

def create_location(location):
    location_set.add(location)

def create_path(source_location, destination, is_two_way, function):
    connector_function = "connect_two_ways_entrance" if is_two_way else "connect_one_way_entrance"
    if function is not None:
        function_code = cleanup_function(inspect.getsource(function))
        path_list.append(source_location + ":" + connector_function + "(" + destination + "," + function_code + ")")
    else:
        path_list.append(source_location + ":" + connector_function + "(" + destination+")")

def process_entry(path):
    source_location = fix_location_name(path[0])
    destination = fix_location_name(path[1])
    is_two_way = path[2]
    function = path[3]
    create_location(source_location)
    create_location(destination)
    create_path(source_location, destination, is_two_way, function)


def build_content(content):
    for path in content:
        process_entry(path)

def write_path_list(filename):
    global path_list
    with (open(filename, "w") as file):
        for line in path_list:
            file.write(line+"\n")
    path_list = []

def write_location_list(filename):
    global location_set
    location_list = list(location_set)
    location_list.sort()
    with open(filename, "w") as file:
        for location in location_list:
            if location != "":
                file.write(location + " = OoALocation.New(\""+location+"\")\n")
    location_set = {""}

def process():
    # Overworld
    overworld = OverworldLogic.make_overworld_logic(0)
    build_content(overworld)
    write_path_list(outputPath + "/overworld.lua")

    build_content(DungeonLogic.make_d0_logic(0))
    write_path_list(outputPath + "/d0.lua")
    build_content(DungeonLogic.make_d1_logic(0))
    write_path_list(outputPath + "/d1.lua")
    build_content(DungeonLogic.make_d2_logic(0))
    write_path_list(outputPath + "/d2.lua")
    build_content(DungeonLogic.make_d3_logic(0))
    write_path_list(outputPath + "/d3.lua")
    build_content(DungeonLogic.make_d4_logic(0))
    write_path_list(outputPath + "/d4.lua")
    build_content(DungeonLogic.make_d5_logic(0))
    write_path_list(outputPath + "/d5.lua")
    build_content(DungeonLogic.make_d6past_logic(0))
    build_content(DungeonLogic.make_d6present_logic(0))
    write_path_list(outputPath + "/d6.lua")
    build_content(DungeonLogic.make_d7_logic(0))
    write_path_list(outputPath + "/d7.lua")
    build_content(DungeonLogic.make_d8_logic(0))
    write_path_list(outputPath + "/d8.lua")

#    dungeon_entrances

    write_location_list(outputPath + "/location_definitions.lua")

if __name__ == '__main__':
    process()
