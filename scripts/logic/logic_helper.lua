---@diagnostic disable: lowercase-global

function default(val, default_val)
    if val == nil then
        return default_val
    else
        return val
    end
end

function ooa_has_sword(accept_biggoron)
    accept_biggoron = default(accept_biggoron, true)
    return Any(
        Has("Progressive Sword"),
        All(
            accept_biggoron,
            Has("Biggoron's Sword")
        )
    )
end

function ooa_has_noble_sword()
    return Has("Progressive Sword", 2)
end

function ooa_has_shield()
    return Has("Progressive Shield")
end

function ooa_has_feather()
    return Has("Feather")
end

function ooa_has_satchel(level)
    level = default(level, 1)
    return Has("Seed Satchel", level)
end

function ooa_has_seedshooter()
    return Has("Seed Shooter")
end

function ooa_has_boomerang()
    return Has("Boomerang")
end

function ooa_has_cane()
    return Has("Cane of Somaria")
end

function ooa_has_bracelet()
    return Has("Progressive Bracelet")
end

function ooa_has_glove()
    return Has("Progressive Bracelet", 2)
end

function ooa_has_shovel()
    return Has("Shovel")
end

function ooa_has_flippers()
    return Has("Progressive Flippers")
end

function ooa_has_siren_suit()
    return Has("Progressive Flippers", 2)
end

function ooa_has_switch_hook()
    return Has("Progressive Hook")
end

function ooa_has_long_hook()
    return Has("Progressive Hook", 2)
end

function ooa_has_ember_seeds()
    return Any(
        Has("Ember Seeds"),
        All(
            Has("_wild_ember_seeds"),
            ooa_option_medium_logic()
        )
    )
end

function ooa_has_scent_seeds()
    return Has("Scent Seeds")
end

function ooa_has_pegasus_seeds()
    return Has("Pegasus Seeds")
end

function ooa_has_mystery_seeds()
    return Any(
        Has("Mystery Seeds"),
        All(
            Has("_wild_mystery_seeds"),
            ooa_option_medium_logic()
        )
    )
end

function ooa_has_gale_seeds()
    return Has("Gale Seeds")
end

function ooa_has_small_keys(dungeon_id, amount)
    if (dungeon_id == 6) then
        dungeon_id = "6_2"
    end
    if (dungeon_id == 9) then
        dungeon_id = "6_1"
    end
    amount = default(amount, 1)
    return (Has("d"..dungeon_id.."sk", amount) or
            Has("d"..dungeon_id.."mk"))
end

function ooa_has_boss_key(dungeon_id)
    -- Specific case for D6 Past, because of course D6 is mess.
    if (dungeon_id == 6 or dungeon_id == 9) then
        return Any(
            Has("d6bk"),
            All(
                Has("master_key_boss"),
                Has("d6_1mk")
            )
        )
    end

    return Any(
        Has("d" .. dungeon_id .. "bk"),
        All(
            Has("master_key_boss"),
            Has("d"..dungeon_id.."mk")
        )
    )
end

-- Options and generation predicates

function ooa_option_medium_logic()
    return Any(
        Has("l_med"),
        Has("l_hard"),
        AccessibilityLevel.SequenceBreak
    )
end

function ooa_option_hard_logic()
    return Any(
        Has("l_hard"),
        AccessibilityLevel.SequenceBreak
    )
end

function ooa_is_companion_ricky()
    return Has("nuun_ricky")
end

function ooa_is_companion_moosh()
    return Has("nuun_moosh")
end

function ooa_is_companion_dimitri()
    return Has("nuun_dimitri")
end

function ooa_has_essences(target_count)
    essenceCount = 0
    for var = 1, 8 do
        if (Tracker:ProviderCountForCode("d" .. var) > 0) then
            essenceCount = essenceCount + 1
        end
    end
    return essenceCount >= target_count
end

function ooa_has_essences_for_maku_seed()
    return ooa_has_essences(Tracker:ProviderCountForCode("allessence"))
end

function ooa_has_slates(target_count)
    return Has("Slate", target_count)
end

function ooa_has_enough_slates()
    return ooa_has_slates(Tracker:ProviderCountForCode("requiredslates"))
end

-- Various item predicates

