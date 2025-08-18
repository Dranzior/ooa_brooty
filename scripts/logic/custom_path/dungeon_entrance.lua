-- Build Dungeon entrance connection
Dungeons = {
    { d0_entrance,         enter_d0,         "makupath",            "0" },
    { d1_entrance,         enter_d1,         "spiritsgrave",        "1" },
    { d2_past_entrance,    enter_d2,         "wingdungeonpast",     "2" },
    { d3_entrance,         enter_d3,         "moonlitgrotto",       "3" },
    { d4_entrance,         enter_d4,         "skulldungeon",        "4" },
    { d5_entrance,         enter_d5,         "crowndungeon",        "5" },
    { d6_past_entrance,    enter_d6_past,    "mermaidscavepast",    "6p" },
    { d6_present_entrance, enter_d6_present, "mermaidscavepresent", "6" },
    { d7_entrance,         enter_d7,         "jabujabusbelly",      "7" },
    { d8_entrance,         enter_d8,         "ancienttomb",         "8" }
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
