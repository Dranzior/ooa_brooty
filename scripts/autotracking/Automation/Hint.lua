Hint = Hint or {}

PriorityToHighlight = {}
if Highlight then
	PriorityToHighlight = {
		[0] = Highlight.Unspecified,
		[10] = Highlight.NoPriority,
		[20] = Highlight.Avoid,
		[30] = Highlight.Priority,
		[40] = Highlight.None -- found
	}
end

function Hint.Setup()
	PLAYER_ID = Archipelago.PlayerNumber or -1
	TEAM_NUMBER = Archipelago.TeamNumber or 0

	if Archipelago.PlayerNumber > -1 then
		HINTS_ID = "_read_hints_"..TEAM_NUMBER.."_"..PLAYER_ID
		DATA_STORAGE_ID = "OoS_"..TEAM_NUMBER.."_"..PLAYER_ID

		if Highlight then
			Archipelago:SetNotify({HINTS_ID, DATA_STORAGE_ID})
			Archipelago:Get({HINTS_ID, DATA_STORAGE_ID})
		else
			Archipelago:SetNotify({DATA_STORAGE_ID})
			Archipelago:Get({DATA_STORAGE_ID})
		end
	end
end

function Hint.Process(key, value)
	PLAYER_ID = Archipelago.PlayerNumber or -1
	TEAM_NUMBER = Archipelago.TeamNumber or 0
	HINTS_ID = "_read_hints_"..TEAM_NUMBER.."_"..PLAYER_ID
	if key == HINTS_ID and Highlight then
		for _, hint in ipairs(value) do
			if not hint.found and hint.finding_player == Archipelago.PlayerNumber then
				Hint.UpdateHints(hint.location, hint.status)
			else
				Hint.ClearHints(hint.location)
			end
		end
	end
end

-- called when a location is hinted or the status of a hint is changed
function Hint.UpdateHints(locationID, status)
	if not Highlight then
		return
	end
	local locations = LOCATION_MAPPING[locationID]
	for _, location in ipairs(locations) do
		local section = Tracker:FindObjectForCode(location)
		if section then
			section.Highlight = PriorityToHighlight[status]
		else
			print(string.format("No object found for code: %s", location))
		end
	end
end

function Hint.ClearHints(locationID)
	if not Highlight then
		return
	end
	local locations = LOCATION_MAPPING[locationID]
	if (not locations) then
		return
	end
	for _, location in ipairs(locations) do
		local section = Tracker:FindObjectForCode(location)
		if section then
			section.Highlight = Highlight.None
		else
			print(string.format("No object found for code: %s", location))
		end
	end
end