function ooa_has_rupees(amount)
    -- Rupee checks being quite approximative, being able to farm is a
    -- must-have to prevent any stupid lock
    if not ooa_can_farm_rupees() then
        return false
    end
    rupees = amount --TODO Implement rupee logic
    --rupees = Tracker:ProviderCountForCode("Rupees (1)")
    rupees = rupees + Tracker:ProviderCountForCode("Rupees (5)") * 5
    rupees = rupees + Tracker:ProviderCountForCode("Rupees (10)") * 10
    rupees = rupees + Tracker:ProviderCountForCode("Rupees (20)") * 20
    rupees = rupees + Tracker:ProviderCountForCode("Rupees (50)") * 50
    rupees = rupees + Tracker:ProviderCountForCode("Rupees (100)") * 100
    rupees = rupees + Tracker:ProviderCountForCode("Rupees (200)") * 200

    -- Secret rooms inside D2 and D6 containing loads of rupees, but only in medium logic
    if ooa_option_medium_logic() then
        if Has("_reached_d2_rupee_room") then
            rupees = rupees + 150
        end
        if Has("_reached_d6_rupee_room") then
            rupees = rupees + 90
        end
    end

    return rupees >= amount
end

function ooa_can_farm_rupees()
    -- Having Ember Seeds and a weapon or a shovel is enough to guarantee that we can reach
    -- a significant amount of rupees
    return Any(
        ooa_has_sword(),
        ooa_has_shovel()
    )
end


function ooa_can_trigger_switch()
    return Any(
        ooa_has_boomerang(),
        ooa_has_bombs(),
        ooa_has_seedshooter(),
        All(
            ooa_has_satchel(),
            Any(
                ooa_has_ember_seeds(),
                ooa_has_scent_seeds(),
                ooa_has_mystery_seeds()
            )
        ),
        ooa_has_sword(),
        ooa_has_switch_hook(),
        ooa_can_punch()
    )
end

function ooa_can_trigger_far_switch()
    return Any(
        ooa_has_boomerang(),
        ooa_has_bombs(),
        ooa_has_seedshooter(),
        ooa_has_switch_hook(),
        All(
            ooa_option_medium_logic(),
            ooa_has_sword(false),
            Has("Energy Ring")
        )
    )
end

function ooa_has_bombs(amount)
    amount = default(amount, 1)
    return Has("Bombs (10)", amount)
end

function ooa_has_flute()
    return Has("Flute")
end

function ooa_can_summon_ricky()
    return All(
        ooa_has_flute(),
        ooa_is_companion_ricky()
    )
end

function ooa_can_summon_moosh()
    return All(
        ooa_has_flute(),
        ooa_is_companion_moosh()
    )
end

function ooa_can_summon_dimitri()
    return All(
        ooa_has_flute(),
        ooa_is_companion_dimitri()
    )
end

function ooa_can_open_portal()
    return Has("Progressive Harp")
end

function ooa_can_go_back_to_present()
    return Has("Progressive Harp", 2)
end

function ooa_can_switch_past_and_present()
    return Has("Progressive Harp", 3)
end

-- Jump-related predicates

function ooa_can_jump_1_wide_liquid(can_summon_companion)
    return Any(
        ooa_has_feather(),
        All(
            ooa_option_medium_logic(),
            can_summon_companion,
            ooa_can_summon_ricky()
        )
    )
end

function ooa_can_jump_2_wide_liquid()
    return Any(
        All(
            ooa_has_feather(),
            ooa_can_use_pegasus_seeds()
        ),
        All(
            -- Hard logic expects bomb jumps over 2-wide liquids
            ooa_option_hard_logic(),
            ooa_has_feather(),
            ooa_has_bombs()
        )
    )
end

function ooa_can_jump_3_wide_liquid()
    return Any(
        All(
            ooa_option_hard_logic(),
            ooa_has_feather(),
            ooa_can_use_pegasus_seeds(),
            ooa_has_bombs()
        )
    )
end

function ooa_can_jump_1_wide_pit(can_summon_companion)
    return Any(
        ooa_has_feather(),
        All(
            can_summon_companion,
            Any(
                ooa_can_summon_moosh(),
                ooa_can_summon_ricky()
            )
        )
    )
end

function ooa_can_jump_2_wide_pit(can_summon_companion)
    return Any(
        All(
            ooa_has_feather(),
            Any(
                -- Medium logic expects player to be able to jump above 2-wide pits without pegasus seeds
                ooa_option_medium_logic(),
                ooa_can_use_pegasus_seeds()
            )
        ),
        All(
            can_summon_companion,
            ooa_can_summon_moosh()
        )
    )
end

