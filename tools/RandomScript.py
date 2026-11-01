import sys

sys.path.append(sys.argv[1])

from typing import Any

import json
import utilities

import worlds.tloz_ooa.data.Entrances as Entrances

outputPath = "../scripts/logic/generated"

def fix_location_name(location_name):
    location_name = location_name.replace(" ", "_")
    location_name = location_name.replace("'", "")
    location_name = location_name.replace("-", "_")
    location_name = location_name.replace("/", "_")
    location_name = location_name.replace("(", "_")
    location_name = location_name.replace(")", "_")
    location_name = location_name.replace(",", "_")
    return location_name

if __name__ == '__main__':
    result = ""
    warps = Entrances.WARPS_DATA
    for name in warps:
        name = fix_location_name(name)
        result = result + "outside_" + name + ":connect_two_ways(inside_"+name+")\n"


    with open(outputPath + "/entrances.lua", "w") as file:
        file.write(result)