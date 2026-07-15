Events = Events or {}

function Events.process(key, value)
    if key == DATA_STORAGE_ID then
        for event, active in pairs(value) do
            if active then
                name = string.match(event, "[^\\/]*$")
                name = string.gsub(name, "%s+", "")
                name = string.gsub(name, ",+", "")
                item = Tracker:FindObjectForCode(name)
                if item then
                    item.Active = true
                end
            end
        end
    end
end
