Menu:connect_one_way_entrance(forest_of_time)
black_tower_worker:connect_one_way_entrance(maple_trade,function() return All(
            ooa_can_kill_normal_enemy(ooa_option_medium_logic()),
            Has("Touching Book")
        ) end)
forest_of_time:connect_one_way_entrance(starting_item)
forest_of_time:connect_two_ways_entrance(outside_nayrus_house)
inside_nayrus_house:connect_one_way_entrance(nayrus_house_harp_spot)
forest_of_time:connect_two_ways_entrance(lynna_city,function() return Any(
            ooa_can_break_bush(),
            ooa_option_lynna_gardener()
        ) end)
lynna_city:connect_one_way_entrance(south_lynna_tree,function() return ooa_can_harvest_tree(true) end)
lynna_city:connect_one_way_entrance(lynna_city_chest,function() return ooa_can_use_ember_seeds(false) end)
lynna_village:connect_one_way_entrance(lynna_city_chest,function() return ooa_can_go_back_to_present() end)
lynna_city:connect_two_ways_entrance(outside_lynna_city_shop)
inside_lynna_city_shop:connect_one_way_entrance(lynna_shop,function() return ooa_can_buy_from_shop() end)
lynna_village:connect_one_way_entrance(outside_hidden_entrance_shop,function() return ooa_can_go_back_to_present() end)
inside_hidden_entrance_shop:connect_one_way_entrance(hidden_shop,function() return ooa_can_buy_from_shop() end)
lynna_city:connect_two_ways_entrance(outside_mayors_house)
inside_mayors_house:connect_one_way_entrance(mayor_plens_house,function() return ooa_has_long_hook() end)
inside_mayors_house:connect_one_way_entrance(mayor_plens_secret,function() return Has("secret_locations_on") end)
lynna_city:connect_two_ways_entrance(outside_mamamu_yan_house)
inside_mamamu_yan_house:connect_one_way_entrance(mamamu_yan_trade,function() return Has("Doggie Mask") end)
mamamu_yan_trade:connect_one_way_entrance(mamamu_yan_secret,function() return All(
            ooa_has_bracelet(),
            Has("secret_locations_on")
        ) end)
lynna_city:connect_two_ways_entrance(outside_vasus_shop)
inside_vasus_shop:connect_one_way_entrance(vasus_gift)
inside_vasus_shop:connect_one_way_entrance(vasus_victory_ring_gift)
lynna_city:connect_one_way_entrance(lynna_city_comedian_trade,function() return Has("Cheesy Mustache") end)
lynna_city:connect_two_ways_entrance(outside_petrified_kids_house)
lynna_city:connect_two_ways_entrance(outside_know_it_all_birds_house)
lynna_city:connect_two_ways_entrance(outside_troys_house)
lynna_city:connect_two_ways_entrance(outside_left_bippin_blossom_door)
lynna_city:connect_two_ways_entrance(outside_right_bippin_blossom_door)
inside_left_bippin_blossom_door:connect_two_ways_entrance(inside_right_bippin_blossom_door)
lynna_city:connect_two_ways_entrance(outside_black_tower_ruins,function() return Has("secret_locations_on") end)
inside_black_tower_ruins:connect_one_way_entrance(princess_zelda_rescue,function() return ooa_has_feather() and Has("secret_locations_on") end)
lynna_city:connect_two_ways_entrance(lynna_village)
forest_of_time:connect_one_way_entrance(lynna_village,function() return ooa_can_open_portal() end)
lynna_village:connect_two_ways_entrance(outside_town_shooting_gallery)
inside_town_shooting_gallery:connect_one_way_entrance(lynna_shooting_gallery,function() return ooa_has_sword() end)
lynna_village:connect_two_ways_entrance(outside_advance_shop,function() return Has("advanceshop") end)
inside_advance_shop:connect_one_way_entrance(advance_shop,function() return All(
            ooa_can_buy_from_shop(),
            Has("advanceshop")
        ) end)
lynna_village:connect_two_ways_entrance(outside_postman_house)
inside_postman_house:connect_one_way_entrance(postman_trade,function() return Has("Poe Clock") end)
lynna_village:connect_two_ways_entrance(outside_sad_boi_house)
inside_sad_boi_house:connect_one_way_entrance(sad_boi_trade,function() return Has("Funny Joke") end)
lynna_village:connect_two_ways_entrance(outside_gasha_farmer_house)
inside_gasha_farmer_house:connect_one_way_entrance(gasha_farmer)
lynna_village:connect_two_ways_entrance(outside_toilet_hand_house)
inside_toilet_hand_house:connect_one_way_entrance(toilet_hand_trade,function() return Has("Stationery") end)
lynna_village:connect_one_way_entrance(black_tower_worker)
lynna_village:connect_one_way_entrance(black_tower_heartpiece,function() return ooa_can_remove_dirt(false) end)
lynna_village:connect_one_way_entrance(ambis_palace_tree,function() return ooa_can_harvest_tree(false) end)
lynna_village:connect_two_ways_entrance(outside_palace_front_door,function() return Any(
            ooa_can_switch_past_and_present(),
            All(
                ooa_option_hard_logic(),
                ooa_can_use_pegasus_seeds(),
                Any(
                    ooa_can_use_scent_seeds_for_smell(),
                    ooa_can_open_portal(),
                    ooa_has_flute())
            )) end)
lynna_village:connect_two_ways_entrance(outside_palace_left_door,function() return ooa_can_switch_past_and_present() end)
lynna_village:connect_two_ways_entrance(outside_palace_right_door,function() return ooa_can_switch_past_and_present() end)
lynna_village:connect_two_ways_entrance(outside_palace_secret_entrance,function() return ooa_can_break_bush(false) end)
inside_palace_front_door:connect_two_ways_entrance(inside_palace_secret_entrance,function() return ooa_can_dive() end)
inside_palace_front_door:connect_two_ways_entrance(inside_palace_left_door)
inside_palace_front_door:connect_two_ways_entrance(inside_palace_right_door)
inside_palace_front_door:connect_one_way_entrance(ambis_palace_chest)
ambis_palace_chest:connect_one_way_entrance(rescue_nayru,function() return All(
            ooa_has_switch_hook(),
            ooa_can_use_mystery_seeds(),
            Any(
                ooa_has_sword(),
                ooa_can_punch()
            )
        ) end)
lynna_village:connect_two_ways_entrance(outside_rafton_house_left)
lynna_village:connect_two_ways_entrance(outside_rafton_house_right,function() return ooa_can_dive() end)
lynna_city:connect_two_ways_entrance(outside_rafton_house_right,function() return All(
            ooa_can_swim(true),
            ooa_can_switch_past_and_present()
        ) end)
inside_rafton_house_right:connect_two_ways_entrance(inside_rafton_house_left)
inside_rafton_house_right:connect_one_way_entrance(build_raft,function() return All(
            Has("Cheval Rope"),
            Has("Island Chart")
        ) end)
build_raft:connect_one_way_entrance(rafton_trade,function() return Has("Magic Oar") end)
outside_rafton_house_right:connect_two_ways_entrance(raftons_raft,function() return Has("_raft_built") end)
lynna_village:connect_two_ways_entrance(outside_d0,function() return ooa_can_remove_dirt(false) end)
lynna_village:connect_two_ways_entrance(outside_advisor_house)
lynna_village:connect_two_ways_entrance(outside_cheval_house,function() return
        All(
            ooa_can_jump_1_wide_liquid(false),
            ooa_can_swim(false)
         ) end)
d0_exit:connect_two_ways_entrance(maku_tree,function() return ooa_can_kill_normal_enemy() end)
rescue_nayru:connect_one_way_entrance(maku_tree)
maku_tree:connect_one_way_entrance(maku_seed,function() return ooa_has_essences_for_maku_seed() end)
maku_seed:connect_one_way_entrance(veran_beaten,function() return All(
            ooa_can_use_mystery_seeds(),
            ooa_has_switch_hook(),
            Any(
                ooa_has_bombs(),
                ooa_has_bombchus()
            ),
            Any(
                ooa_has_sword(),
                ooa_can_punch()
            )
        ) end)
