ScriptHost:LoadScript("scripts/autotracking/item_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/location_mapping.lua")
ScriptHost:LoadScript("scripts/autotracking/automation/Hint.lua")
ScriptHost:LoadScript("scripts/autotracking/automation/ManualLocation.lua")

CUR_INDEX = -1
SLOT_DATA = nil
LOCAL_ITEMS = {}
GLOBAL_ITEMS = {}
HOSTED = {}
ALL_LOCATIONS = {}

MANUAL_CHECKED = true
ROOM_SEED = "default"

function onSetReply(key, value, _)
    local slot_player = "Slot:" .. Archipelago.PlayerNumber
    if key == slot_player .. ":Current Map" then
        if Tracker:FindObjectForCode("auto_tab").CurrentStage == 1 then
            if TABS_MAPPING[value] then
                CURRENT_ROOM = TABS_MAPPING[value]
            else
                CURRENT_ROOM = CURRENT_ROOM_ADDRESS
            end
            Tracker:UiHint("ActivateTab", CURRENT_ROOM)
        end
    end
	
	Hint.Process(key, value)
end

function retrieved(key, value)
	Hint.Process(key, value)
end

function preOnClear()
    PLAYER_ID = Archipelago.PlayerNumber or -1
	TEAM_NUMBER = Archipelago.TeamNumber or 0
    if Archipelago.PlayerNumber > -1 then
        if #ALL_LOCATIONS > 0 then
            ALL_LOCATIONS = {}
        end
        for _, value in pairs(Archipelago.MissingLocations) do
            table.insert(ALL_LOCATIONS, #ALL_LOCATIONS + 1, value)
        end

        for _, value in pairs(Archipelago.CheckedLocations) do
            table.insert(ALL_LOCATIONS, #ALL_LOCATIONS + 1, value)
        end
    end

    local custom_storage_item = Tracker:FindObjectForCode("manual_location_storage")
    local seed_base = (Archipelago.Seed or tostring(#ALL_LOCATIONS)).."_"..Archipelago.TeamNumber.."_"..Archipelago.PlayerNumber
    if ROOM_SEED == "default" or ROOM_SEED ~= seed_base then -- seed is default or from previous connection

        ROOM_SEED = seed_base
        if #custom_storage_item.ItemState.MANUAL_LOCATIONS > 10 then
            custom_storage_item.ItemState.MANUAL_LOCATIONS[custom_storage_item.ItemState.MANUAL_LOCATIONS_ORDER[1]] = nil
            table.remove(custom_storage_item.ItemState.MANUAL_LOCATIONS_ORDER, 1)
        end
        if custom_storage_item.ItemState.MANUAL_LOCATIONS[ROOM_SEED] == nil then
            custom_storage_item.ItemState.MANUAL_LOCATIONS[ROOM_SEED] = {}
            table.insert(custom_storage_item.ItemState.MANUAL_LOCATIONS_ORDER, ROOM_SEED)
        end
    end
end

function onClear(slot_data)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onClear, slot_data:\n%s", dump_table(slot_data)))
    end

	MANUAL_CHECKED = false
    local custom_storage_item = Tracker:FindObjectForCode("manual_location_storage")
    if custom_storage_item == nil then
        CreateLuaManualLocationStorage("manual_location_storage")
        custom_storage_item = Tracker:FindObjectForCode("manual_location_storage")
    end
    preOnClear()

    SLOT_DATA = slot_data
    CUR_INDEX = -1
    -- reset locations
    for _, v in pairs(LOCATION_MAPPING) do
        if v[1] then
            if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: clearing location %s", v[1]))
            end
            local obj = Tracker:FindObjectForCode(v[1])
            if obj then
                if v[1]:sub(1, 1) == "@" then
                    if custom_storage_item.ItemState.MANUAL_LOCATIONS[ROOM_SEED][obj.FullID] then
						obj.AvailableChestCount = custom_storage_item.ItemState.MANUAL_LOCATIONS[ROOM_SEED][obj.FullID]
					else
						obj.AvailableChestCount = obj.ChestCount
					end
                else
                    obj.Active = false
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: could not find object for code %s", v[1]))
            end
        end
    end
    -- reset items
    for _, v in pairs(ITEM_MAPPING) do
        if v[1] and v[2] then
            if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: clearing item %s of type %s", v[1], v[2]))
            end
            local obj = Tracker:FindObjectForCode(v[1])
            if obj then
                if v[2] == "toggle" then
                    obj.Active = false
                elseif v[2] == "progressive" then
                    obj.CurrentStage = 0
                    obj.Active = false
                elseif v[2] == "consumable" then
                    obj.AcquiredCount = 0
                elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                    print(string.format("onClear: unknown item type %s for code %s", v[2], v[1]))
                end
            elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
                print(string.format("onClear: could not find object for code %s", v[1]))
            end
        end
    end
    -- reset hosted items
    for k, _ in pairs(HOSTED) do
        local obj = Tracker:FindObjectForCode(k)
        if obj then
            obj.Active = false
        end
    end

    Hint.Setup()

    -- companions
    if slot_data["animal_companion"] then
        if slot_data["animal_companion"] == "Ricky" then
            Tracker:FindObjectForCode("companions").CurrentStage = 1
        elseif slot_data["animal_companion"] == "Dimitri" then
            Tracker:FindObjectForCode("companions").CurrentStage = 2
        elseif slot_data["animal_companion"] == "Moosh" then
            Tracker:FindObjectForCode("companions").CurrentStage = 3
        end
    end
    -- logic
    if slot_data["logic_difficulty"] then
        if slot_data["logic_difficulty"] == 0 then
            Tracker:FindObjectForCode("logic").CurrentStage = 0
        elseif slot_data["logic_difficulty"] == 1 then
            Tracker:FindObjectForCode("logic").CurrentStage = 1
        elseif slot_data["logic_difficulty"] == 2 then
            Tracker:FindObjectForCode("logic").CurrentStage = 2
        end
    end
    --dungeon er
    if slot_data["shuffle_dungeons"] then
        if slot_data["shuffle_dungeons"] == 0 then
            Tracker:FindObjectForCode("dungeon_er_off").CurrentStage = 0
        elseif slot_data["shuffle_dungeons"] == 1 then
            Tracker:FindObjectForCode("dungeon_er_on").CurrentStage = 1
        end
    end
    --essences
    if slot_data["required_essences"] then
        Tracker:FindObjectForCode("allessence").AcquiredCount = slot_data["required_essences"]
    end
    --advance_shop
    if slot_data["advance_shop"] then
        local obj = Tracker:FindObjectForCode("advanceshop")
        if obj then
            obj.Active = slot_data["advance_shop"] == 1
        end
    end
    --slates
    if slot_data["required_slates"] then
        Tracker:FindObjectForCode("requiredslates").AcquiredCount = slot_data["required_slates"]
    end
    --Lynna Gardener
    if slot_data["lynna_gardener"] then
        Tracker:FindObjectForCode("lynnagardener").CurrentStage = slot_data["lynna_gardener"]
    end
    --Master Key
    if slot_data["master_keys"] then
        Tracker:FindObjectForCode("master_key_small").CurrentStage = slot_data["master_keys"]
    end

    updateDefaultSeed()

    if SLOT_DATA == nil then
        return
    end

    LOCAL_ITEMS = {}
    GLOBAL_ITEMS = {}
    MANUAL_CHECKED = true
end

function updateDefaultSeed()
    local satchel = Tracker:FindObjectForCode("seed satchel")
    local seedShooter = Tracker:FindObjectForCode("seed shooter")
    if (satchel and satchel.Active) or (seedShooter and seedShooter.Active) then
        --starting seed
        if SLOT_DATA["default_seed"] then
            local obj = Tracker:FindObjectForCode("emberseeds")
            if obj and SLOT_DATA["default_seed"] == "Ember Seeds" then
                obj.Active = true
            end
        end
        if SLOT_DATA["default_seed"] then
            local obj = Tracker:FindObjectForCode("scentseeds")
            if obj and SLOT_DATA["default_seed"] == "Scent Seeds" then
                obj.Active = true
            end
        end
        if SLOT_DATA["default_seed"] then
            local obj = Tracker:FindObjectForCode("pegasusseeds")
            if obj and SLOT_DATA["default_seed"] == "Pegasus Seeds" then
                obj.Active = true
            end
        end
        if SLOT_DATA["default_seed"] then
            local obj = Tracker:FindObjectForCode("galeseeds")
            if obj and SLOT_DATA["default_seed"] == "Gale Seeds" then
                obj.Active = true
            end
        end
        if SLOT_DATA["default_seed"] then
            local obj = Tracker:FindObjectForCode("mysteryseeds")
            if obj and SLOT_DATA["default_seed"] == "Mystery Seeds" then
                obj.Active = true
            end
        end
    end
end

-- called when an item gets collected
function onItem(index, item_id, item_name, player_number)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onItem: %s, %s, %s, %s, %s", index, item_id, item_name, player_number, CUR_INDEX))
    end
    if not AUTOTRACKER_ENABLE_ITEM_TRACKING then
        return
    end
    if index <= CUR_INDEX then
        return
    end
    local is_local = player_number == Archipelago.PlayerNumber
    CUR_INDEX = index;
    local v = ITEM_MAPPING[item_id]
    if not v then
        if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
            print(string.format("onItem: could not find item mapping for id %s", item_id))
        end
        return
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("onItem: code: %s, type %s", v[1], v[2]))
    end
    if not v[1] then
        return
    end
    local obj = Tracker:FindObjectForCode(v[1])
    if obj then
        if v[2] == "toggle" then
            obj.Active = true
        elseif v[2] == "progressive" then
            if obj.Active then
                obj.CurrentStage = obj.CurrentStage + 1
            else
                obj.Active = true
            end
        elseif v[2] == "consumable" then
            local mult = 1
            if (v[3]) then
                mult = v[3]
            end
            obj.AcquiredCount = obj.AcquiredCount + (obj.Increment * mult)
        elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
            print(string.format("onItem: unknown item type %s for code %s", v[2], v[1]))
        end
    elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("onItem: could not find object for code %s", v[1]))
    end
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("local items: %s", dump_table(LOCAL_ITEMS)))
        print(string.format("global items: %s", dump_table(GLOBAL_ITEMS)))
    end

    updateDefaultSeed()
end

-- called when a location gets cleared
function onLocation(location_id, location_name)
    MANUAL_CHECKED = false
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onLocation: %s, %s", location_id, location_name))
    end
    local v = LOCATION_MAPPING[location_id]
    if not v and AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("onLocation: could not find location mapping for id %s", location_id))
    end
    if not v[1] then
        return
    end
    local obj = Tracker:FindObjectForCode(v[1])
    if obj then
        if v[1]:sub(1, 1) == "@" then
            obj.AvailableChestCount = obj.AvailableChestCount - 1
        else
            obj.Active = true
        end
    elseif AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("onLocation: could not find object for code %s", v[1]))
    end
    if location_name == "Maku Path: Key Chest" then
        obj = Tracker:FindObjectForCode("@Overworld/Lynna|South Shore|Palace/Maku Path (Rear Entrance)/Key Chest")
        obj.AvailableChestCount = obj.AvailableChestCount - 1
    end
    if location_name == "Maku Path: Basement" then
        obj = Tracker:FindObjectForCode("@Overworld/Lynna|South Shore|Palace/Maku Path (Rear Entrance)/Basement")
        obj.AvailableChestCount = obj.AvailableChestCount - 1
    end
    if location_name == "Maku Path Heart Piece" then
        obj = Tracker:FindObjectForCode("@Overworld/Lynna|South Shore|Palace/Maku Path (Rear Entrance)/Heart Piece")
        obj.AvailableChestCount = obj.AvailableChestCount - 1
    end
    -- Link Rescuing Nayru to recieving her check
    if location_name == "Rescue Nayru" then
        obj = Tracker:FindObjectForCode("Nayru")
        obj.Active = true
    end
    MANUAL_CHECKED = true
