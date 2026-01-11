function swapKeySettings(code)
    local masterKey = Has("master_key_small")
    local masterKeyAsBoss = Has("master_key_boss")

    if masterKeyAsBoss then
        Tracker:AddLayouts("layouts/dungeonKeys/masterKeyAndBoss.json")
    elseif masterKey then
        Tracker:AddLayouts("layouts/dungeonKeys/masterKey.json")
    else
        Tracker:AddLayouts("layouts/dungeonKeys/default.json")
    end
end

ScriptHost:AddWatchForCode("keySettings", "master_key", swapKeySettings)

function swapAnimalMap(code)
    local companion = Tracker:FindObjectForCode("companions").CurrentStage
    if companion == 1 then
        Tracker:AddLayouts("layouts/companionMap/ricky.json")
    elseif companion == 2 then
        Tracker:AddLayouts("layouts/companionMap/dimitri.json")
    elseif companion == 3 then
        Tracker:AddLayouts("layouts/companionMap/moosh.json")
    else
        Tracker:AddLayouts("layouts/companionMap/default.json")
    end
end

ScriptHost:AddWatchForCode("companionSettings", "companions", swapAnimalMap)