veran_beaten:connect_one_way_entrance(ganon_beaten,function() return Any(
            All(

                ooa_has_noble_sword(),
                ooa_has_seedshooter(),
                ooa_can_use_ember_seeds(false),
                ooa_can_use_mystery_seeds(),
                ooa_has_feather()
            ),
            All(
                ooa_option_medium_logic(),
                ooa_has_feather(),
                ooa_has_sword(false),
                Any(

                    ooa_has_seedshooter(),
                    All(
                        ooa_option_hard_logic(),
                        ooa_has_feather(),
                        ooa_can_use_seeds(),

                        Any(
                            ooa_has_ember_seeds(),
                            ooa_has_mystery_seeds(),
                            ooa_has_scent_seeds(),
                            ooa_has_gale_seeds()
                        )
                    )
                )
            )
        ) end)
maku_seed:connect_one_way_entrance(beaten_game,function() return ooa_goal_is(Has("option_collect_maku_seed")) end)
veran_beaten:connect_one_way_entrance(beaten_game,function() return ooa_goal_is(Has("option_beat_veran")) end)
ganon_beaten:connect_one_way_entrance(beaten_game,function() return ooa_goal_is(Has("option_beat_ganon")) end)
forest_of_time:connect_two_ways_entrance(shore_present,function() return Has("Ricky's Gloves") end)
lynna_city:connect_two_ways_entrance(shore_present,function() return Any(
            ooa_can_swim_deepwater(true),
            ooa_has_bracelet(),
            All(
                Any(
                    ooa_can_go_back_to_present(),
                    ooa_can_break_bush(true)),
                ooa_can_jump_1_wide_pit(true)
            )) end)
shore_present:connect_one_way_entrance(south_shore_dirt,function() return ooa_can_remove_dirt(true) end)
shore_present:connect_two_ways_entrance(outside_lower_tingle_cave)
inside_lower_tingle_cave:connect_one_way_entrance(inside_upper_tingle_stairs,function() return ooa_has_seedshooter() end)
shore_present:connect_one_way_entrance(outside_upper_tingle_stairs,function() return Any(
            ooa_can_summon_ricky(),
            Has("Ricky's Gloves"),
            ooa_can_go_back_to_present()) end)
outside_upper_tingle_stairs:connect_one_way_entrance(shore_present,function() return ooa_can_jump_1_wide_pit(true) end)
outside_upper_tingle_stairs:connect_one_way_entrance(balloon_guys_gift,function() return ooa_can_break_tingle_balloon() end)
balloon_guys_gift:connect_one_way_entrance(balloon_guys_upgrade,function() return ooa_has_seed_kind_count(3) end)
balloon_guys_upgrade:connect_one_way_entrance(balloon_guys_secret,function() return Has("secret_locations_on") end)
shore_present:connect_one_way_entrance(outside_cheval_house,function() return ooa_can_switch_past_and_present() end)
outside_cheval_house:connect_one_way_entrance(shore_present,function() return ooa_can_go_back_to_present() end)
forest_of_time:connect_two_ways_entrance(yoll_graveyard,function() return ooa_can_use_ember_seeds(false) end)
yoll_graveyard:connect_one_way_entrance(outside_cheval_grave,function() return Any(
            ooa_can_kill_normal_enemy(true),
            ooa_can_jump_3_wide_pit(true)
        ) end)
outside_cheval_grave:connect_one_way_entrance(yoll_graveyard,function() return Any(
            All(
                ooa_can_jump_1_wide_pit(false),
                ooa_has_bracelet()
            ),
            ooa_can_jump_3_wide_pit(true)
        ) end)
inside_cheval_grave:connect_one_way_entrance(chevals_test,function() return All(
            Any(
                ooa_can_jump_1_wide_liquid(false),
                ooa_can_swim(false)),
            ooa_has_bracelet()
        ) end)
inside_cheval_grave:connect_one_way_entrance(chevals_invention,function() return ooa_can_swim(false) end)
yoll_graveyard:connect_one_way_entrance(outside_grave_under_the_tree,function() return ooa_can_use_ember_seeds(false) end)
outside_grave_under_the_tree:connect_one_way_entrance(yoll_graveyard,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                ooa_can_use_ember_seeds(false)
            )
        ) end)
inside_grave_under_the_tree:connect_one_way_entrance(drop_under_tree,function() return ooa_can_use_ember_seeds(true) end)
yoll_graveyard:connect_one_way_entrance(yoll_graveyard_heartpiece,function() return ooa_has_bracelet() end)
yoll_graveyard:connect_one_way_entrance(graveyard_door,function() return Has("Graveyard Key") end)
graveyard_door:connect_two_ways_entrance(outside_syrup_hut,function() return Any(
            ooa_can_jump_2_wide_liquid(),
            ooa_can_swim(true),
            ooa_has_long_hook()
        ) end)
inside_syrup_hut:connect_one_way_entrance(syrup_shop,function() return ooa_can_buy_from_shop() end)
graveyard_door:connect_two_ways_entrance(graveyard_poe_trade,function() return ooa_has_bracelet() end)
graveyard_poe_trade:connect_two_ways_entrance(outside_poe_grave)
graveyard_door:connect_two_ways_entrance(outside_d1)
lynna_city:connect_two_ways_entrance(fairies_woods,function() return Any(
            ooa_can_swim(true),
            ooa_has_bracelet(),
            ooa_can_switch_past_and_present(),
            All(
                ooa_option_hard_logic(),
                ooa_has_switch_hook()
            )
        ) end)
deku_forest:connect_one_way_entrance(fairies_woods,function() return ooa_can_go_back_to_present() end)
fairies_woods:connect_one_way_entrance(fairies_woods_chest,function() return Any(
            ooa_can_jump_1_wide_pit(true),
            ooa_has_switch_hook()
        ) end)
deku_forest:connect_one_way_entrance(fairies_woods_chest,function() return ooa_can_go_back_to_present() end)
fairies_woods:connect_two_ways_entrance(outside_happy_mask_shop)
inside_happy_mask_shop:connect_one_way_entrance(happy_mask_salesman_trade,function() return Has("Tasty Meat") end)
fairies_woods:connect_one_way_entrance(fairies_woods_secret,function() return Has("secret_locations_on") end)
lynna_village:connect_two_ways_entrance(deku_forest,function() return Any(
            ooa_has_bracelet(),
            ooa_can_switch_past_and_present()) end)
deku_forest:connect_two_ways_entrance(outside_deku_forest_push_block_cave_stairs,function() return Any(
            ooa_has_bracelet(),
            ooa_can_jump_1_wide_pit(false),
            ooa_can_switch_past_and_present()) end)
inside_deku_forest_push_block_cave_stairs:connect_one_way_entrance(deku_forest_cave_east)
deku_forest:connect_two_ways_entrance(outside_deku_forest_heart_cave_stairs)
deku_forest:connect_one_way_entrance(outside_deku_forest_heart_cave_bush_stairs,function() return ooa_can_use_ember_seeds(false) end)
outside_deku_forest_heart_cave_bush_stairs:connect_one_way_entrance(deku_forest,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                ooa_can_use_ember_seeds(false)
            )
        ) end)
inside_deku_forest_heart_cave_bush_stairs:connect_one_way_entrance(inside_deku_forest_heart_cave_stairs)
inside_deku_forest_heart_cave_bush_stairs:connect_one_way_entrance(deku_forest_heartpiece)
deku_forest:connect_two_ways_entrance(outside_restoration_wall_base_cave,function() return Any(
            ooa_can_jump_1_wide_pit(false),
            ooa_can_switch_past_and_present()
        ) end)
inside_restoration_wall_base_cave:connect_one_way_entrance(restoration_wall_heartpiece,function() return ooa_can_jump_1_wide_pit(false) end)
deku_forest:connect_two_ways_entrance(outside_mystery_seed_cave_front_stairs,function() return Any(
            ooa_can_jump_1_wide_pit(false),
            All(
                ooa_has_bracelet(),
                ooa_can_use_ember_seeds(false)),
            All(
                ooa_has_switch_hook(),
                ooa_option_medium_logic()
            ),
            ooa_can_switch_past_and_present()) end)
