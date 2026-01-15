enter_d5:connect_one_way_entrance(d5_switch_A,function() return All(
            ooa_can_kill_normal_enemy(),
            Any(
                ooa_can_trigger_switch(),
                All(
                    ooa_option_hard_logic(),
                    ooa_has_bracelet())
            )
        ) end)
d5_switch_A:connect_one_way_entrance(d5_blue_peg_chest)
d5_switch_A:connect_one_way_entrance(d5_dark_room,function() return All(
            ooa_can_trigger_switch(),
            Any(

                ooa_has_cane(),
                ooa_has_switch_hook(),
                All(
                    ooa_option_medium_logic(),
                    Any(
                        ooa_can_kill_normal_enemy(false),
                        ooa_can_push_enemy(),
                        ooa_has_boomerang(),
                        ooa_can_use_pegasus_seeds_for_stun())
                )
            )
        ) end)
d5_switch_A:connect_one_way_entrance(d5_like_like_chest,function() return Any(
            ooa_can_trigger_far_switch(),
            All(
                ooa_option_hard_logic(),
                ooa_has_bracelet()),
            All(
                ooa_option_hard_logic(),
                ooa_has_feather(),
                Any(
                    ooa_can_use_ember_seeds(false),
                    ooa_can_use_scent_seeds_for_smell(),
                    ooa_can_use_mystery_seeds())
            )
        ) end)
d5_switch_A:connect_one_way_entrance(d5_eyes_chest,function() return Any(
            ooa_has_seedshooter(),
            All(
                ooa_option_medium_logic(),
                ooa_can_use_pegasus_seeds(),
                ooa_has_feather(),
                ooa_can_use_mystery_seeds(),
                ooa_can_toss_ring()
            )
        ) end)
d5_switch_A:connect_one_way_entrance(d5_two_statue_puzzle,function() return All(
            ooa_can_break_pot(),
            ooa_has_feather(),
            ooa_has_cane(),
            Any(
                ooa_has_seedshooter(),
                ooa_has_boomerang(),
                All(
                    ooa_can_jump_2_wide_pit(false),
                    ooa_has_sword(false)),
                All(
                    ooa_option_hard_logic(),
                    ooa_can_jump_2_wide_pit(false),
                    Any(
                        ooa_can_use_ember_seeds(false),
                        ooa_can_use_scent_seeds_for_smell(),
                        ooa_can_use_mystery_seeds())
                )
            )
        ) end)
d5_switch_A:connect_one_way_entrance(d5_boss,function() return All(
            ooa_has_boss_key(5),
            ooa_has_cane(),
            ooa_has_sword()) end)
d5_switch_A:connect_one_way_entrance(d5_crossroads,function() return All(
            ooa_can_kill_normal_enemy(false),
            ooa_can_jump_2_wide_pit(false),
            ooa_has_bracelet(),
            ooa_has_small_keys(5, 2),
            Any(
                ooa_has_cane(),
                All(
                    ooa_option_hard_logic(),
                    ooa_can_jump_3_wide_pit(false)),
                All(
                    ooa_option_hard_logic(),
                    ooa_has_sword(),
                    ooa_has_switch_hook())
            )
        ) end)
d5_crossroads:connect_one_way_entrance(d5_diamond_chest,function() return ooa_has_switch_hook() end)
d5_switch_A:connect_one_way_entrance(d5_three_statue_puzzle,function() return All(
            ooa_has_cane(),
            ooa_has_small_keys(5, 5)) end)
d5_switch_A:connect_one_way_entrance(d5_six_statue_puzzle,function() return All(
            ooa_has_ember_seeds(),
            ooa_has_seedshooter(),
            ooa_has_small_keys(5, 5),
            ooa_can_jump_1_wide_pit(false)) end)
d5_crossroads:connect_one_way_entrance(d5_red_peg_chest,function() return All(
            ooa_can_trigger_far_switch(),
            ooa_has_small_keys(5, 5)) end)
d5_red_peg_chest:connect_one_way_entrance(d5_owl_puzzle,function() return Any(
            ooa_option_medium_logic(),
            ooa_has_cane()
        ) end)
