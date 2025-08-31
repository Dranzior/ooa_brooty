enter_d7:connect_one_way_entrance(enter_d7_with_suit,function() return ooa_can_dive() end)
enter_d7_with_suit:connect_one_way_entrance(d7_spike_chest)
enter_d7_with_suit:connect_one_way_entrance(d7_crab_chest,function() return Any(
            ooa_can_kill_underwater(),
            All(
                Has("_d7_drain"),
                ooa_can_kill_normal_enemy()
            )
        ) end)
enter_d7_with_suit:connect_one_way_entrance(d7_diamond_puzzle,function() return ooa_has_switch_hook() end)
enter_d7_with_suit:connect_one_way_entrance(d7_flower_room,function() return All(
            ooa_has_long_hook(),
            ooa_has_feather()
        ) end)
enter_d7_with_suit:connect_one_way_entrance(d7_stairway_chest,function() return Any(
            ooa_has_long_hook(),
            All(
                Has("_d7_drain"),
                ooa_has_cane(),
                ooa_has_switch_hook())
        ) end)
d7_stairway_chest:connect_one_way_entrance(d7_right_wing,function() return ooa_can_kill_moldorm() end)
enter_d7_with_suit:connect_one_way_entrance(d7_drain,function() return Any(
            ooa_has_small_keys(7, 3)) end)
d7_drain:connect_one_way_entrance(d7_boxed_chest)
d7_drain:connect_one_way_entrance(d7_cane_diamond_puzzle,function() return All(
            ooa_has_long_hook(),
            ooa_has_cane()) end)
enter_d7_with_suit:connect_one_way_entrance(d7_flood,function() return All(
            ooa_has_long_hook(),
            ooa_has_small_keys(7, 4)) end)
d7_flood:connect_one_way_entrance(d7_terrace)
d7_flood:connect_one_way_entrance(d7_left_wing)
d7_flood:connect_one_way_entrance(d7_boss,function() return ooa_has_boss_key(7) end)
d7_flood:connect_one_way_entrance(d7_hallway_chest,function() return ooa_has_small_keys(7, 5) end)
d7_stairway_chest:connect_one_way_entrance(d7_miniboss_chest,function() return All(
            ooa_has_feather(),
            ooa_has_small_keys(7, 7),
            Any(
                ooa_has_sword(),
                ooa_has_boomerang(),
                All(
                    ooa_has_seedshooter(),
                    ooa_has_scent_seeds()
                )
            )
        ) end)
d7_flood:connect_one_way_entrance(d7_post_hallway_chest,function() return ooa_has_small_keys(7, 7) end)
d7_drain:connect_one_way_entrance(d7_island_chest,function() return All(
            ooa_has_small_keys(7, 7),
            ooa_has_switch_hook()) end)