fairies_woods:connect_one_way_entrance(outside_mystery_seed_cave_back_left_stairs,function() return Any(
            ooa_can_switch_past_and_present()) end)
fairies_woods:connect_one_way_entrance(outside_mystery_seed_cave_back_right_stairs,function() return Any(
            ooa_can_switch_past_and_present()) end)
fairies_woods:connect_one_way_entrance(outside_mystery_seed_cave_front_stairs,function() return Any(
            ooa_can_switch_past_and_present()) end)
fairies_woods:connect_one_way_entrance(outside_deku_forest_push_block_cave_stairs,function() return Any(
            ooa_can_switch_past_and_present()) end)
outside_mystery_seed_cave_back_left_stairs:connect_one_way_entrance(fairies_woods,function() return Any(
            ooa_can_go_back_to_present()) end)
outside_mystery_seed_cave_back_right_stairs:connect_one_way_entrance(fairies_woods,function() return Any(
            ooa_can_go_back_to_present()) end)
outside_mystery_seed_cave_front_stairs:connect_one_way_entrance(fairies_woods,function() return Any(
            ooa_can_go_back_to_present()) end)
outside_deku_forest_push_block_cave_stairs:connect_one_way_entrance(fairies_woods,function() return Any(
            ooa_can_go_back_to_present()) end)
deku_forest:connect_one_way_entrance(outside_mystery_seed_cave_back_right_stairs,function() return All(
            ooa_can_warp_using_gale_seeds(),
            ooa_option_medium_logic()
        ) end)
outside_mystery_seed_cave_back_right_stairs:connect_one_way_entrance(deku_forest_tree,function() return ooa_can_harvest_tree(false) end)
inside_mystery_seed_cave_front_stairs:connect_two_ways_entrance(inside_mystery_seed_cave_back_left_stairs)
inside_mystery_seed_cave_front_stairs:connect_one_way_entrance(deku_forest_cave_west,function() return ooa_has_bracelet() end)
inside_mystery_seed_cave_front_stairs:connect_one_way_entrance(inside_mystery_seed_cave_back_right_stairs,function() return Any(
            ooa_has_bracelet(),
            All(
                ooa_can_jump_1_wide_pit(false),
                ooa_option_medium_logic(),
                Any(
                    ooa_has_sword(),
                    (ooa_has_satchel() and ooa_can_use_ember_seeds(false)),
                    (ooa_has_seedshooter() and ooa_can_use_ember_seeds(false)),
                    (ooa_has_seedshooter() and ooa_has_gale_seeds()),
                    ooa_has_bombchus()
                )
            ),
            All(
                ooa_has_switch_hook(),
                ooa_option_medium_logic()
            ),
            ooa_can_jump_4_wide_pit(false)
        ) end)
inside_mystery_seed_cave_back_right_stairs:connect_one_way_entrance(inside_mystery_seed_cave_front_stairs,function() return Any(
            ooa_has_bracelet(),
            All(
                ooa_can_break_bush(false),
                ooa_can_jump_1_wide_pit(false)
            ),
            ooa_can_jump_4_wide_pit(false)
        ) end)
outside_mystery_seed_cave_back_left_stairs:connect_one_way_entrance(outside_mystery_seed_cave_back_right_stairs,function() return ooa_can_warp_using_gale_seeds() end)
deku_forest:connect_one_way_entrance(deku_forest_soldier,function() return All(
            ooa_can_use_mystery_seeds()
        ) end)
deku_forest:connect_one_way_entrance(outside_d2,function() return ooa_has_explosives() end)
outside_d2:connect_one_way_entrance(deku_forest,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                ooa_has_explosives(false)
            )
        ) end)
lynna_village:connect_two_ways_entrance(outside_lost_shield_tokay_cave,function() return ooa_can_dive() end)
inside_lost_shield_tokay_cave:connect_two_ways_entrance(hidden_tokay_cave,function() return ooa_can_swim(false) end)
lynna_village:connect_two_ways_entrance(crescent_past_waters,function() return ooa_can_swim_deepwater(false) end)
raftons_raft:connect_one_way_entrance(crescent_past_waters)
crescent_past_waters:connect_one_way_entrance(crescent_past_west)
crescent_past_waters:connect_one_way_entrance(crescent_past_east)
crescent_past_waters:connect_one_way_entrance(tokay_stolen_harp)
crescent_past_west:connect_one_way_entrance(tokay_stolen_shovel)
crescent_past_west:connect_two_ways_entrance(outside_crystal_tokay_cave)
inside_crystal_tokay_cave:connect_one_way_entrance(tokay_stolen_sword,function() return Any(
            ooa_has_shovel(),
            ooa_can_break_crystal()) end)
tokay_stolen_sword:connect_one_way_entrance(tokay_crystal_cave_chest,function() return ooa_can_jump_1_wide_pit(false) end)
crescent_past_west:connect_one_way_entrance(crescent_present_west,function() return ooa_can_go_back_to_present() end)
crescent_present_west:connect_one_way_entrance(crescent_past_west,function() return ooa_can_open_portal() end)
crescent_past_west:connect_one_way_entrance(crescent_past_east,function() return ooa_can_break_bush() end)
crescent_present_west:connect_one_way_entrance(crescent_past_east,function() return ooa_can_go_back_to_present() end)
crescent_past_east:connect_two_ways_entrance(outside_past_chicken_hut_stairs,function() return ooa_has_bracelet() end)
inside_past_chicken_hut_stairs:connect_one_way_entrance(tokay_chicken_hut)
tokay_chicken_hut:connect_one_way_entrance(tokay_bomb_cave,function() return ooa_has_explosives() end)
crescent_past_east:connect_one_way_entrance(outside_wild_tokay_game,function() return ooa_has_explosives() end)
outside_wild_tokay_game:connect_one_way_entrance(crescent_past_east,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                ooa_has_explosives(false)
            )
        ) end)
inside_wild_tokay_game:connect_one_way_entrance(wild_tokay_game,function() return ooa_has_bracelet() end)
crescent_past_east:connect_two_ways_entrance(outside_past_chicken_hut_front)
crescent_past_east:connect_two_ways_entrance(outside_long_hook_pot_cave)
inside_long_hook_pot_cave:connect_one_way_entrance(tokay_pot_cave,function() return ooa_has_long_hook() end)
crescent_past_east:connect_two_ways_entrance(outside_tokay_shop)
inside_tokay_shop:connect_one_way_entrance(tokay_market_1,function() return ooa_can_use_mystery_seeds() end)
inside_tokay_shop:connect_one_way_entrance(tokay_market_2,function() return All(
            ooa_can_use_scent_seeds_for_smell(),
            ooa_can_use_scent_seeds_offensively()) end)
crescent_past_east:connect_one_way_entrance(crescent_past_middle,function() return Any(
            ooa_has_bracelet(),
            ooa_can_jump_1_wide_pit(false),
            ooa_can_switch_past_and_present()) end)
outside_crescent_pot_grotto_left:connect_two_ways_entrance(tokay_stolen_harp)
inside_crescent_pot_grotto_right:connect_one_way_entrance(inside_crescent_pot_grotto_left,function() return Any(
            ooa_has_switch_hook(),
            All(
                Any(
                    ooa_can_jump_1_wide_liquid(false),
                    ooa_can_swim(false)),
                ooa_has_noble_sword(),
                ooa_option_medium_logic()),
            All(
                ooa_can_jump_1_wide_pit(false),
                ooa_has_bracelet(),
                ooa_can_swim(false))) end)
inside_crescent_pot_grotto_left:connect_one_way_entrance(inside_crescent_pot_grotto_right,function() return All(
            ooa_can_break_pot(),
            Any(
                ooa_can_jump_1_wide_liquid(false),
                ooa_can_swim(false))) end)
outside_crescent_pot_grotto_right:connect_two_ways_entrance(crescent_past_middle)
crescent_past_middle:connect_one_way_entrance(outside_flipper_tokay_bomb_cave,function() return ooa_has_explosives() end)
outside_flipper_tokay_bomb_cave:connect_one_way_entrance(crescent_past_middle,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                ooa_has_explosives(false)
            )
        ) end)
