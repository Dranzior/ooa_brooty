import sys

sys.path.append(sys.argv[1])

from typing import Any

import json

import worlds.tloz_ooa.data.Locations as Locations
import worlds.tloz_ooa.data.Items as Items

locations_name_to_path = {}
outputPath = "../../scripts/autotracking/generated"


class DefinedLocation:
    def __init__(self, name: str, path: str):
        self.name = name
        self.path = path
        self.id = 0

    def set_id(self, id: int):
        self.id = id


def build_location_name_to_id_dict(data: dict[str, dict[str, Any]]) -> dict[str, int]:
    location_name_to_id: dict[str, int] = {}
    for loc_name, location in data.items():
        if "id" in location:
            index = location["id"]
        elif location["flag_byte"] is not None:
            index = location["flag_byte"] * 0x100 + (location["bit_mask"] if "bit_mask" in location else 0x20)
        else:
            continue
        location_name_to_id[loc_name] = index
    return location_name_to_id


def parse_section(element, path):
    global locations_name_to_path
    name = element["name"]
    path += "/" + name
    if "ref" not in element:
        locations_name_to_path[name] = DefinedLocation(name, path)


def parse_recursive(element, path):
    name = element["name"]
    path += "/" + name
    if "children" in element:
        for child in element["children"]:
            parse_recursive(child, path)
    if "sections" in element:
        for section in element["sections"]:
            parse_section(section, path)


def create_location_path_mapping():
    json_file = open('../../locations/dungeons.json')
    dungeons = json.load(json_file)
    parse_recursive(dungeons[0], "")

    json_file = open('../../locations/overworld_past.json')
    past = json.load(json_file)
    parse_recursive(past[0], "")

    json_file = open('../../locations/overworld_present.json')
    present = json.load(json_file)
    parse_recursive(present[0], "")

    json_file.close()


def build_item_name_to_id_dict(data: dict[str, dict[str, Any]]) -> dict[str, int]:
    item_name_to_id: dict[str, int] = {}
    for item_name, item in data.items():
        index = item["id"] * 0x100 + (item["subid"] if "subid" in item else 0)
        item_name_to_id[item_name] = index
    return item_name_to_id


def generate_item_name_to_id_dict():
    items_id = build_item_name_to_id_dict(Items.ITEMS_DATA)
    item_text = ""
    for name, id in items_id.items():
        item = name + "=" + str(id) + "\n"
        item = utilities.fix_variable_name(item)
        item_text += item

    with open(outputPath + "/item_define.lua", "w") as file:
        file.write(item_text)


def map_path_to_id():
    location_ids = build_location_name_to_id_dict(Locations.LOCATIONS_DATA)
    for location, id in location_ids.items():
        if location in locations_name_to_path:
            locations_name_to_path[location].set_id(id)


def print_to_lua(locations):
    result = "LOCATION_LISTING = {}\n"
    for name, location in locations.items():
        if location.id != 0:
            result += "LOCATION_LISTING[" + str(location.id) + "] = {\"@" + location.path[1:] + "\"}\n"
    return result


if __name__ == '__main__':
    create_location_path_mapping()
    map_path_to_id()
    location_text = print_to_lua(locations_name_to_path)
    with open(outputPath + "/location_define.lua", "w") as file:
        file.write(location_text)

    generate_item_name_to_id_dict()