function ooa_can_jump_3_wide_pit(can_summon_companion)
    return Any(
        All(
            ooa_option_medium_logic(),
            ooa_has_feather(),
            ooa_can_use_pegasus_seeds()
        ),
        All(
            can_summon_companion,
            ooa_can_summon_moosh()
        )
    )
end

function ooa_can_jump_4_wide_pit(can_summon_companion)
    return All(
        can_summon_companion,
        ooa_can_summon_moosh()
    )
end

-- Seed-related predicates

function ooa_can_use_seeds()
    return Any(
        ooa_has_seedshooter(),
        ooa_has_satchel()
    )
end

function ooa_has_seed_kind_count(count)
    seedCount = 0
    if ooa_has_ember_seeds() then
        seedCount = seedCount+1
    end
    if ooa_has_mystery_seeds() then
        seedCount = seedCount+1
    end
    if ooa_has_scent_seeds() then
        seedCount = seedCount+1
    end
    if ooa_has_pegasus_seeds() then
        seedCount = seedCount+1
    end
    if ooa_has_gale_seeds() then
        seedCount = seedCount+1
    end

    return seedCount >= count
end

function ooa_can_use_ember_seeds(accept_mystery_seeds)
    return All(
        ooa_can_use_seeds(),
        Any(
            ooa_has_ember_seeds(),
            All(
                -- Medium logic expects the player to know they can use mystery seeds
                -- to randomly get the ember effect in some cases
                accept_mystery_seeds,
                ooa_option_medium_logic(),
                ooa_has_mystery_seeds()
            )
        )
    )
end

function ooa_can_use_scent_seeds_offensively()
    return All(
        Any(
            ooa_has_seedshooter(),
            All(
                ooa_option_hard_logic(),
                ooa_has_satchel()
            )
        ),
        ooa_has_scent_seeds()
    )
end

function ooa_can_use_scent_seeds_for_smell()
    return All(
        ooa_has_satchel(),
        ooa_has_scent_seeds()
    )
end

function ooa_can_use_pegasus_seeds()
    return All(
        -- Unlike other seeds, pegasus only have an interesting effect with the satchel
        ooa_has_satchel(),
        ooa_has_pegasus_seeds()
    )
end

function ooa_can_use_pegasus_seeds_for_stun()
    return All(
        ooa_has_seedshooter(),
        ooa_has_pegasus_seeds()
    )
end

function ooa_can_warp_using_gale_seeds()
    return All(
        ooa_has_satchel(),
        ooa_has_gale_seeds()
    )
end

function ooa_can_use_gale_seeds_offensively(ranged)
    ranged = default(ranged, false)

    return All(
        ooa_has_gale_seeds(),
        ooa_option_medium_logic(),
        Any(
            ooa_has_seedshooter(),
            All(
                (not ranged),
                ooa_has_satchel(),
                Any(
                    ooa_option_hard_logic(),
                    ooa_has_feather()
                )
            )
        )
    )
end

function ooa_can_use_mystery_seeds()
    return All(
        ooa_can_use_seeds(),
        ooa_has_mystery_seeds()
    )
end

-- Break / kill predicates

function ooa_can_break_bush(can_summon_companion)
    can_summon_companion = default(can_summon_companion, false)

    var= Any(
        ooa_has_sword(),
        ooa_has_bracelet(),
        ooa_has_switch_hook(),
        All(
            can_summon_companion,
            ooa_has_flute()
        ),
        All(
            -- Consumables need at least medium logic, since they need a good knowledge of the game
            -- not to be frustrating
            ooa_option_medium_logic(),
            Any(
                ooa_has_bombs(2),
                ooa_can_use_ember_seeds(false),
                All(
                    ooa_has_seedshooter(),
                    ooa_has_gale_seeds()
                )
            )
        )
    )
    return var
end

function ooa_can_break_tingle_balloon()
    return All(
        Any(
            ooa_has_sword(),
            ooa_has_boomerang()
            --ooa_can_punch(state), ?
        ),
        ooa_has_feather()
    )
end

function ooa_can_harvest_regrowing_bush(Allow_bombs)
    Allow_bombs = default(Allow_bombs, true)
    return Any(
        ooa_has_sword(),
        All(
            Allow_bombs,
            ooa_has_bombs()
        )
    )
end

function ooa_can_break_pot()
    return Any(
        ooa_has_bracelet(),
        ooa_has_noble_sword(),
        ooa_has_switch_hook(),
        Has("Biggoron's Sword")
    )
end

