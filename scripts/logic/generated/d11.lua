inside_d11:connect_one_way_entrance(d11_pots_puzzle_1,function() return All(

            ooa_has_bracelet(),
            ooa_can_use_ember_seeds(true),


            ooa_has_cane()
        ) end)
d11_pots_puzzle_1:connect_one_way_entrance(d11_statue_1_puzzle,function() return All(
            ooa_has_small_keys(11, 1),
            Any(
                ooa_has_bombs(),
                ooa_has_bombchus()
            ),
            ooa_can_jump_2_wide_pit(false)
        ) end)
d11_statue_1_puzzle:connect_one_way_entrance(d11_bridge_puzzle_1,function() return All(
            ooa_has_small_keys(11, 2),
            ooa_can_use_pegasus_seeds(),
            ooa_has_seedshooter()
        ) end)
d11_bridge_puzzle_1:connect_one_way_entrance(d11_shoot_eyes,function() return All(
            ooa_has_small_keys(11, 3),
            ooa_can_use_scent_seeds_for_smell()
        ) end)
d11_shoot_eyes:connect_one_way_entrance(d11_statue_2_puzzle)
d11_shoot_eyes:connect_one_way_entrance(d11_pots_puzzle_2,function() return All(
            ooa_has_switch_hook(),
            ooa_has_small_keys(11, 4)
        ) end)
d11_pots_puzzle_2:connect_one_way_entrance(d11_statue_3_puzzle)
d11_pots_puzzle_2:connect_one_way_entrance(d11_bridge_puzzle_2,function() return ooa_has_small_keys(11, 5) end)
d11_bridge_puzzle_2:connect_one_way_entrance(d11_color_room)
d11_bridge_puzzle_2:connect_one_way_entrance(d11_water_puzzle_1f,function() return All(
            ooa_has_small_keys(11, 6),
            ooa_can_dive()
        ) end)
d11_water_puzzle_1f:connect_one_way_entrance(d11_water_puzzle_b1f,function() return ooa_has_small_keys(11, 7) end)
d11_water_puzzle_b1f:connect_one_way_entrance(d11_basement,function() return ooa_has_small_keys(11, 8) end)
d11_basement:connect_one_way_entrance(d11_minecart_room)
d11_basement:connect_one_way_entrance(d11_reward,function() return ooa_can_kill_normal_enemy() end)