inside_flipper_tokay_bomb_cave:connect_one_way_entrance(tokay_stolen_flippers,function() return Any(
            ooa_can_swim(false),
            All(
                ooa_has_bombs(),
                ooa_can_jump_1_wide_liquid(false)
            )
        ) end)
inside_flipper_tokay_bomb_cave:connect_one_way_entrance(inside_flipper_tokay_cave_stairs,function() return Any(
            ooa_can_jump_1_wide_liquid(false),
            ooa_can_swim(false)) end)
outside_flipper_tokay_cave_stairs:connect_two_ways_entrance(tokay_stolen_satchel)
outside_flipper_tokay_cave_stairs:connect_one_way_entrance(crescent_past_east)
crescent_present_east:connect_one_way_entrance(tokay_stolen_satchel,function() return ooa_can_switch_past_and_present() end)
lynna_city:connect_two_ways_entrance(crescent_present_west,function() return ooa_can_swim_deepwater(true) end)
tokay_stolen_harp:connect_one_way_entrance(crescent_present_west,function() return Any(
            ooa_can_go_back_to_present(),
            All(
                ooa_has_shovel(),
                ooa_can_open_portal()
            )
        ) end)
crescent_present_west:connect_two_ways_entrance(outside_d3)
crescent_present_west:connect_two_ways_entrance(outside_southern_fairy_cave)
lynna_city:connect_two_ways_entrance(outside_underwater_maze_cave,function() return ooa_can_dive() end)
inside_underwater_maze_cave:connect_two_ways_entrance(under_crescent_island,function() return ooa_can_dive() end)
crescent_past_east:connect_two_ways_entrance(crescent_present_east,function() return ooa_can_open_portal() end)
crescent_past_west:connect_one_way_entrance(crescent_present_east,function() return ooa_can_go_back_to_present() end)
crescent_present_east:connect_two_ways_entrance(outside_tokay_chef_house)
inside_tokay_chef_house:connect_one_way_entrance(tokay_chef_trade,function() return Has("Stink Bag") end)
crescent_past_west:connect_one_way_entrance(crescent_island_tree,function() return All(
            Any(
                ooa_has_bracelet(),
                ooa_can_switch_past_and_present()),
            Has("Scent Seedling"),
            ooa_can_harvest_tree(false),
            Any(
                ooa_can_open_portal(),
                All(

                    ooa_option_hard_logic(),
                    ooa_can_dive(),
                    ooa_can_warp_using_gale_seeds())
            )) end)
crescent_present_east:connect_two_ways_entrance(outside_wild_tokay_museum)
inside_wild_tokay_museum:connect_one_way_entrance(wild_tokay_secret,function() return All(
            ooa_has_bracelet(),
            Has("secret_locations_on")
        ) end)
crescent_present_east:connect_two_ways_entrance(outside_present_chicken_hut)
fairies_woods:connect_one_way_entrance(nuun,function() return All(
            ooa_can_use_ember_seeds(false),
            ooa_has_seedshooter()) end)
nuun:connect_one_way_entrance(fairies_woods,function() return ooa_can_trigger_lever() end)
lynna_village:connect_two_ways_entrance(nuun,function() return ooa_can_go_back_to_present() end)
nuun:connect_two_ways_entrance(nuun__ricky_,function() return ooa_is_companion_ricky() end)
nuun:connect_two_ways_entrance(nuun__moosh_,function() return ooa_is_companion_moosh() end)
nuun:connect_two_ways_entrance(nuun__dimitri_,function() return ooa_is_companion_dimitri() end)
nuun__ricky_:connect_one_way_entrance(nuun_highlands_cave,function() return Any(
            ooa_can_summon_ricky(),
            ooa_can_go_back_to_present()) end)
nuun__moosh_:connect_one_way_entrance(nuun_highlands_cave,function() return Any(
            ooa_can_summon_moosh(),
            ooa_can_go_back_to_present(),
            All(
                ooa_can_break_bush(),
                ooa_can_jump_3_wide_pit(false))
        ) end)
nuun__dimitri_:connect_one_way_entrance(nuun_highlands_cave,function() return ooa_can_summon_dimitri() end)
nuun__ricky_:connect_one_way_entrance(nuun_highlands_top,function() return Any(
            ooa_can_summon_ricky(),
            All(
                ooa_can_go_back_to_present(),
                ooa_option_medium_logic()),
            All(

                ooa_can_jump_1_wide_pit(false),
                Any(
                    ooa_has_sword(),
                    ooa_has_switch_hook(),
                    All(


                        ooa_option_medium_logic(),
                        Any(
                            ooa_has_bombs(2),
                            ooa_has_bombchus(),
                            (ooa_has_seedshooter() and ooa_can_use_ember_seeds(false)),
                            (ooa_has_seedshooter() and ooa_has_gale_seeds()))
                    )))
        ) end)
nuun__moosh_:connect_one_way_entrance(nuun_highlands_top,function() return Any(
            ooa_can_summon_moosh(),
            All(
                ooa_can_go_back_to_present(),
                ooa_option_medium_logic()),
            All(
                ooa_can_break_bush(),
                ooa_can_jump_3_wide_pit(false))
        ) end)
nuun__dimitri_:connect_one_way_entrance(nuun_highlands_top,function() return Any(
            ooa_can_summon_dimitri(),
            All(
                ooa_can_go_back_to_present(),
                ooa_option_medium_logic()),
            All(
                Has("Swimmer's Ring"),
                ooa_can_swim(false),
                ooa_option_medium_logic()
            )
        ) end)
nuun_highlands_top:connect_one_way_entrance(nuun__moosh_,function() return All(
            ooa_is_companion_ricky(),
            ooa_can_jump_1_wide_pit(true)
        ) end)
nuun_highlands_top:connect_one_way_entrance(nuun__ricky_,function() return All(
            ooa_is_companion_moosh(),
            ooa_can_break_bush(true)
        ) end)
nuun_highlands_top:connect_one_way_entrance(nuun__dimitri_,function() return ooa_is_companion_dimitri() end)
nuun_highlands_top:connect_two_ways_entrance(outside_nuun_fairy_cave)
nuun:connect_two_ways_entrance(symmetry_present,function() return Any(
            ooa_can_go_back_to_present(),
            ooa_has_flute(),
            All(
                ooa_is_companion_moosh(),
                ooa_can_break_bush(),
                ooa_can_jump_3_wide_pit(false),
                ooa_option_hard_logic())
        ) end)
symmetry_present:connect_one_way_entrance(symmetry_city_tree,function() return ooa_can_harvest_tree(false) end)
symmetry_present:connect_two_ways_entrance(outside_d4,function() return Has("_tuni_nut_placed") end)
symmetry_present:connect_two_ways_entrance(outside_present_top_left_symmetry_house,function() return Has("_tuni_nut_placed") end)
symmetry_present:connect_two_ways_entrance(outside_present_top_right_symmetry_house,function() return Has("_tuni_nut_placed") end)
symmetry_present:connect_two_ways_entrance(outside_present_bottom_left_symmetry_house,function() return Has("_tuni_nut_placed") end)
symmetry_present:connect_two_ways_entrance(outside_present_bottom_right_symmetry_house,function() return Has("_tuni_nut_placed") end)
symmetry_present:connect_one_way_entrance(symmetry_past,function() return Any(
            ooa_can_switch_past_and_present(),
            All(
                ooa_can_open_portal(),
                ooa_can_break_bush(false)
            )
        ) end)
