local gasha_count = 15

GashaIDToLocation = {}

function AddToGashaMap(location)
    GashaIDToLocation[location] = Tracker:FindObjectForCode(location)
end

function CreateGashaMap()
    AddToGashaMap("@Overworld_Past/Talus Peaks/Talus Peak (Past): Spot/Talus Peak (Past): Spot")
    AddToGashaMap("@Overworld_Past/Talus Peaks/Talus Lake (Past): Spot/Talus Lake (Past): Spot")
    AddToGashaMap("@Overworld_Past/Rolling Ridge/Ridge West Base: Spot/Ridge West Base: Spot")
    AddToGashaMap("@Overworld_Past/Lynna Village/South Shore (Past): Spot/South Shore (Past): Spot")
    AddToGashaMap("@Overworld_Past/Lynna Village/Lynna Village: Spot/Lynna Village: Spot")
    AddToGashaMap("@Overworld_Past/Zora Seas/Zora Village (Past): Spot/Zora Village (Past): Spot")
    AddToGashaMap("@Overworld_Past/Crescent Island/Crescent Island (Past): Spot/Crescent Island (Past): Spot")
    AddToGashaMap("@Overworld/Talus Peaks/Talus Peak (Present): Spot/Talus Peak (Present): Spot")
    AddToGashaMap("@Overworld/Nuun Highlands/Nuun Highlands: Spot/Nuun Highlands: Spot")
    AddToGashaMap("@Overworld/Rolling Ridge/Rolling Ridge (Present): Spot/Rolling Ridge (Present): Spot")
    AddToGashaMap("@Overworld/Yoll Graveyard/Yoll Graveyard: Spot/Yoll Graveyard: Spot")
    AddToGashaMap("@Overworld/Fairies' Woods/Fairies' Woods: Spot/Fairies' Woods: Spot")
    AddToGashaMap("@Overworld/Crescent Island/Crescent Island (Present): Vine Spot/Crescent Island (Present): Vine Spot")
    AddToGashaMap("@Overworld_Past/Rolling Ridge/Ridge West Upper: Spot/Ridge West Upper: Spot")
    AddToGashaMap("@Overworld/Crescent Island/Crescent Island (Present): Islet Spot/Crescent Island (Present): Islet Spot")
end

CreateGashaMap()

function GashasPlanted()
    local n = 0
    for _, loc in pairs(GashaIDToLocation) do
        if (loc.AccessibilityLevel == AccessibilityLevel.Cleared) then
            n = n + 1
        end
    end
    return n
end

function CanPlantGasha(location)
    -- rules for being able to collect the nut
    if (not ooa_has_sword()) then
        return false
    end
    -- rules for how many available spots remain
    local ownedGashas = Tracker:ProviderCountForCode("gashaseeds")
    local gashasPlanted = GashasPlanted()
    local gashaSetting = Tracker:FindObjectForCode("deterministic_gasha_locations")
    if (gashaSetting == nil or gashasPlanted >= gashaSetting.CurrentStage) then
        return false
    end
    if (ownedGashas > gashasPlanted) then
        return CanReach(location)
    else
        return false
    end
end

function GashasHarvested()
    local harvested = 0
    for i = 1, gasha_count do
        local section = Tracker:FindObjectForCode("@Overworld_Past/Lynna Village/Gasha Spots/Gasha Spot #" .. i)
        if (section ~= nil) then
            harvested = harvested + section.AvailableChestCount
        end
    end
    return gasha_count - harvested
end

function HasPlanted(code)
    local section = Tracker:FindObjectForCode(code)
    if (section == nil) then
        return false
    end
    return section.ChestCount - section.AvailableChestCount ~= 0
end

function CanSeeGasha(count)
    local gashaSetting = Tracker:FindObjectForCode("deterministic_gasha_locations")
    return gashaSetting ~= nil and gashaSetting.CurrentStage >= tonumber(count) and
    GashasHarvested() < gashaSetting.CurrentStage
end