end

-- called when a locations is scouted
function onScout(location_id, location_name, item_id, item_name, item_player)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onScout: %s, %s, %s, %s, %s", location_id, location_name, item_id, item_name,
            item_player))
    end
end

-- called when a bounce message is received 
function onBounce(json)
    if AUTOTRACKER_ENABLE_DEBUG_LOGGING_AP then
        print(string.format("called onBounce: %s", dump_table(json)))
    end
    -- your code goes here
end

-- handler function for the custom lua item that stores manually marked off locations
function LocationHandler(location)
    if MANUAL_CHECKED then
        local custom_storage_item = Tracker:FindObjectForCode("manual_location_storage")
        if not custom_storage_item then
            return
        end
        if Archipelago.PlayerNumber == -1 then -- not connected
            if ROOM_SEED ~= "default" then -- seed is from previous connection
                ROOM_SEED = "default"
                custom_storage_item.ItemState.MANUAL_LOCATIONS["default"] = {}
            else -- seed is default
            end
        end
        local full_path = location.FullID
        if location.AvailableChestCount < location.ChestCount then --add to list
            custom_storage_item.ItemState.MANUAL_LOCATIONS[ROOM_SEED][full_path] = location.AvailableChestCount
        else --remove from list or set back to max chestcount
            custom_storage_item.ItemState.MANUAL_LOCATIONS[ROOM_SEED][full_path] = nil
        end
    end
end

-- add AP callbacks
-- un-/comment as needed
Archipelago:AddClearHandler("clear handler", onClear)
Archipelago:AddItemHandler("item handler", onItem)
Archipelago:AddLocationHandler("location handler", onLocation)
Archipelago:AddSetReplyHandler("set reply handler", onSetReply)
-- Archipelago:AddScoutHandler("scout handler", onScout)
-- Archipelago:AddBouncedHandler("bounce handler", onBounce)
Archipelago:AddRetrievedHandler("retrieved", retrieved)
ScriptHost:AddOnLocationSectionChangedHandler("location_section_change_handler", LocationHandler)