function ooa_can_break_flowers(can_summon_companion)
    return Any(
        ooa_has_sword(),
        All(
            can_summon_companion,
            ooa_has_flute()
        ),
        All(
            -- Consumables need at least medium logic, since they need a good knowledge of the game
            -- not to be frustrating
            ooa_option_medium_logic(),
            Any(
                ooa_has_bombs(2),
                ooa_can_use_ember_seeds(false),
                All(
                    ooa_has_seedshooter(),
                    ooa_has_gale_seeds()
                )
            )
        )
    )
end

function ooa_can_break_crystal()
    return Any(
        ooa_has_sword(),
        ooa_has_bombs(),
        ooa_has_bracelet(),
        All(
            ooa_option_medium_logic(),
            Has("Expert's Ring")
        )
    )
end

function ooa_can_break_sign()
    return Any(
        ooa_has_noble_sword(),
        Has("Biggoron's Sword"),
        ooa_has_bracelet(),
        ooa_can_use_ember_seeds(false)
    )
end

function ooa_can_harvest_tree(can_use_companion)
    return Any(
        All(
            ooa_can_use_seeds(),
            Any(
                ooa_has_sword(),
                ooa_can_punch(),
                All(
                    can_use_companion,
                    ooa_option_medium_logic(),
                    ooa_can_summon_dimitri()
                )
            )
        ),
        AccessibilityLevel.Inspect -- If you can't harvest a tree, at least you should be able to scout it
    )
end

function ooa_can_push_enemy()
    return Any(
        --ooa_has_rod(state),
        ooa_has_shield()
    )
end

function ooa_can_kill_normal_enemy(can_kill_with_hook, pit_available)
    can_kill_with_hook = default(can_kill_with_hook, false)
    pit_available = default(pit_available, false)

    canPush = AccessibilityLevel.None
    if pit_available then
        canPush = ooa_can_push_enemy()
    end

    return Any(
        canPush,
        ooa_has_sword(),
        ooa_can_kill_normal_using_satchel(),
        ooa_can_kill_normal_using_seedshooter(),
        All(
            ooa_option_medium_logic(),
            ooa_has_bombs(4)
        ),
        All(
            ooa_option_medium_logic(),
            ooa_has_cane()
        ),
        ooa_can_punch(),
        All(
            can_kill_with_hook,
            ooa_has_switch_hook()
        )
    )
end

function ooa_can_kill_moldorm(pit_available)
    pit_available = default(pit_available, false)

    canPush = AccessibilityLevel.None
    if pit_available then
        canPush = ooa_can_push_enemy()
    end

    return Any(
        canPush,
        ooa_has_sword(),
        ooa_can_use_scent_seeds_offensively(),
        -- Not including mystery seed, because even in hard logic this is just pure torture
        All(
            ooa_option_medium_logic(),
            ooa_has_bombs(4)),
        All(
            ooa_option_medium_logic(),
            ooa_has_cane()),
        ooa_can_punch(),
        ooa_has_switch_hook()
    )
end

function ooa_can_kill_wizzrobes(pit_available)
    pit_available = default(pit_available, false)

    canPush = AccessibilityLevel.None
    if pit_available then
        canPush =  ooa_can_push_enemy()
    end

    return Any(
        canPush,
        ooa_has_sword(),
        ooa_can_kill_normal_using_satchel(),
        ooa_can_kill_normal_using_seedshooter(),
        All(
            ooa_option_medium_logic(),
            ooa_has_bombs(4)
        ),
        ooa_can_punch()
    )
end

function ooa_generic_boss_and_miniboss_kill()
    return Any(
        ooa_has_sword(),
        ooa_can_use_scent_seeds_offensively(),
        ooa_can_punch(),
        ooa_has_switch_hook()
    )
end

function ooa_can_kill_underwater(can_kill_with_hook)
    can_kill_with_hook = default(can_kill_with_hook, false)
    return Any(
        ooa_has_sword(),
        ooa_can_kill_normal_using_seedshooter(),
        ooa_can_punch(),
        All(
            can_kill_with_hook,
            ooa_has_switch_hook()
        )
    )
end

function ooa_can_kill_normal_using_satchel()
    -- Expect a 50+ seed satchel to ensure we can chain dungeon rooms to some extent if that's our only kill option
    if not ooa_has_satchel(2) then
        return false
    end

    return Any(
        -- Casual logic => only ember
        ooa_has_ember_seeds(),
        All(
            -- Medium logic => Allow scent or gale+feather
            ooa_option_medium_logic(),
            Any(
                ooa_has_scent_seeds(),
                ooa_has_mystery_seeds(),
                All(
                    ooa_has_gale_seeds(),
                    ooa_has_feather()
                )
            )
        ),
        All(
            -- Hard logic => Allow gale without feather
            ooa_option_hard_logic(),
            ooa_has_gale_seeds()
        )
    )
