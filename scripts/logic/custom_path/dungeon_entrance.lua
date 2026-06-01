-- Build Dungeon entrance connection
Dungeons = {
    { outside_d0,         inside_d0,         "makupath",            "0" },
    { outside_d1,         inside_d1,         "spiritsgrave",        "1" },
    { outside_d2,         inside_d2,         "wingdungeonpast",     "2" },
    { outside_d3,         inside_d3,         "moonlitgrotto",       "3" },
    { outside_d4,         inside_d4,         "skulldungeon",        "4" },
    { outside_d5,         inside_d5,         "crowndungeon",        "5" },
    { outside_d6_past,    inside_d6_past,    "mermaidscavepast",    "6p" },
    { outside_d6_present, inside_d6_present, "mermaidscavepresent", "6" },
    { outside_d7,         inside_d7,         "jabujabusbelly",      "7" },
    { outside_d8,         inside_d8,         "ancienttomb",         "8" },
    { outside_d11,        inside_d11,        "heroscave",           "11" }
}

for _, entrance in ipairs(Dungeons) do
    entrance[1]:connect_two_ways(entrance[2], function() return Has("dungeon_er_off") end)
    for _, inside in ipairs(Dungeons) do
        entrance[1]:connect_two_ways(inside[2], function()
            return All(
                Has("dungeon_er_on"),
                Has(entrance[3] .. inside[4])
            )
        end)
    end
end