symmetry_past:connect_one_way_entrance(symmetry_present,function() return ooa_can_go_back_to_present() end)
symmetry_past:connect_two_ways_entrance(outside_past_top_left_symmetry_house)
symmetry_past:connect_two_ways_entrance(outside_past_top_right_symmetry_house)
inside_past_top_left_symmetry_house:connect_one_way_entrance(symmetry_city_brother)
inside_past_top_right_symmetry_house:connect_one_way_entrance(symmetry_city_brother)
symmetry_past:connect_two_ways_entrance(outside_symmetry_town_hall)
inside_symmetry_town_hall:connect_one_way_entrance(place_tuni_nut,function() return Has("Tuni Nut") end)
place_tuni_nut:connect_one_way_entrance(symmetry_city_secret,function() return Has("secret_locations_on") end)
inside_symmetry_town_hall:connect_one_way_entrance(symmetry_middle_man_trade,function() return Has("Dumbbell") end)
symmetry_past:connect_one_way_entrance(symmetry_city_heartpiece,function() return ooa_can_go_back_to_present() end)
symmetry_past:connect_two_ways_entrance(outside_tokkey_dive_spot,function() return ooa_can_swim(false) end)
inside_tokkey_dive_spot:connect_one_way_entrance(tokkeys_composition,function() return All(
            ooa_can_open_portal()
        ) end)
symmetry_past:connect_two_ways_entrance(outside_past_bottom_left_symmetry_house)
symmetry_past:connect_two_ways_entrance(outside_past_bottom_right_symmetry_house)
symmetry_past:connect_one_way_entrance(talus_peaks,function() return All(
            ooa_can_go_back_to_present()) end)
talus_peaks:connect_one_way_entrance(outside_talus_waterfall_cave_front,function() return Any(
            ooa_can_switch_past_and_present(),
            All(
                ooa_has_bracelet(),
                ooa_can_open_portal())
        ) end)
outside_talus_waterfall_cave_front:connect_one_way_entrance(symmetry_past,function() return ooa_can_switch_past_and_present() end)
talus_peaks:connect_one_way_entrance(bomb_fairy,function() return All(
            ooa_has_bombs(),
            Has("_redirect_waterfall")
        ) end)
outside_talus_waterfall_cave_front:connect_one_way_entrance(bomb_fairy,function() return All(
            ooa_has_bombs(),
            ooa_can_go_back_to_present(),
            Has("_redirect_waterfall")) end)
inside_talus_waterfall_cave_front:connect_two_ways_entrance(inside_talus_waterfall_cave_right)
inside_talus_waterfall_cave_front:connect_two_ways_entrance(inside_talus_waterfall_cave_left)
outside_talus_waterfall_cave_right:connect_two_ways_entrance(outside_talus_waterfall_cave_left,function() return All(
            ooa_can_switch_past_and_present(),
            ooa_option_medium_logic()) end)
outside_talus_waterfall_cave_right:connect_one_way_entrance(redirect_waterfall)
outside_talus_waterfall_cave_front:connect_one_way_entrance(restoration_wall,function() return All(
            Has("_redirect_waterfall"),
            ooa_can_open_portal(),
            Any(
                ooa_can_swim(false),
                ooa_can_jump_3_wide_liquid())
            ) end)
restoration_wall:connect_one_way_entrance(bomb_fairy,function() return All(
            Has("_redirect_waterfall"),
            ooa_has_bombs(),
            ooa_can_open_portal(),
            Any(
                ooa_can_swim(false),
                ooa_can_jump_3_wide_liquid())
        ) end)
restoration_wall:connect_one_way_entrance(talus_peaks_chest,function() return ooa_can_go_back_to_present() end)
fairies_woods:connect_two_ways_entrance(restoration_wall,function() return ooa_can_switch_past_and_present() end)
restoration_wall:connect_one_way_entrance(outside_talus_waterfall_cave_front)
restoration_wall:connect_two_ways_entrance(outside_patch_cave)
outside_patch_cave:connect_one_way_entrance(symmetry_past)
inside_patch_cave:connect_one_way_entrance(patch,function() return Any(
            ooa_has_sword(),
            All(
                ooa_option_medium_logic(),
                Any(
                    ooa_has_shield(),
                    ooa_has_boomerang(),
                    ooa_has_switch_hook())
            ),
            All(
                ooa_option_hard_logic(),
                Any(
                    ooa_can_use_scent_seeds_for_smell(),
                    ooa_has_shovel())
            )
        ) end)
patch:connect_one_way_entrance(patch_tuni_nut_ceremony,function() return Has("Cracked Tuni Nut") end)
patch:connect_one_way_entrance(patch_broken_sword_ceremony,function() return Has("Broken Sword") end)
outside_present_goron_city_upper:connect_two_ways_entrance(ridge_west_present)
ridge_west_past:connect_one_way_entrance(ridge_west_present,function() return ooa_can_go_back_to_present() end)
ridge_upper_present:connect_one_way_entrance(ridge_west_present)
crown_ledge:connect_one_way_entrance(ridge_west_present)
ridge_west_present:connect_two_ways_entrance(outside_present_goron_city_stairs)
inside_present_goron_city_lower:connect_two_ways_entrance(inside_present_goron_city_upper)
inside_present_goron_city_stairs:connect_one_way_entrance(inside_present_goron_city_upper)
inside_present_goron_city_lower:connect_one_way_entrance(gorons_hiding_place,function() return ooa_has_bombs() end)
inside_present_goron_city_lower:connect_one_way_entrance(ridge_base_chest)
inside_present_goron_city_stairs:connect_one_way_entrance(ridge_west_cave_chest)
inside_present_goron_city_lower:connect_one_way_entrance(ridge_west_heartpiece,function() return Any(
            ooa_has_bombs(),
            ooa_has_bombchus()
        ) end)
ridge_west_present:connect_one_way_entrance(under_moblin_keep,function() return All(
            ooa_can_jump_1_wide_pit(false),
            ooa_can_swim(false)) end)
ridge_west_present:connect_one_way_entrance(defeat_great_moblin,function() return All(
            ooa_can_use_pegasus_seeds(),
            ooa_has_bracelet()) end)
ridge_west_present:connect_two_ways_entrance(outside_present_west_ridge_fairy_cave)
under_moblin_keep:connect_one_way_entrance(inside_moblin_keep_sewer_exit,function() return ooa_has_bombs() end)
outside_moblin_keep_sewer_exit:connect_one_way_entrance(ridge_west_present)
defeat_great_moblin:connect_one_way_entrance(outside_cave_behind_moblin_keep_front)
inside_cave_behind_moblin_keep_front:connect_two_ways_entrance(inside_cave_behind_moblin_keep_back,function() return ooa_can_jump_2_wide_pit(false) end)
lynna_village:connect_two_ways_entrance(outside_old_zora_cave,function() return Any(
            ooa_can_switch_past_and_present(),
            All(
                ooa_can_jump_1_wide_pit(false),
                Any(
                    ooa_can_jump_4_wide_pit(false),
                    ooa_has_switch_hook(),
                    ooa_can_swim_deepwater(false)))) end)
inside_old_zora_cave:connect_one_way_entrance(old_zora_trade,function() return Has("Sea Ukulele") end)
lynna_village:connect_two_ways_entrance(outside_past_goron_city_lower,function() return All(
            Any(
                ooa_can_switch_past_and_present(),
                ooa_can_jump_1_wide_pit(false)),
            Any(
                ooa_can_jump_4_wide_pit(false),
                ooa_has_switch_hook())) end)
outside_past_goron_city_lower:connect_one_way_entrance(outside_present_goron_city_lower,function() return ooa_can_go_back_to_present() end)
outside_present_goron_city_lower:connect_one_way_entrance(outside_past_goron_city_lower,function() return ooa_can_switch_past_and_present() end)
inside_past_goron_city_lower:connect_one_way_entrance(goron_elder,function() return Has("Bomb Flower") end)
ridge_west_present:connect_one_way_entrance(ridge_west_past,function() return Any(
            ooa_can_switch_past_and_present(),
            All(
                ooa_can_open_portal(),
                ooa_has_bracelet()
            )
        ) end)
goron_elder:connect_one_way_entrance(inside_past_goron_city_upper)
outside_past_goron_city_upper:connect_two_ways_entrance(ridge_west_past)
ridge_west_past:connect_one_way_entrance(outside_past_goron_city_lower)
ridge_west_past:connect_one_way_entrance(ridge_west_tree,function() return ooa_can_harvest_tree(false) end)
ridge_west_past:connect_two_ways_entrance(outside_past_behind_moblin_keep_cave)
outside_cave_behind_moblin_keep_back:connect_two_ways_entrance(crown_ledge)
crown_ledge:connect_two_ways_entrance(outside_crown_ledge_to_upper_ridge_cave_front)
crown_ledge:connect_one_way_entrance(outside_d5,function() return Has("Crown Key") end)
outside_d5:connect_one_way_entrance(crown_ledge,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                Has("Crown Key")
            )
        ) end)
