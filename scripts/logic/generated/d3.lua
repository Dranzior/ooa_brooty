enter_d3:connect_one_way_entrance(d3_pols_voice_chest,function() return ooa_has_bombs() end)
d3_six_blocs_drop:connect_one_way_entrance(d3_pols_voice_chest,function() return All(
            ooa_can_break_bush(),
            ooa_can_kill_pols_voice()
        ) end)
enter_d3:connect_one_way_entrance(d3_1F_spinner,function() return Any(
            ooa_can_kill_moldorm(true),
            ooa_has_bracelet()
        ) end)
d3_1F_spinner:connect_one_way_entrance(d3_S_crystal)
d3_1F_spinner:connect_one_way_entrance(d3_E_crystal,function() return ooa_has_bombs() end)
d3_E_crystal:connect_one_way_entrance(d3_statue_drop,function() return ooa_has_bombs() end)
enter_d3:connect_one_way_entrance(d3_pitfall,function() return ooa_has_small_keys(3, 1) end)
d3_pitfall:connect_one_way_entrance(d3_W_crystal,function() return ooa_can_kill_pols_voice(true) end)
d3_pitfall:connect_one_way_entrance(d3_N_crystal,function() return Any(
            ooa_has_seedshooter(),
            ooa_has_boomerang(),
            All(
                ooa_option_hard_logic(),
                ooa_has_switch_hook()
            )
        ) end)
d3_pitfall:connect_one_way_entrance(d3_armos_drop,function() return ooa_can_kill_armos() end)
d3_W_crystal:connect_one_way_entrance(d3_six_blocs_drop,function() return All(
            Any(
                ooa_has_bombs(),
                All(
                    ooa_has_scent_seeds(),
                    ooa_has_seedshooter()),
                ooa_has_switch_hook(),
                All(
                    ooa_has_cane(),
                    ooa_has_bracelet(),
                    ooa_option_medium_logic())
            ),
            Any(
                ooa_has_bombs(),
                ooa_has_seedshooter(),
                All(
                    ooa_option_hard_logic(),
                    Any(
                        ooa_has_switch_hook(),
                        ooa_has_boomerang())
                )
            )
        ) end)
d3_six_blocs_drop:connect_one_way_entrance(d3_conveyor_belt_room,function() return ooa_can_kill_armos() end)
d3_pitfall:connect_one_way_entrance(d3_B1F_spinner,function() return All(
            Has("_d3_S_crystal"),
            Has("_d3_E_crystal"),
            Has("_d3_N_crystal"),
            Has("_d3_W_crystal")) end)
d3_B1F_spinner:connect_one_way_entrance(d3_crossroad)
d3_B1F_spinner:connect_one_way_entrance(d3_torch_chest,function() return All(
            ooa_can_use_ember_seeds(true),
            ooa_has_seedshooter()) end)
d3_pitfall:connect_two_ways_entrance(d3_crossing_bridge_room_1,function() return Any(
            ooa_has_seedshooter(),
            ooa_can_jump_3_wide_pit(false),
            ooa_can_toss_ring(),
            All(
                ooa_option_hard_logic(),
                ooa_has_boomerang()
            )
        ) end)
d3_crossing_bridge_room_1:connect_two_ways_entrance(d3_between_two_bridge_room,function() return ooa_has_small_keys(3, 4) end)
d3_between_two_bridge_room:connect_two_ways_entrance(d3_crossing_bridge_room_2,function() return Any(
            ooa_has_seedshooter(),
            ooa_can_jump_4_wide_pit(false),
            All(
                ooa_option_hard_logic(),
                ooa_has_feather(),
                Any(
                    ooa_has_sword(),
                    All(
                        ooa_has_bombs(),
                        Any(
                            ooa_can_use_ember_seeds(true),
                            ooa_can_use_scent_seeds_offensively()
                        ))),
                Any(
                    ooa_can_jump_3_wide_pit(false),
                    ooa_has_switch_hook(),
                    All(
                        ooa_has_bracelet(),
                        ooa_has_small_keys(3, 4)
                    )
                )
            )
        ) end)
d3_crossing_bridge_room_1:connect_one_way_entrance(d3_bridge_chest)
d3_post_subterror:connect_two_ways_entrance(d3_between_two_bridge_room,function() return All(
            ooa_can_jump_2_wide_pit(false)
        ) end)
d3_B1F_spinner:connect_one_way_entrance(d3_B1F_east,function() return All(

            ooa_generic_boss_and_miniboss_kill(), 
            ooa_has_shovel(),
            Any(
                ooa_has_seedshooter(),
                All(
                    ooa_option_hard_logic(),
                    ooa_has_sword())
            )
        ) end)
d3_crossing_bridge_room_2:connect_one_way_entrance(d3_post_subterror)
d3_B1F_spinner:connect_one_way_entrance(d3_post_subterror,function() return All(
            ooa_generic_boss_and_miniboss_kill(), 
            ooa_has_shovel()) end)
d3_post_subterror:connect_one_way_entrance(d3_moldorm_drop,function() return ooa_can_kill_moldorm(true) end)
d3_crossing_bridge_room_2:connect_one_way_entrance(d3_boss,function() return All(
            ooa_has_boss_key(3),
            Any(
                ooa_has_seedshooter(),
                All(
                    ooa_option_hard_logic(),
                    ooa_can_use_seeds()
                )
            ),
            Any(
                ooa_has_ember_seeds(),
                ooa_has_scent_seeds())
        ) end)
enter_d3:connect_one_way_entrance(d3_bush_beetle_room,function() return All(
            ooa_can_kill_normal_enemy(true),
            ooa_has_small_keys(3, 3)) end)
d3_bush_beetle_room:connect_one_way_entrance(d3_mimic_room,function() return All(
            ooa_can_kill_normal_enemy(false),
            ooa_has_small_keys(3, 4)) end)