end

function ooa_can_kill_normal_using_seedshooter()
    -- Expect a 50+ seed satchel to ensure we can chain dungeon rooms to some extent if that's our only kill option
    if not ooa_has_satchel(2) then
        return false
    end

    return All(
        ooa_has_seedshooter(),
        Any(
            ooa_has_ember_seeds(),
            ooa_has_scent_seeds(),
            All(
                ooa_option_medium_logic(),
                Any(
                    ooa_has_mystery_seeds(),
                    ooa_has_gale_seeds()
                )
            )
        )
    )
end

function ooa_can_kill_armored_enemy()
    return Any(
        ooa_has_sword(),
        All(
            ooa_has_satchel(2),  -- Expect a 50+ seeds satchel to be able to chain rooms in dungeons
            ooa_has_scent_seeds(),
            Any(
                ooa_has_seedshooter(),
                ooa_option_medium_logic()
            )
        ),
        All(
            ooa_option_medium_logic(),
            ooa_has_cane()
        ),
        ooa_can_punch()
    )
end

function ooa_can_kill_stalfos()
    return Any(
        ooa_can_kill_normal_enemy()
    )
end

function ooa_can_kill_pols_voice(ranged)
    ranged = default(ranged, false)
    return Any(
        ooa_can_open_portal(),
        ooa_has_flute(),
        ooa_has_bombs(),
        ooa_can_use_gale_seeds_offensively(ranged)
    )
end

function ooa_can_kill_armos(ranged)
    ranged = default(ranged, false)
    return Any(
        ooa_has_bombs(),
        ooa_can_use_scent_seeds_offensively()
        -- magic boomrang
    )
end

function ooa_can_punch()
    return All(
        ooa_option_medium_logic(),
        Any(
            Has("Fist Ring"),
            Has("Expert's Ring")
        )
    )
end

function ooa_can_trigger_lever()
    return Any(
        ooa_can_trigger_lever_from_minecart(),
        All(
            ooa_option_medium_logic(),
            ooa_has_shovel()
        )
    )
end

function ooa_can_trigger_lever_from_minecart()
    return Any(
        ooa_has_sword(),
        ooa_has_boomerang(),
        ooa_can_use_scent_seeds_offensively(),
        ooa_can_use_mystery_seeds(),
        ooa_has_seedshooter() -- Any seed works using slingshot
    )
end

function ooa_can_flip_spiked_beetle()
    return Any(
        ooa_has_shield(),
        All(
            ooa_option_medium_logic(),
            ooa_has_shovel()
        )
    )
end

function ooa_can_kill_spiked_beetle()
    return Any(
        All(  -- Regular flip + kill
            ooa_can_flip_spiked_beetle(),
            Any(
                ooa_has_sword(),
                ooa_can_kill_normal_using_satchel(),
                ooa_can_kill_normal_using_seedshooter()
            )
        ),
        -- Instant kill using Gale Seeds
        ooa_can_use_gale_seeds_offensively()
    )
end

-- Action predicates

function ooa_can_swim(can_summon_companion)
    return Any(
        ooa_has_flippers(),
        All(
            can_summon_companion,
            ooa_can_summon_dimitri()
        )
    )
end

function ooa_can_swim_deepwater(can_summon_companion)
    return Any(
        ooa_has_siren_suit(),
        All(
            can_summon_companion,
            ooa_can_summon_dimitri()
        )
    )
end

function ooa_can_dive()
    return ooa_has_siren_suit()
end

function ooa_can_remove_rockslide(can_summon_companion)
    return Any(
        ooa_has_bombs(),
        All(
            can_summon_companion,
            ooa_can_summon_ricky()
        )
    )
end

function ooa_can_remove_dirt(can_summon_companion)
    return Any(
        ooa_has_shovel(),
        All(
            can_summon_companion,
            ooa_has_flute()
        )
    )
end

function ooa_can_meet_maple()
    return ooa_can_kill_normal_enemy()
end

function ooa_can_toss_ring()
    return All(
        ooa_option_medium_logic(),
        ooa_has_bracelet(),
        Has("Toss Ring")
    )
end