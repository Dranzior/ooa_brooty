enter_d6_past:connect_one_way_entrance(d6_wall_A_bombed,function() return ooa_has_bombs() end)
d6_wall_A_bombed:connect_one_way_entrance(d6_past_wizzrobe,function() return ooa_can_kill_wizzrobes() end)
d6_wall_A_bombed:connect_one_way_entrance(d6_past_pool_chest,function() return All(
            ooa_can_use_ember_seeds(true),
            ooa_can_swim(false)) end)
d6_wall_A_bombed:connect_one_way_entrance(d6_canal_expanded,function() return All(
            ooa_can_use_ember_seeds(false),
            ooa_has_seedshooter()) end)
d6_canal_expanded:connect_one_way_entrance(d6_past_rope_chest,function() return All(
            ooa_can_dive(),
            ooa_can_kill_underwater(true)) end)
enter_d6_past:connect_one_way_entrance(d6_past_color_room,function() return All(
            ooa_can_kill_normal_enemy(true),
            Any(
                ooa_has_feather(),
                All(
                    ooa_option_medium_logic(),
                    ooa_can_use_mystery_seeds())
            )
        ) end)
enter_d6_past:connect_one_way_entrance(d6_past_stalfos_chest,function() return All(
            ooa_can_use_ember_seeds(false),
            Any(
                ooa_option_hard_logic(),
                ooa_can_use_scent_seeds_for_smell(),

                All(
                    ooa_can_jump_1_wide_pit(false),
                    ooa_can_kill_stalfos())
            )
        ) end)
enter_d6_past:connect_one_way_entrance(d6_wall_B_bombed,function() return All(
            ooa_has_cane(),
            ooa_has_bracelet(),
            ooa_can_jump_1_wide_pit(false),
            ooa_has_small_keys(9, 1),
            ooa_has_bombs()
        ) end)
d6_wall_B_bombed:connect_one_way_entrance(d6_past_spear_chest,function() return ooa_can_dive() end)
d6_wall_B_bombed:connect_one_way_entrance(d6_past_diamond_chest,function() return All(
            ooa_can_dive(),
            ooa_has_switch_hook()
        ) end)
d6_wall_B_bombed:connect_one_way_entrance(d6_boss,function() return All(
            ooa_has_boss_key(9),
            ooa_can_dive(),
            ooa_has_small_keys(9, 3),
            ooa_has_seedshooter(),
            Any(
                ooa_has_sword(),
                All(
                    ooa_has_seedshooter(),
                    Any(
                        ooa_has_scent_seeds(),
                        ooa_has_ember_seeds())),
                ooa_can_punch())
        ) end)
enter_d6_present:connect_one_way_entrance(d6_present_diamond_chest,function() return ooa_has_switch_hook() end)
enter_d6_present:connect_one_way_entrance(d6_present_orb_room,function() return Any(
            ooa_can_swim(false),
            ooa_can_jump_3_wide_liquid(),
            ooa_has_switch_hook()) end)
d6_present_orb_room:connect_one_way_entrance(d6_present_rope_chest,function() return All(
            Any(
                ooa_has_seedshooter(),
                All(
                    ooa_option_hard_logic(),
                    ooa_can_jump_2_wide_pit(false),
                    ooa_has_sword()),
                ooa_can_jump_3_wide_pit(false)
            ),
            ooa_can_use_scent_seeds_for_smell()
        ) end)
d6_present_orb_room:connect_one_way_entrance(d6_present_handmaster_room,function() return Any(
            ooa_has_seedshooter(),
            All(
                ooa_option_hard_logic(),
                ooa_can_jump_2_wide_pit(false),
                ooa_has_sword()),
            ooa_can_jump_4_wide_pit(false)
        ) end)
d6_present_handmaster_room:connect_one_way_entrance(d6_present_cube_chest,function() return All(
            ooa_has_switch_hook(),
            ooa_has_bombs(),
            Any(
                ooa_option_hard_logic(),
                ooa_can_jump_1_wide_pit(false)
            )
        ) end)
d6_present_handmaster_room:connect_one_way_entrance(d6_present_spinner_chest,function() return All(
            Has("_d6_wall_B_bombed"),
            Any(

                ooa_has_switch_hook(),
                ooa_can_jump_1_wide_pit(false))
        ) end)
enter_d6_present:connect_one_way_entrance(d6_present_beamos_chest,function() return All(
            Has("_d6_canal_expanded"),
            ooa_has_feather(),
            Any(
                ooa_can_swim(false),
                All(
                    ooa_has_small_keys(6, 3),
                    ooa_has_switch_hook())
            )
        ) end)
d6_present_beamos_chest:connect_one_way_entrance(d6_present_rng_chest,function() return All(
            ooa_has_bracelet(),
            ooa_can_kill_normal_enemy(true),
            ooa_has_small_keys(6, 3)) end)
enter_d6_present:connect_one_way_entrance(d6_present_channel_chest,function() return All(
            Has("_d6_canal_expanded"),
            ooa_has_switch_hook(),
            ooa_has_small_keys(6, 3)) end)
d6_present_spinner_chest:connect_one_way_entrance(d6_present_vire_chest,function() return All(
            Any(
                ooa_has_sword(),
                Has("Expert's Ring"),
                ooa_option_medium_logic()
            ),
            ooa_has_small_keys(6, 3),
            ooa_has_switch_hook()
        ) end)
