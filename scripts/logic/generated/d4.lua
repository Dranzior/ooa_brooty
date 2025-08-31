enter_d4:connect_one_way_entrance(d4_first_chest,function() return All(
            Any(
                ooa_can_kill_stalfos(),
                ooa_can_push_enemy()
            ),
            Any(
                ooa_has_switch_hook(),
                ooa_can_jump_1_wide_liquid(false)
            )) end)
d4_first_chest:connect_one_way_entrance(d4_cube_chest,function() return ooa_has_feather() end)
enter_d4:connect_one_way_entrance(d4_minecart_A,function() return All(
            ooa_has_small_keys(4, 1),
            ooa_can_jump_1_wide_liquid(false)
        ) end)
d4_minecart_A:connect_one_way_entrance(d4_first_crystal_switch,function() return Any(
            ooa_has_seedshooter(),
            All(
                ooa_option_hard_logic(),
                ooa_has_boomerang()
            )
        ) end)
d4_minecart_A:connect_one_way_entrance(d4_minecart_chest,function() return ooa_can_trigger_lever() end)
d4_minecart_A:connect_one_way_entrance(d4_minecart_B,function() return All(
            ooa_can_trigger_lever_from_minecart(),
            ooa_has_bracelet(),
            ooa_can_kill_stalfos(),
            ooa_has_small_keys(4, 2)
        ) end)
d4_minecart_B:connect_one_way_entrance(d4_second_crystal_switch,function() return Any(
            ooa_has_seedshooter(),
            All(
                ooa_option_hard_logic(),
                ooa_has_boomerang()
            )
        ) end)
d4_minecart_B:connect_one_way_entrance(d4_minecart_C,function() return ooa_has_small_keys(4, 3) end)
d4_minecart_C:connect_one_way_entrance(d4_color_tile_drop,function() return Any(
            ooa_can_kill_normal_using_seedshooter(),
            All(
                ooa_option_medium_logic(),
                ooa_has_sword())) end)
d4_color_tile_drop:connect_one_way_entrance(d4_minecart_D,function() return ooa_has_small_keys(4, 4) end)
d4_minecart_D:connect_one_way_entrance(d4_small_floor_puzzle,function() return All(
            ooa_generic_boss_and_miniboss_kill(),
            ooa_has_bombs()
        ) end)
d4_minecart_D:connect_one_way_entrance(d4_large_floor_puzzle,function() return Any(
            All(
                ooa_can_jump_1_wide_liquid(false),
                ooa_has_switch_hook()),
            All(




                ooa_option_hard_logic(),
                ooa_generic_boss_and_miniboss_kill(),
                ooa_can_jump_3_wide_liquid(),
                ooa_has_cane(),
                ooa_has_noble_sword())
        ) end)
d4_large_floor_puzzle:connect_one_way_entrance(d4_boss,function() return All(
            ooa_has_boss_key(4),
            ooa_has_switch_hook(),
            Any(
                ooa_has_sword(),

                ooa_can_punch(),
                ooa_has_boomerang()
            )
        ) end)
d4_large_floor_puzzle:connect_one_way_entrance(d4_lava_pot_chest,function() return All(
            ooa_has_small_keys(4, 5),
            ooa_has_bracelet(),
            ooa_has_switch_hook()) end)
