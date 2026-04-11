local function updateAnimalCompanion(slot_data)
    if slot_data["animal_companion"] then
        if slot_data["animal_companion"] == "Ricky" then
            Tracker:FindObjectForCode("companions").CurrentStage = 1
        elseif slot_data["animal_companion"] == "Dimitri" then
            Tracker:FindObjectForCode("companions").CurrentStage = 2
        elseif slot_data["animal_companion"] == "Moosh" then
            Tracker:FindObjectForCode("companions").CurrentStage = 3
        end
    end
end

local function udpateLogic(slot_data)
    if slot_data["logic_difficulty"] then
        if slot_data["logic_difficulty"] == 0 then
            Tracker:FindObjectForCode("logic").CurrentStage = 0
        elseif slot_data["logic_difficulty"] == 1 then
            Tracker:FindObjectForCode("logic").CurrentStage = 1
        elseif slot_data["logic_difficulty"] == 2 then
            Tracker:FindObjectForCode("logic").CurrentStage = 2
        end
    end
end

local function updateDungeonEr(slot_data)
    if slot_data["shuffle_dungeons"] then
        if slot_data["shuffle_dungeons"] == 0 then
            Tracker:FindObjectForCode("dungeon_er_off").CurrentStage = 0
        elseif slot_data["shuffle_dungeons"] == 1 then
            Tracker:FindObjectForCode("dungeon_er_on").CurrentStage = 1
        end
    end
end

local function updateEssence(slot_data)
    if slot_data["required_essences"] then
        Tracker:FindObjectForCode("allessence").CurrentStage = slot_data["required_essences"]
    end
end

local function updateAdvanceShop(slot_data)
    if slot_data["advance_shop"] then
        local obj = Tracker:FindObjectForCode("advanceshop")
        if obj then
            obj.Active = slot_data["advance_shop"] == 1
        end
    end
end

local function updateSlate(slot_data)
    if slot_data["required_slates"] then
        Tracker:FindObjectForCode("requiredslates").CurrentStage = slot_data["required_slates"]
    end
end

local function updateMasterKey(slot_data)
    if slot_data["master_keys"] then
        Tracker:FindObjectForCode("master_key").CurrentStage = slot_data["master_keys"]
    end
end

local function updateLynnaGardener(slot_data)
    if slot_data["lynna_gardener"] then
        Tracker:FindObjectForCode("lynna_gardener").CurrentStage = slot_data["lynna_gardener"]
    end
end

local function updateLinkedHeroCave(slot_data)
    if slot_data["linked_heros_cave"] then
        Tracker:FindObjectForCode("heros_cave").CurrentStage = slot_data["linked_heros_cave"]
    end
end

function UpdateSettings(slot_data)
    updateAnimalCompanion(slot_data)
    udpateLogic(slot_data)
    updateDungeonEr(slot_data)
    updateEssence(slot_data)
    updateAdvanceShop(slot_data)
    updateSlate(slot_data)
    updateMasterKey(slot_data)
    updateLynnaGardener(slot_data)
    updateLinkedHeroCave(slot_data)
end


