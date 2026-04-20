import ReferenceFiles.Locations as Locations
import json

locations_name_to_path = {}

def parse_section(element, path):
    global locations_name_to_path
    name = element["name"]
    path += "/" + name
    if "ref" not in element:
        locations_name_to_path[name] = path

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

def map_path_to_id():
    global locations_name_to_path
    locations_in_order = []
    for location in Locations.LOCATIONS_DATA.keys():
        if location in locations_name_to_path:
            path = locations_name_to_path[location]
            locations_in_order.append(path)
        else:
            locations_in_order.append("")
    return locations_in_order

def print_to_lua(locations):
    result = "LOCATION_LISTING = {\n"
    for location in locations:
        result += "\t { \"@" + location[1:] + "\"},\n"
    result += "}"
    return result

if __name__ == '__main__':
    create_location_path_mapping()
    locations_in_order = map_path_to_id()
    print(print_to_lua(locations_in_order))