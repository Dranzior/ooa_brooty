local function updateAnimalCompanion(slot_data)
    if slot_data["animal_companion"] then
        Tracker:FindObjectForCode("companions").CurrentStage = slot_data["animal_companion"] +1
    end
end

local function updateLogic(slot_data)
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

local function updateSecretLocations(slot_data)
    if slot_data["secret_locations"] then
        Tracker:FindObjectForCode("secret_locations").CurrentStage = slot_data["secret_locations"]
    end
end

local function updateVasuMadness(slot_data)
    print(dump_table(slot_data))
    if slot_data["vasu_ring_checks_requirement"] then

        local vasu_slot_data = slot_data["vasu_ring_checks_requirement"]
        print(dump_table(vasu_slot_data))
        if vasu_slot_data["disable_entirely"] then
            Tracker:FindObjectForCode("vasu_ring_check").CurrentStage = 0
        else
            Tracker:FindObjectForCode("vasu_ring_check").CurrentStage = 1
        end
        Tracker:FindObjectForCode("vasu_rupee_ring_check").AcquiredCount = vasu_slot_data
            ["rupee_requirement_for_rupee_ring_check"]
    end
end

local function updateGashaSeeds(slot_data)
    if slot_data["deterministic_gasha_locations"] then
        Tracker:FindObjectForCode("deterministic_gasha_locations").CurrentStage = slot_data
            ["deterministic_gasha_locations"]
    end
end

local function updateGoal(slot_data)
    if slot_data["goal"] then
        Tracker:FindObjectForCode("goal").CurrentStage = slot_data["goal"]
    end
end

function UpdateSettings(slot_data)
    updateAnimalCompanion(slot_data["options"])
    updateLogic(slot_data["options"])
    updateDungeonEr(slot_data["options"])
    updateEssence(slot_data["options"])
    updateAdvanceShop(slot_data["options"])
    updateSlate(slot_data["options"])
    updateMasterKey(slot_data["options"])
    updateLynnaGardener(slot_data["options"])
    updateLinkedHeroCave(slot_data["options"])
    updateSecretLocations(slot_data["options"])
    updateVasuMadness(slot_data["options"])
    updateGashaSeeds(slot_data["options"])
    updateGoal(slot_data["options"])
end
