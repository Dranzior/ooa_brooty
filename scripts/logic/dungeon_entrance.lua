StartLocation = OoALocation.New("StartLocation")
StartLocation:connect_one_way_entrance(Menu)

d0_entrance:connect_two_ways(enter_d0)
d1_entrance:connect_two_ways(enter_d1)
d2_present_entrance:connect_two_ways(enter_d2)
d2_past_entrance:connect_two_ways(enter_d2)
d3_entrance:connect_two_ways(enter_d3)
d4_entrance:connect_two_ways(enter_d4)
d5_entrance:connect_two_ways(enter_d5)
d6_past_entrance:connect_two_ways(enter_d6_past)
d6_present_entrance:connect_two_ways(enter_d6_present)
d7_entrance:connect_two_ways(enter_d7)
d8_entrance:connect_two_ways(enter_d8)

Carpenter = OoALocation.New("Carpenter")
nuun:connect_one_way(Carpenter, function() return Any(
    ooa_can_go_back_to_present(),
    ooa_has_flute(),
    All(
        ooa_is_companion_moosh(),
        ooa_can_break_bush(),
        ooa_can_jump_3_wide_pit(false),
        ooa_option_hard_logic())
    ) end)