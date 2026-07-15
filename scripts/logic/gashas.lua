local gasha_count = 15

GashaIDToItem = {}

function AddToGashaMap(location)
    GashaIDToItem[location] = Tracker:FindObjectForCode(location)
end

function CreateGashaMap()
    AddToGashaMap("PlantedLynnaVillageGashaSpot")
    AddToGashaMap("PlantedFairies'WoodsGashaSpot")
    AddToGashaMap("PlantedSouthernShoreGashaSpot")
    AddToGashaMap("PlantedSeaofStorms(Present)GashaSpot")
    AddToGashaMap("PlantedZoraVilageGashaSpot")
    AddToGashaMap("PlantedDekuForestGashaSpot")
    AddToGashaMap("PlantedCrescentIslandEast(Present)GashaSpot")
    AddToGashaMap("PlantedTalusPeeks(Past)GashaSpot")
    AddToGashaMap("PlantedRollingRidge(PastUpper)GashaSpot")
    AddToGashaMap("PlantedNuunHighlandsGashaSpot")
    AddToGashaMap("PlantedYollGraveyardGashaSpot")
    AddToGashaMap("PlantedTalusPeeks(Present)GashaSpot")
    AddToGashaMap("PlantedRollingRidge(PresentEast)GashaSpot")
    AddToGashaMap("PlantedRollingRidge(PastWest)GashaSpot")
    AddToGashaMap("PlantedCrescentIslandWest(Past)GashaSpot")
    AddToGashaMap("PlantedCrescentIslandWest(Present)GashaSpot")
end

CreateGashaMap()

function GashasPlanted()
    local n = 0
    for _, item in pairs(GashaIDToItem) do
        if (item.Active) then
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
        local section = Tracker:FindObjectForCode("@Overworld_Past/Lynna Village/Gasha Spots/Gasha Nut #" .. i)
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
    return section.Active
end

function CanSeeGasha(count)
    local gashaSetting = Tracker:FindObjectForCode("deterministic_gasha_locations")
    return gashaSetting ~= nil and gashaSetting.CurrentStage >= tonumber(count) and
        GashasHarvested() < gashaSetting.CurrentStage
end

function HideIfCollected(code)
    local section = Tracker:FindObjectForCode(code)
    if (section == nil) then
        return true
    end
    return not section.Active
end