inside_crown_ledge_to_upper_ridge_cave_front:connect_two_ways_entrance(inside_crown_ledge_to_upper_ridge_cave_back)
ridge_upper_present:connect_one_way_entrance(outside_treasure_hunting_goron_cave,function() return Any(
            All(
                ooa_can_open_portal(),
                ooa_has_bracelet()
            ),
            ooa_can_switch_past_and_present()) end)
outside_treasure_hunting_goron_cave:connect_one_way_entrance(ridge_upper_present,function() return ooa_can_go_back_to_present() end)
outside_treasure_hunting_goron_cave:connect_one_way_entrance(crown_ledge,function() return ooa_can_go_back_to_present() end)
outside_treasure_hunting_goron_cave:connect_two_ways_entrance(outside_cave_left_of_treasure_hunting_goron)
inside_treasure_hunting_goron_cave:connect_one_way_entrance(treasure_hunting_goron,function() return All(
            ooa_has_bombs(2),
            ooa_has_satchel(),
            ooa_can_use_ember_seeds(false)) end)
outside_crown_ledge_to_upper_ridge_cave_back:connect_two_ways_entrance(ridge_upper_present)
ridge_upper_past:connect_one_way_entrance(ridge_upper_present,function() return ooa_can_go_back_to_present() end)
ridge_upper_present:connect_two_ways_entrance(outside_empty_cave_by_echo_portal_under_rock)
ridge_upper_present:connect_two_ways_entrance(outside_present_east_ridge_upper_to_lower_cave_top)
ridge_upper_present:connect_two_ways_entrance(outside_upper_ridge_present_northeast_cave_left)
inside_present_east_ridge_upper_to_lower_cave_top:connect_one_way_entrance(inside_present_east_ridge_upper_to_lower_cave_base)
inside_present_east_ridge_upper_to_lower_cave_base:connect_one_way_entrance(inside_present_east_ridge_upper_to_lower_cave_top,function() return ooa_can_jump_3_wide_pit(false) end)
inside_upper_ridge_present_northeast_cave_right:connect_one_way_entrance(inside_upper_ridge_present_northeast_cave_left)
outside_upper_ridge_present_northeast_cave_right:connect_one_way_entrance(ridge_upper_heartpiece)
ridge_upper_present:connect_one_way_entrance(ridge_upper_past,function() return ooa_can_switch_past_and_present() end)
ridge_upper_past:connect_one_way_entrance(outside_goron_face_bomb_cave,function() return ooa_has_explosives() end)
outside_goron_face_bomb_cave:connect_one_way_entrance(ridge_upper_past,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                ooa_has_explosives()
            )
        ) end)
inside_goron_face_bomb_cave:connect_one_way_entrance(bomb_goron_head)
ridge_upper_past:connect_two_ways_entrance(outside_east_ridge_lower_to_upper_cave_top)
inside_east_ridge_lower_to_upper_cave_top:connect_two_ways_entrance(inside_east_ridge_lower_to_upper_cave_base,function() return ooa_has_switch_hook() end)
ridge_upper_past:connect_one_way_entrance(outside_upper_ridge_present_northeast_cave_right,function() return All(
            ooa_can_go_back_to_present(),
            ooa_can_break_bush()
        ) end)
outside_upper_ridge_present_northeast_cave_right:connect_one_way_entrance(ridge_upper_past,function() return All(
            ooa_can_switch_past_and_present(),
            ooa_can_break_bush()
        ) end)
outside_present_east_ridge_upper_to_lower_cave_base:connect_two_ways_entrance(ridge_base_present,function() return Any(
            ooa_option_medium_logic(),
            ooa_can_kill_normal_enemy()) end)
ridge_base_past_east:connect_one_way_entrance(ridge_base_present,function() return ooa_can_go_back_to_present() end)
ridge_base_past_west:connect_one_way_entrance(ridge_base_present,function() return ooa_can_go_back_to_present() end)
ridge_base_present:connect_two_ways_entrance(outside_present_mermaid_cave_front_porch)
ridge_base_present:connect_two_ways_entrance(outside_present_east_ridge_base_fairy_cave)
ridge_base_present:connect_two_ways_entrance(outside_present_goron_dance_hall_lower)
ridge_base_present:connect_one_way_entrance(outside_greedy_old_man_bush,function() return ooa_can_use_ember_seeds(false) end)
outside_greedy_old_man_bush:connect_one_way_entrance(ridge_base_present,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                ooa_can_use_ember_seeds(false)
            )
        ) end)
inside_present_mermaid_cave_front_porch:connect_one_way_entrance(outside_d6_present,function() return Has("Old Mermaid Key") end)
outside_d6_present:connect_one_way_entrance(inside_present_mermaid_cave_front_porch,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                Has("Old Mermaid Key")
            )
        ) end)
inside_present_mermaid_cave_front_porch:connect_one_way_entrance(pool_in_d6_entrance,function() return ooa_can_dive() end)
outside_east_ridge_lower_to_upper_cave_base:connect_two_ways_entrance(ridge_base_past_west)
ridge_base_present:connect_one_way_entrance(ridge_base_past_west,function() return Any(
            ooa_can_switch_past_and_present(),
            All(
                ooa_can_open_portal(),
                ooa_can_break_bush()
            )
        ) end)
lynna_village:connect_two_ways_entrance(ridge_base_past_west,function() return All(
            ooa_can_swim_deepwater(false),
            Any(
                ooa_can_jump_1_wide_pit(false),
                ooa_can_switch_past_and_present()
            )
        ) end)
inside_east_ridge_lower_to_upper_cave_base:connect_one_way_entrance(ridge_base_bomb_past,function() return ooa_has_explosives() end)
inside_east_ridge_lower_to_upper_cave_base:connect_one_way_entrance(ridge_diamonds_past,function() return ooa_has_switch_hook() end)
ridge_base_past_west:connect_two_ways_entrance(outside_past_mermaid_cave_front_porch,function() return ooa_can_swim(false) end)
inside_past_mermaid_cave_front_porch:connect_one_way_entrance(outside_d6_past,function() return All(
            Any(
                ooa_can_swim(false),
                ooa_can_jump_1_wide_pit(false)),
            Has("Mermaid Key")) end)
outside_d6_past:connect_one_way_entrance(inside_past_mermaid_cave_front_porch,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                Has("Mermaid Key")),
            Any(
                ooa_can_swim(false),
                ooa_can_jump_1_wide_pit(false))) end)
ridge_base_past_west:connect_two_ways_entrance(outside_past_goron_dance_hall_lower,function() return ooa_can_swim(false) end)
outside_past_goron_dance_hall_lower:connect_one_way_entrance(outside_generous_old_man_bush,function() return ooa_can_use_ember_seeds(false) end)
outside_generous_old_man_bush:connect_one_way_entrance(outside_past_goron_dance_hall_lower,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                ooa_can_use_ember_seeds(false)
            )
        ) end)
inside_present_goron_dance_hall_lower:connect_one_way_entrance(trade_rock_brisket,function() return Has("Rock Brisket") and Has("Brother Emblem") end)
inside_present_goron_dance_hall_lower:connect_one_way_entrance(first_goron_dance,function() return ooa_has_rupees(10) end)
inside_present_goron_dance_hall_lower:connect_two_ways_entrance(inside_present_goron_dance_hall_middle,function() return All(
            Has("Brother Emblem"),
            Any(
                ooa_has_switch_hook(),
                ooa_can_jump_3_wide_pit(false))
        ) end)
inside_present_goron_dance_hall_middle:connect_two_ways_entrance(goron_diamond_cave,function() return Any(
            ooa_has_switch_hook(),
            ooa_can_jump_3_wide_pit(false)) end)
