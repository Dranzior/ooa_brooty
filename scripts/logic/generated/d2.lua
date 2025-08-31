enter_d2:connect_one_way_entrance(d2_bombed_terrace,function() return All(
            ooa_can_kill_spiked_beetle(),
            ooa_has_bombs()
        ) end)
enter_d2:connect_one_way_entrance(d2_moblin_drop,function() return All(
            ooa_can_kill_spiked_beetle(),
            ooa_can_kill_normal_enemy()
        ) end)
enter_d2:connect_one_way_entrance(d2_miniboss_arena,function() return Any(
                All(
                    ooa_has_small_keys(2, 2),
                    ooa_can_kill_normal_enemy(true, true)
                ),
                All(
                    ooa_can_jump_2_wide_pit(false),
                    ooa_can_kill_spiked_beetle()
                )
            )
         end)
d2_miniboss_arena:connect_one_way_entrance(d2_bombed_terrace,function() return All(
            ooa_can_jump_2_wide_pit(false),
            ooa_has_bombs()
        ) end)
d2_miniboss_arena:connect_one_way_entrance(d2_moblin_drop,function() return All(
            ooa_can_jump_2_wide_pit(false),
            ooa_can_kill_normal_enemy()
        ) end)
d2_miniboss_arena:connect_one_way_entrance(d2_basement,function() return ooa_generic_boss_and_miniboss_kill() end)
d2_basement:connect_one_way_entrance(d2_thwomp_tunnel)
d2_basement:connect_one_way_entrance(d2_thwomp_shelf,function() return Any(
            ooa_can_jump_1_wide_pit(false),
            All(
                ooa_option_hard_logic(),
                ooa_has_cane(),
                Any(
                    ooa_has_bombs(),
                    ooa_can_use_pegasus_seeds()
                )
            )
        ) end)
d2_basement:connect_one_way_entrance(d2_basement_drop,function() return ooa_has_feather() end)
d2_basement:connect_one_way_entrance(d2_basement_chest,function() return All(
            ooa_has_feather(),
            ooa_can_trigger_lever_from_minecart(),
            ooa_has_bombs(),
            ooa_can_kill_normal_enemy()
        ) end)
d2_basement:connect_one_way_entrance(d2_moblin_platform,function() return All(
            ooa_has_feather(),
            ooa_has_small_keys(2, 3)) end)
d2_moblin_platform:connect_one_way_entrance(d2_statue_puzzle,function() return Any(
            ooa_has_bracelet(),
            ooa_has_cane(),
            All(

                ooa_option_hard_logic(),
                ooa_can_push_enemy(),
                ooa_has_switch_hook()
            )
        ) end)
enter_d2:connect_one_way_entrance(d2_rope_room,function() return All(
            ooa_can_kill_normal_enemy(true, true),
            ooa_has_small_keys(2, 4)) end)
enter_d2:connect_one_way_entrance(d2_ladder_chest,function() return All(
            ooa_can_kill_normal_enemy(true),
            ooa_has_small_keys(2, 4),
            ooa_has_bombs()
        ) end)
d2_statue_puzzle:connect_one_way_entrance(d2_color_room,function() return ooa_has_small_keys(2, 5) end)
d2_color_room:connect_one_way_entrance(d2_boss,function() return All(
            ooa_has_boss_key(2),
            Any(
                ooa_has_bombs(),
                ooa_option_hard_logic()
            )
        ) end)
