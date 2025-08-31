enter_d1:connect_one_way_entrance(d1_east_terrace,function() return ooa_can_kill_normal_enemy(true) end)
d1_east_terrace:connect_one_way_entrance(d1_ghini_drop)
d1_east_terrace:connect_one_way_entrance(d1_crossroad)
d1_east_terrace:connect_one_way_entrance(d1_crystal_room,function() return All(
            ooa_can_use_ember_seeds(false),
            ooa_can_break_crystal()
        ) end)
enter_d1:connect_one_way_entrance(d1_west_terrace,function() return ooa_can_break_pot() end)
enter_d1:connect_one_way_entrance(d1_pot_chest,function() return ooa_can_break_pot() end)
d1_ghini_drop:connect_one_way_entrance(d1_wide_room,function() return ooa_has_small_keys(1, 2) end)
d1_wide_room:connect_one_way_entrance(d1_two_button_chest)
d1_wide_room:connect_one_way_entrance(d1_one_button_chest)
d1_wide_room:connect_one_way_entrance(d1_boss,function() return All(
            ooa_has_boss_key(1),
            ooa_has_bracelet(),
            ooa_generic_boss_and_miniboss_kill()) end)
d1_wide_room:connect_one_way_entrance(d1_U_room,function() return All(
            ooa_can_break_bush(),
            ooa_generic_boss_and_miniboss_kill(),
            ooa_has_small_keys(1, 3)
        ) end)
d1_west_terrace:connect_one_way_entrance(d1_U_room)
d1_U_room:connect_one_way_entrance(d1_basement,function() return ooa_can_use_ember_seeds(true) end)