inside_present_goron_dance_hall_middle:connect_two_ways_entrance(big_bang_game,function() return Has("Goronade") end)
inside_present_goron_dance_hall_middle:connect_two_ways_entrance(ridge_NE_cave_present)
ridge_NE_cave_present:connect_one_way_entrance(inside_upper_ridge_present_northeast_cave_left)
inside_past_goron_dance_hall_lower:connect_one_way_entrance(goron_dance__with_letter,function() return ooa_has_rupees(10) and Has("Letter of Introduction") end)
inside_past_goron_dance_hall_lower:connect_one_way_entrance(trade_goron_vase,function() return Has("Goron Vase") and Has("Brother Emblem") end)
inside_past_goron_dance_hall_lower:connect_one_way_entrance(inside_past_goron_dance_hall_middle,function() return All(
            Has("Brother Emblem"),
            ooa_can_jump_2_wide_pit(false)) end)
inside_past_goron_dance_hall_middle:connect_one_way_entrance(trade_lava_juice,function() return Has("Lava Juice") end)
inside_past_goron_dance_hall_middle:connect_one_way_entrance(ridge_bush_cave,function() return ooa_has_switch_hook() end)
outside_present_goron_dance_hall_middle:connect_two_ways_entrance(ridge_mid_present)
ridge_mid_past:connect_one_way_entrance(ridge_mid_present,function() return ooa_can_go_back_to_present() end)
ridge_mid_present:connect_two_ways_entrance(outside_empty_cave_right_of_target_carts)
ridge_mid_present:connect_one_way_entrance(outside_target_carts,function() return All(
            ooa_has_switch_hook(),
            Has("_access_cart")) end)
outside_target_carts:connect_one_way_entrance(ridge_mid_present)
outside_target_carts:connect_two_ways_entrance(outside_empty_cave_left_of_target_carts)
goron_shooting_gallery:connect_one_way_entrance(outside_target_carts,function() return ooa_can_go_back_to_present() end)
inside_target_carts:connect_two_ways_entrance(target_carts_1)
target_carts_1:connect_two_ways_entrance(target_carts_2)
inside_target_carts:connect_one_way_entrance(troy_secret,function() return Has("secret_locations_on") end)
ridge_mid_present:connect_one_way_entrance(ridge_base_present)
outside_past_goron_dance_hall_middle:connect_two_ways_entrance(ridge_mid_past)
ridge_upper_past:connect_one_way_entrance(ridge_mid_past)
ridge_mid_present:connect_one_way_entrance(ridge_mid_past,function() return ooa_can_switch_past_and_present() end)
ridge_mid_past:connect_one_way_entrance(ridge_move_vine_seed,function() return ooa_has_switch_hook() end)
outside_target_carts:connect_one_way_entrance(outside_goron_shooting_gallery,function() return All(
            ooa_can_open_portal(),
            ooa_has_bracelet()) end)
ridge_mid_present:connect_one_way_entrance(outside_goron_shooting_gallery,function() return ooa_can_switch_past_and_present() end)
inside_goron_shooting_gallery:connect_one_way_entrance(goron_shooting_gallery_price,function() return ooa_has_sword() end)
goron_shooting_gallery_price:connect_one_way_entrance(elder_secret,function() return Has("secret_locations_on") end)
ridge_mid_past:connect_one_way_entrance(ridge_east_tree,function() return All(
            ooa_can_harvest_tree(false),
            ooa_option_medium_logic(),
            ooa_can_warp_using_gale_seeds()) end)
ridge_mid_present:connect_one_way_entrance(ridge_east_tree,function() return All(
            ooa_can_harvest_tree(false),
            ooa_can_switch_past_and_present()) end)
outside_goron_shooting_gallery:connect_one_way_entrance(outside_past_east_ridge_fairy_cave)
outside_past_east_ridge_fairy_cave:connect_one_way_entrance(ridge_east_tree,function() return ooa_can_harvest_tree(false) end)
outside_past_east_ridge_fairy_cave:connect_one_way_entrance(outside_past_goron_dance_hall_lower)
lynna_city:connect_two_ways_entrance(outside_present_drifting_island_house,function() return ooa_can_dive() end)
lynna_city:connect_two_ways_entrance(zora_village_present,function() return Any(

            All(
                ooa_can_dive(),
                ooa_has_switch_hook(),
                ooa_can_switch_past_and_present()),

            All(
                Has("_sea_cleaned"),
                ooa_can_swim_deepwater(true))
        ) end)
outside_present_fairy_queen_cave:connect_one_way_entrance(zora_village_present,function() return ooa_can_dive() end)
zora_village_past:connect_one_way_entrance(zora_village_present,function() return ooa_can_go_back_to_present() end)
zora_village_present:connect_one_way_entrance(zora_village_tree,function() return All(
            ooa_can_harvest_tree(false),
            ooa_can_swim_deepwater(true)
                ) end)
zora_village_present:connect_one_way_entrance(zora_village_chest,function() return ooa_can_dive() end)
zora_village_present:connect_one_way_entrance(fairies_coast_chest,function() return ooa_can_dive() end)
outside_zora_crypt_cave:connect_one_way_entrance(fairies_coast_chest,function() return ooa_can_swim(true) end)
zora_village_present:connect_two_ways_entrance(outside_present_underwater_zora_duplex_left,function() return ooa_can_travel_underwater() end)
zora_village_present:connect_two_ways_entrance(outside_present_underwater_zora_duplex_right,function() return ooa_can_travel_underwater() end)
zora_village_present:connect_two_ways_entrance(outside_present_underwater_zora_house,function() return ooa_can_travel_underwater() end)
zora_village_present:connect_two_ways_entrance(outside_present_zora_palace,function() return ooa_can_travel_underwater() end)
zora_village_present:connect_one_way_entrance(outside_zora_crypt_cave,function() return All(
            ooa_has_explosives(),
            ooa_can_dive()
        ) end)
outside_zora_crypt_cave:connect_one_way_entrance(zora_village_present,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                ooa_has_explosives()),
            ooa_can_dive()
        ) end)
zora_village_present:connect_two_ways_entrance(library_island_present,function() return ooa_can_dive() end)
zora_village_present:connect_one_way_entrance(outside_d7,function() return Has("_got_permission_from_king_zora") end)
outside_d7:connect_one_way_entrance(zora_village_present,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                Has("_got_permission_from_king_zora")
            )
        ) end)
zora_village_present:connect_one_way_entrance(zoras_reward,function() return  Has("_finished_d7") end)
inside_present_zora_palace:connect_one_way_entrance(zora_palace_chest,function() return ooa_can_travel_underwater() end)
zora_palace_chest:connect_one_way_entrance(zora_king_gift,function() return Has("_saved_king_zora") end)
zora_king_gift:connect_one_way_entrance(king_zoras_permission,function() return Has("_sea_cleaned") end)
king_zoras_permission:connect_one_way_entrance(king_zoras_secret,function() return All(
            Has("secret_locations_on"),
            Has("_finished_d7")
        ) end)
inside_zora_crypt_cave:connect_one_way_entrance(zora_NW_cave,function() return ooa_has_glove() end)
outside_past_fairy_queen_cave:connect_one_way_entrance(outside_present_fairy_queen_cave,function() return ooa_can_go_back_to_present() end)
outside_present_fairy_queen_cave:connect_one_way_entrance(outside_past_fairy_queen_cave,function() return ooa_can_switch_past_and_present() end)
inside_present_underwater_zora_duplex_left:connect_two_ways_entrance(inside_present_underwater_zora_duplex_right,function() return ooa_can_travel_underwater() end)
library_island_present:connect_one_way_entrance(library_island_past,function() return ooa_can_switch_past_and_present() end)
library_island_past:connect_one_way_entrance(library_island_present,function() return ooa_can_go_back_to_present() end)
library_island_present:connect_two_ways_entrance(outside_present_library,function() return Has("_library_open") end)
inside_present_library:connect_one_way_entrance(library_present_old_man)
outside_present_drifting_island_house:connect_one_way_entrance(outside_past_drifting_island_house,function() return All(
            ooa_can_switch_past_and_present(),
            ooa_can_swim(false)
        ) end)
