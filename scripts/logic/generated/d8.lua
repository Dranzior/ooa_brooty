enter_d8:connect_one_way_entrance(d8_1f_single_chest,function() return All(
            ooa_has_bombs(),
            Any(
                ooa_can_kill_normal_enemy(true),
                ooa_has_boomerang(),
                ooa_can_use_pegasus_seeds_for_stun())
        ) end)
d8_1f_single_chest:connect_one_way_entrance(d8_nw_chest,function() return All(
            ooa_has_small_keys(8, 1),
            ooa_has_switch_hook(),
            ooa_has_cane(),
            ooa_can_use_ember_seeds(true),
            ooa_has_seedshooter()) end)
d8_nw_chest:connect_one_way_entrance(d8_ghini_chest,function() return ooa_can_kill_normal_enemy() end)
d8_ghini_chest:connect_one_way_entrance(d8_blue_peg_chest,function() return ooa_has_small_keys(8, 2) end)
d8_blue_peg_chest:connect_one_way_entrance(d8_blade_trap)
d8_blue_peg_chest:connect_one_way_entrance(d8_sarcophagus_chest,function() return ooa_has_glove() end)
d8_blue_peg_chest:connect_one_way_entrance(d8_stalfos,function() return ooa_can_kill_stalfos() end)
d8_blue_peg_chest:connect_one_way_entrance(d8_maze_chest,function() return All(
            ooa_has_feather(),
            ooa_has_sword(),
            ooa_has_small_keys(8, 4)
        ) end)
d8_maze_chest:connect_one_way_entrance(d8_nw_slate_chest)
d8_maze_chest:connect_one_way_entrance(d8_ne_slate_chest,function() return All(
            ooa_has_feather(),
            ooa_can_swim(false),
            ooa_can_use_ember_seeds(false)) end)
d8_maze_chest:connect_one_way_entrance(d8_b3f_single_chest,function() return ooa_has_glove() end)
d8_b3f_single_chest:connect_one_way_entrance(d8_tile_room,function() return ooa_has_feather() end)
d8_tile_room:connect_one_way_entrance(d8_se_slate_chest)
d8_tile_room:connect_one_way_entrance(d8_boss,function() return All(
            ooa_has_enough_slates(),
            ooa_has_boss_key(8),
            ooa_has_glove(),
            ooa_has_sword()) end)
d8_blue_peg_chest:connect_one_way_entrance(d8_floor_puzzle,function() return ooa_has_small_keys(8, 5) end)
d8_maze_chest:connect_one_way_entrance(d8_sw_slate_chest,function() return All(
            ooa_has_bracelet(),
            ooa_has_small_keys(8, 5)
        ) end)
