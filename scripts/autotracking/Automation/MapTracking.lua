Map = Map or {}

MakuTree = 0x138

local Dungeons = {
    { "d0",         "makupath",            "0",  1 },
    { "d1",         "spiritsgrave",        "1",  2 },
    { "d2",         "wingdungeonpast",     "2",  3 },
    { "d3",         "moonlitgrotto",       "3",  4 },
    { "d4",         "skulldungeon",        "4",  5 },
    { "d5",         "crowndungeon",        "5",  6 },
    { "d6 past",    "mermaidscavepast",    "6p", 7 },
    { "d6 present", "mermaidscavepresent", "6",  8 },
    { "d7",         "jabujabusbelly",      "7",  9 },
    { "d8",         "ancienttomb",         "8",  10 },
    { "d11",        "heroscave",           "11", 11 }
}

local OverworldPast = {
    { 0x00, 0x14, { "Overworld (Tabs)", "Overworld Map" },         "" },
    { 0x15, 0x17, { "Overworld (Tabs)", "Animal Companion Maps" }, "" },
    { 0x18, 0x24, { "Overworld (Tabs)", "Overworld Map" },         "" },
    { 0x25, 0x27, { "Overworld (Tabs)", "Animal Companion Maps" }, "" },
    { 0x28, 0x34, { "Overworld (Tabs)", "Overworld Map" },         "" },
    { 0x35, 0x37, { "Overworld (Tabs)", "Animal Companion Maps" }, "" },
    { 0x38, 0xFF, { "Overworld (Tabs)", "Overworld Map" },         "" },
}

local OverworldPresent = {
    { 0x00, 0x14, { "Overworld (Tabs)", "Overworld Map" },         "" },
    { 0x15, 0x17, { "Overworld (Tabs)", "Animal Companion Maps" }, "" },
    { 0x18, 0x24, { "Overworld (Tabs)", "Overworld Map" },         "" },
    { 0x25, 0x27, { "Overworld (Tabs)", "Animal Companion Maps" }, "" },
    { 0x28, 0x34, { "Overworld (Tabs)", "Overworld Map" },         "" },
    { 0x35, 0x37, { "Overworld (Tabs)", "Animal Companion Maps" }, "" },
    { 0x38, 0xFF, { "Overworld (Tabs)", "Overworld Map" },         "" },
}

local DungeonMap04 = {
    { 0x06, 0x0D, { "Maku Path" },      "d0" },

    { 0x11, 0x25, { "Spirit's Grave" }, "d1" },

    { 0x2C, 0x33, { "Wing Dungeon" },   "d2" }, -- Floor X
    { 0x34, 0x48, { "Wing Dungeon" },   "d2" }, -- Floor X

    { 0x49, 0x57, { "Moonlit Grotto" }, "d3" }, -- Floor X
    { 0x58, 0x66, { "Moonlit Grotto" }, "d3" }, -- Floor X

    { 0x69, 0x71, { "Skull Dungeon" },  "d4" }, -- Floor X
    { 0x72, 0x92, { "Skull Dungeon" },  "d4" }, -- Floor X

    { 0x99, 0xA6, { "Crown Dungeon" },  "d5" }, -- Floor X
    { 0xA7, 0xBF, { "Crown Dungeon" },  "d5" }, -- Floor X
}

local DungeonMap05 = {
    { 0x12, 0x28, { "Mermaid's Cave (Present)" }, "d6 present" }, -- Floor X
    { 0x2B, 0x46, { "Mermaid's Cave (Past)" },    "d6 past" },    -- Floor X

    { 0x4B, 0x56, { "Jabu-Jabu's Belly" },        "d7" },         -- Floor X
    { 0x57, 0x68, { "Jabu-Jabu's Belly" },        "d7" },         -- Floor X
    { 0x69, 0x72, { "Jabu-Jabu's Belly" },        "d7" },         -- Floor X

    { 0x77, 0x7A, { "Ancient Tomb" },             "d8" },         -- Floor X
    { 0x7B, 0x96, { "Ancient Tomb" },             "d8" },         -- Floor X
    { 0x97, 0xA6, { "Ancient Tomb" },             "d8" },         -- Floor X
    { 0xA7, 0xAA, { "Ancient Tomb" },             "d8" },         -- Floor X

    { 0xC1, 0xCF, { "Hero's Cave" },              "d11" },        -- Floor X
}

local MapLocationTracking =
{
    [0x0000] = { OverworldPresent },
    [0x0100] = { OverworldPast },
    [0x0200] = { OverworldPresent },
    [0x0300] = { OverworldPast },
    [0x0400] = { DungeonMap04 },
    [0x0500] = { DungeonMap05 },
    [0x0600] = { DungeonMap04 },
    [0x0700] = { DungeonMap05 },
}

function Map.GetMapInfo(tile, map)
    for _, info in ipairs(map) do
        if tile >= info[1] and tile <= info[2] then
            return info
        end
    end

    return nil
end

function Map.GetMap(tile, map)
    local info = Map.GetMapInfo(tile, map)
    if info == nil then
        return {}
    end

    return info[3]
end

function Map.SetDungeonEntrance(tile, map, prevRoom)
    local info = Map.GetMapInfo(tile, map)
    if info == nil then
        return
    end

    if info[4] == "" then
        return -- Do not trigger on the overworld
    end

    if prevRoom == MakuTree then
        return -- This is Maku Path back entrance, do not track it
    end

    if prevRoom >= 0x400 then
        return -- Already inside the dungeon, don't track
    end

    for entrance, inside in pairs(SLOT_DATA["randomized_entrances"]) do
        local entranceKey = ""
        local entranceId = 0
        local insideKey = ""
        if inside == info[4] then
            for _, dungeon_data in ipairs(Dungeons) do
                if dungeon_data[1] == entrance then
                    entranceKey = dungeon_data[2]
                    entranceId = dungeon_data[4]
                end
                if dungeon_data[1] == inside then
                    insideKey = dungeon_data[3]
                end
            end
            Tracker:FindObjectForCode(entranceKey .. insideKey).CurrentStage = entranceId
        end
    end
end

function Map.process(json)
    if not json["data"] then
        return
    end
    if not json["data"]["Current Room"] then
        return
    end

    local prevRoom = CurrentRoom
    CurrentRoom = json["data"]["Current Room"]
    if prevRoom == CurrentRoom or CurrentRoom == nil then
        return
    end
    local region = CurrentRoom & 0xF00
    local tile = CurrentRoom & 0x0FF

    if prevRoom == nil then
        prevRoom = 0
    end

    local map = MapLocationTracking[region][1]

    if (Has("autotab_on")) then
        local tabs = Map.GetMap(tile, map)
        for _, tab in ipairs(tabs) do
            Tracker:UiHint("ActivateTab", tab)
        end
    end

    Map.SetDungeonEntrance(tile, map, prevRoom)
end
