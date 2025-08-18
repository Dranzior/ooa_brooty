-- Progressive item don't have an "amount" instead each item have a code with a different number appended to it
function HasProgressive(item, level)
        item = item .. level
    	local count = Tracker:ProviderCountForCode(item)
        return count >= 1
end

HasItem_CustomBehavior["Progressive Shield"] = function(level) return HasProgressive("shield", level) end
HasItem_CustomBehavior["Progressive Sword"] = function(level) return HasProgressive("sword", level) end
HasItem_CustomBehavior["Progressive Hook"] = function(level) return HasProgressive("hook", level) end
HasItem_CustomBehavior["Progressive Bracelet"] = function(level) return HasProgressive("bracelet", level) end
HasItem_CustomBehavior["Progressive Flippers"] = function(level) return HasProgressive("swim", level) end
HasItem_CustomBehavior["Progressive Harp"] = function(level) return HasProgressive("song", level) end
HasItem_CustomBehavior["Seed Satchel"] = function(level) return HasProgressive("satchel", level) end

-- AP World use event, to handle crystals, recreating the underlying logic here
-- Alternatively those could be converted to toggle, but untill we have some auto tracking for it, would just make it more annoying to track
HasItem_CustomBehavior["_d3_S_crystal"] = function(level)
    return Any(
        ooa_can_kill_moldorm(true),
        ooa_has_bracelet()
    )
end
HasItem_CustomBehavior["_d3_E_crystal"] = function(level)
    return All(
        Any(
            ooa_can_kill_moldorm(true),
            ooa_has_bracelet()
        ),
        ooa_has_bombs()
    )
end
HasItem_CustomBehavior["_d3_N_crystal"] = function(level)
    return All(ooa_has_small_keys(3, 1),
        Any(
            ooa_has_seedshooter(),
            ooa_has_boomerang(),
            All(
                ooa_option_hard_logic(),
                ooa_has_switch_hook()
            )
        ))
end
HasItem_CustomBehavior["_d3_W_crystal"] = function(level)
    return All(ooa_has_small_keys(3, 1),
        ooa_can_kill_pols_voice(true))
end