outside_past_drifting_island_house:connect_one_way_entrance(outside_present_drifting_island_house,function() return All(
            ooa_can_go_back_to_present(),
            ooa_can_dive()
        ) end)
outside_past_drifting_island_house:connect_two_ways_entrance(outside_past_underwater_drifting_island_cave,function() return ooa_can_dive() end)
inside_past_underwater_drifting_island_cave:connect_one_way_entrance(fishers_island_cave,function() return All(
            ooa_has_long_hook(),
            ooa_can_travel_underwater()
        ) end)
raftons_raft:connect_one_way_entrance(zora_village_tree,function() return Has("_sea_cleaned") end)
raftons_raft:connect_one_way_entrance(zora_village_past_spot,function() return Has("_sea_cleaned") end)
zora_village_present:connect_one_way_entrance(zora_village_past,function() return ooa_can_switch_past_and_present() end)
zora_village_past:connect_two_ways_entrance(outside_past_zora_palace)
zora_village_past:connect_two_ways_entrance(outside_past_underwater_zora_duplex_left)
zora_village_past:connect_two_ways_entrance(outside_past_underwater_zora_duplex_right)
zora_village_past:connect_two_ways_entrance(outside_past_underwater_zora_house)
inside_past_underwater_zora_duplex_left:connect_two_ways_entrance(inside_past_underwater_zora_duplex_right,function() return ooa_can_travel_underwater() end)
zora_village_past:connect_one_way_entrance(zora_seas_chest,function() return All(
            Has("_sea_cleaned"),
            ooa_can_dive(),
            ooa_can_switch_past_and_present()
        ) end)
zora_village_past:connect_two_ways_entrance(library_island_past,function() return ooa_can_dive() end)
inside_past_zora_palace:connect_one_way_entrance(king_zoras_saved,function() return All(
            Has("King Zora's Potion"),
            ooa_can_travel_underwater()
        ) end)
raftons_raft:connect_two_ways_entrance(library_island_past,function() return Has("_sea_cleaned") end)
library_island_past:connect_one_way_entrance(outside_past_fairy_queen_cave,function() return ooa_has_switch_hook() end)
inside_past_fairy_queen_cave:connect_one_way_entrance(sea_cleaned,function() return Has("Fairy Powder") end)
library_island_past:connect_one_way_entrance(open_library,function() return Has("Library Key") end)
open_library:connect_one_way_entrance(library_island_past)
open_library:connect_one_way_entrance(outside_past_library)
outside_past_library:connect_one_way_entrance(open_library,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                Has("Library Key")
            )
        ) end)
inside_past_library:connect_one_way_entrance(library_past_old_man,function() return Has("Book of Seals") end)
library_past_old_man:connect_one_way_entrance(library_secret,function() return Has("secret_locations_on") end)
lynna_city:connect_one_way_entrance(piratian_captain,function() return All(
            ooa_can_dive(),
            Has("Zora Scale")) end)
piratian_captain:connect_two_ways_entrance(outside_past_underwater_sea_of_storms_cave,function() return ooa_can_dive() end)
inside_past_underwater_sea_of_storms_cave:connect_one_way_entrance(sea_of_storms_past,function() return ooa_can_travel_underwater() end)
piratian_captain:connect_one_way_entrance(outside_present_underwater_sea_of_storms_cave,function() return All(
            ooa_can_go_back_to_present(),
            ooa_can_dive(),
            Has("secret_locations_on")
        ) end)
outside_present_underwater_sea_of_storms_cave:connect_one_way_entrance(piratian_captain,function() return All(
            ooa_can_switch_past_and_present(),
            ooa_can_dive(),
            Has("secret_locations_on")
        ) end)
outside_present_underwater_sea_of_storms_cave:connect_one_way_entrance(sea_of_storms_spot,function() return ooa_has_shovel() end)
inside_present_underwater_sea_of_storms_cave:connect_one_way_entrance(sea_of_storms_present,function() return ooa_can_travel_underwater() end)
crescent_past_waters:connect_one_way_entrance(outside_hero_trials_cave,function() return Has("Tokay Eyeball") end)
outside_hero_trials_cave:connect_one_way_entrance(crescent_past_waters,function() return All(
            ooa_ER_inside_lock_fully_blocked() == false,
            Any(
                ooa_ER_inside_lock_fully_open(),
                All(
                    Has("Tokay Eyeball"),
                    ooa_can_swim_deepwater(false)
                )
            )
        ) end)
inside_hero_trials_cave:connect_two_ways_entrance(inside_underwater_hero_trials_cave,function() return All(
            ooa_can_break_pot(),
            ooa_can_dive(),
            ooa_has_explosives(),
            ooa_can_jump_1_wide_pit(false),
            ooa_can_kill_normal_enemy(),
            Any(

                ooa_has_cane(),
                All(
                    ooa_option_medium_logic(),
                    Any(
                        ooa_can_kill_normal_enemy(false),
                        ooa_can_push_enemy(),
                        ooa_has_boomerang(),
                        ooa_has_switch_hook(),
                        ooa_can_use_pegasus_seeds_for_stun())
                )
            )) end)
outside_underwater_hero_trials_cave:connect_two_ways_entrance(outside_d8,function() return ooa_can_dive() end)
outside_d8:connect_one_way_entrance(sea_of_no_return,function() return ooa_has_glove() end)
crescent_past_waters:connect_one_way_entrance(crescent_past_spot,function() return All(
            ooa_has_shovel()
        ) end)
symmetry_past:connect_one_way_entrance(talus_lake_past_spot,function() return All(
            ooa_can_switch_past_and_present(),
            ooa_has_bracelet()
        ) end)
outside_restoration_wall_base_cave:connect_one_way_entrance(talus_peak_past_spot,function() return All(
            ooa_has_shovel(),
            ooa_has_bracelet()
        ) end)
zora_village_past:connect_one_way_entrance(zora_village_past_spot,function() return All(
            ooa_can_break_bush(),
            ooa_can_dive()) end)
lynna_village:connect_one_way_entrance(lynna_village_toilet_spot)
lynna_village:connect_one_way_entrance(south_shore_past_spot,function() return All(
            ooa_has_shovel(),
            ooa_can_jump_1_wide_pit(false),
            Any(
                ooa_can_swim(false),
                ooa_can_jump_2_wide_liquid()
            )) end)
outside_past_goron_city_lower:connect_one_way_entrance(ridge_west_base_spot,function() return ooa_can_break_bush() end)
outside_treasure_hunting_goron_cave:connect_one_way_entrance(ridge_upper_past_spot,function() return All(
            ooa_has_shovel(),
            ooa_can_break_bush(false)
        ) end)
yoll_graveyard:connect_one_way_entrance(yoll_graveyard_spot)
talus_peaks:connect_one_way_entrance(talus_peak_present_spot,function() return All(
            ooa_can_break_bush(false),
            ooa_can_switch_past_and_present()
        ) end)
deku_forest:connect_one_way_entrance(fairies_woods_spot,function() return All(
            ooa_can_break_bush(false),
            ooa_can_go_back_to_present()
        ) end)
nuun_highlands_top:connect_one_way_entrance(nuun_highlands_spot,function() return ooa_has_shovel() end)
ridge_mid_present:connect_one_way_entrance(ridge_mid_present_spot,function() return ooa_has_bracelet() end)
lynna_city:connect_one_way_entrance(crescent_present_islet_spot,function() return All(
            ooa_can_break_bush(),
            ooa_can_swim_deepwater(true)
        ) end)
crescent_present_east:connect_one_way_entrance(crescent_present_vine_spot,function() return All(
            ooa_has_bracelet(),
            ooa_can_open_portal()
        ) end)
lynna_city:connect_two_ways_entrance(outside_d11)
inside_vasus_shop:connect_one_way_entrance(vasus_rupee_ring_gift,function() return ooa_has_rupees_for_vasu() end)
inside_vasus_shop:connect_one_way_entrance(vasus_slayers_ring_gift,function() return ooa_can_kill_normal_enemy(true) end)
