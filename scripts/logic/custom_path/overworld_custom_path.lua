-- Connect Start location to the main graph
StartLocation = OoALocation.New("StartLocation")
StartLocation:connect_one_way_entrance(Menu)

-- Nuun Carpenters custom location
Carpenter = OoALocation.New("Carpenter")
nuun:connect_one_way(Carpenter, function()
    return Any(
        ooa_can_go_back_to_present(),
        ooa_has_flute(),
        All(
            ooa_is_companion_moosh(),
            ooa_can_break_bush(),
            ooa_can_jump_3_wide_pit(false),
            ooa_option_hard_logic())
    )
end)

-- Overworld scouting
lynna_village:connect_one_way_entrance(black_tower_heartpiece, function() return AccessibilityLevel.Inspect end)

-- Insert Toggles into logic
Raft_toggle = OoALocation.New("Raft_toggle")
raftons_raft:insertIntermediateAfterCheck(crescent_past_west, Raft_toggle, function() return Has("raft_toggle") end)

MakuSeed_toggle = OoALocation.New("MakuSeed_toggle")
maku_seed:insertIntermediateAfterCheck(veran_beaten, MakuSeed_toggle, function() return Has("makuseed_toggle") end)

CureKingZora_toggle = OoALocation.New("CureKingZora_toggle")
zora_village:insertIntermediateAfterCheck(zora_king_gift, CureKingZora_toggle,
    function() return Has("curezora_toggle") end)

CureFairy_toggle = OoALocation.New("CureFairy_toggle")
zora_village:insertIntermediateAfterCheck(zora_seas_chest, CureFairy_toggle,
    function() return Has("curefairy_toggle") end)

KingZoraPermission_toggle = OoALocation.New("KingZoraPermission_toggle")
zora_king_gift:insertIntermediateAfterCheck(d7_entrance, KingZoraPermission_toggle,
    function() return Has("enterjabu_toggle") and Has("curefairy_toggle") end)

TurningSeedling_toggle = OoALocation.New("TurningSeedling_toggle")
crescent_past_west:insertIntermediateAfterCheck(crescent_island_tree, TurningSeedling_toggle,
    function() return Has("turningseedling_toggle") end)

NayruRescued_toggle = OoALocation.New("NayruRescued_toggle")
rescue_nayru:insertIntermediateAfterCheck(maku_tree, NayruRescued_toggle, function() return Has("Nayru") end)
