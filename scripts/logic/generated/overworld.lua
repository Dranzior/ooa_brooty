Menu:connect_one_way_entrance(forest_of_time)
black_tower_worker:connect_one_way_entrance(maple_trade,function() return All(
            ooa_can_kill_normal_enemy(true),
            Has("Touching Book")
        ) end)
forest_of_time:connect_one_way_entrance(starting_item)
forest_of_time:connect_one_way_entrance(nayrus_house)
forest_of_time:connect_two_ways_entrance(lynna_city,function() return Any(
            ooa_can_break_bush(),
            ooa_option_lynna_gardener()
          ) end)
lynna_city:connect_one_way_entrance(south_lynna_tree,function() return ooa_can_harvest_tree(true) end)
lynna_city:connect_one_way_entrance(lynna_city_chest,function() return ooa_can_use_ember_seeds(false) end)
lynna_village:connect_one_way_entrance(lynna_city_chest,function() return ooa_can_go_back_to_present() end)
lynna_city:connect_one_way_entrance(lynna_shop,function() return ooa_has_rupees(400) end)
lynna_village:connect_one_way_entrance(hidden_shop,function() return All(
            ooa_can_go_back_to_present(),
            ooa_has_rupees(400)
        ) end)
lynna_city:connect_one_way_entrance(mayor_plens_house,function() return ooa_has_long_hook() end)
lynna_city:connect_one_way_entrance(lynna_city_comedian_trade,function() return Has("Cheesy Mustache") end)
lynna_city:connect_one_way_entrance(mamamu_yan_trade,function() return Has("Doggie Mask") end)
lynna_city:connect_one_way_entrance(vasus_gift)
lynna_city:connect_two_ways_entrance(lynna_village)
forest_of_time:connect_one_way_entrance(lynna_village,function() return ooa_can_open_portal() end)
lynna_village:connect_one_way_entrance(gasha_farmer)
lynna_village:connect_one_way_entrance(black_tower_worker)
lynna_village:connect_one_way_entrance(black_tower_heartpiece,function() return ooa_can_remove_dirt(false) end)
lynna_village:connect_one_way_entrance(advance_shop,function() return ooa_has_rupees(400) end)
lynna_village:connect_one_way_entrance(lynna_shooting_gallery,function() return ooa_has_sword() end)
lynna_village:connect_one_way_entrance(ambis_palace_tree,function() return ooa_can_harvest_tree(false) end)
lynna_village:connect_one_way_entrance(ambis_palace_chest,function() return Any(
            All(
                ooa_option_hard_logic(),
                ooa_can_use_scent_seeds_for_smell(),
                ooa_can_use_pegasus_seeds()
            ),
            All(
                ooa_can_break_bush(),
                ooa_can_dive()
            ),
            ooa_can_switch_past_and_present()
        ) end)
ambis_palace_chest:connect_one_way_entrance(rescue_nayru,function() return All(
            ooa_has_switch_hook(),
            ooa_can_use_mystery_seeds(),
            Any(
                ooa_has_sword(),
                ooa_can_punch()
            )
        ) end)
lynna_village:connect_one_way_entrance(postman_trade,function() return Has("Poe Clock") end)
lynna_village:connect_one_way_entrance(toilet_hand_trade,function() return Has("Stationary") end)
lynna_village:connect_one_way_entrance(sad_boi_trade,function() return Has("Funny Joke") end)
lynna_village:connect_one_way_entrance(raftons_raft,function() return All(
            Has("Cheval Rope"),
            Has("Island Chart")
        ) end)
raftons_raft:connect_one_way_entrance(rafton_trade,function() return Has("Magic Oar") end)
lynna_village:connect_two_ways_entrance(d0_entrance,function() return ooa_can_remove_dirt(false) end)
d0_exit:connect_two_ways_entrance(maku_tree,function() return ooa_can_kill_normal_enemy() end)
rescue_nayru:connect_one_way_entrance(maku_tree)
maku_tree:connect_one_way_entrance(maku_seed,function() return ooa_has_essences_for_maku_seed() end)
maku_seed:connect_one_way_entrance(veran_beaten,function() return All(
            ooa_can_use_mystery_seeds(),
            ooa_has_switch_hook(),
            ooa_has_bombs(),
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
                ooa_can_use_mystery_seeds()
            ),
            All(
                ooa_option_medium_logic(),
                ooa_has_sword(false),
                Any(

                    ooa_has_seedshooter(),
                    All(
                        ooa_option_hard_logic(),
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
forest_of_time:connect_two_ways_entrance(shore_present,function() return Has("Ricky's Gloves") end)
lynna_city:connect_two_ways_entrance(shore_present,function() return Any(
            ooa_can_swim_deepwater(true),
            ooa_has_bracelet(),
            All(
                ooa_can_go_back_to_present(),
                ooa_can_jump_1_wide_pit(true)
            ),
            All(
                ooa_can_break_bush(true),
                ooa_can_jump_1_wide_pit(true)
            )) end)
shore_present:connect_one_way_entrance(south_shore_dirt,function() return ooa_can_remove_dirt(true) end)
shore_present:connect_one_way_entrance(balloon_guys_gift,function() return All(
            Any(
                ooa_has_seedshooter(),
                ooa_can_summon_ricky(),
                Has("Ricky's Gloves"),
                ooa_can_go_back_to_present()),
            ooa_can_break_tingle_balloon()
        ) end)
balloon_guys_gift:connect_one_way_entrance(balloon_guys_upgrade,function() return ooa_has_seed_kind_count(3) end)
forest_of_time:connect_two_ways_entrance(yoll_graveyard,function() return ooa_can_use_ember_seeds(false) end)
yoll_graveyard:connect_one_way_entrance(chevals_grave,function() return Any(
            ooa_can_kill_normal_enemy(true),
            ooa_can_jump_3_wide_pit(true)
        ) end)
chevals_grave:connect_one_way_entrance(chevals_test,function() return All(
            Any(
                ooa_has_feather(),
                ooa_can_swim(false)),
            ooa_has_bracelet()
        ) end)
chevals_grave:connect_one_way_entrance(chevals_invention,function() return ooa_can_swim(false) end)
yoll_graveyard:connect_one_way_entrance(grave_under_tree,function() return ooa_can_use_ember_seeds(false) end)
yoll_graveyard:connect_one_way_entrance(yoll_graveyard_heartpiece,function() return ooa_has_bracelet() end)
yoll_graveyard:connect_one_way_entrance(graveyard_door,function() return Has("Graveyard Key") end)
graveyard_door:connect_one_way_entrance(syrup_shop,function() return All(
            Any(
                ooa_can_jump_2_wide_liquid(),
                ooa_can_swim(true),
                ooa_has_long_hook()                    
            ),
            ooa_has_rupees(400)
        ) end)
graveyard_door:connect_one_way_entrance(graveyard_poe_trade,function() return ooa_has_bracelet() end)
graveyard_door:connect_one_way_entrance(d1_entrance)
lynna_city:connect_two_ways_entrance(fairies_woods,function() return Any(
            ooa_can_swim(true),
            ooa_has_bracelet(),
            ooa_can_switch_past_and_present(),
            All(
                ooa_option_hard_logic(),
                ooa_has_switch_hook()
            )
        ) end)
fairies_woods:connect_one_way_entrance(fairies_woods_chest,function() return Any(
            ooa_can_jump_1_wide_pit(true),
            ooa_has_switch_hook()
        ) end)
deku_forest:connect_one_way_entrance(fairies_woods_chest,function() return ooa_can_go_back_to_present() end)
fairies_woods:connect_one_way_entrance(happy_mask_salesman_trade,function() return Has("Tasty Meat") end)
deku_forest:connect_one_way_entrance(d2_present_entrance,function() return ooa_can_go_back_to_present() end)
lynna_village:connect_two_ways_entrance(deku_forest,function() return Any(
            ooa_has_bracelet(),
            ooa_can_switch_past_and_present()) end)
deku_forest:connect_one_way_entrance(deku_forest_cave_east)
deku_forest:connect_one_way_entrance(deku_forest_heartpiece,function() return ooa_can_use_ember_seeds(false) end)
deku_forest:connect_one_way_entrance(restoration_wall_heartpiece,function() return ooa_can_jump_1_wide_pit(false) end)
deku_forest:connect_one_way_entrance(deku_forest_cave_west,function() return All(
            ooa_has_bracelet(),                    
            Any(
                ooa_can_jump_1_wide_pit(false),
                ooa_has_switch_hook(),
                ooa_can_use_ember_seeds(false),        
                ooa_can_warp_using_gale_seeds(),   
                ooa_can_switch_past_and_present())
        ) end)
deku_forest:connect_one_way_entrance(deku_forest_tree,function() return All(
            ooa_can_harvest_tree(false),
            Any(
                ooa_can_jump_1_wide_pit(false),
                ooa_has_switch_hook(),
                ooa_can_use_ember_seeds(false),        
                ooa_can_warp_using_gale_seeds(),   
                ooa_can_switch_past_and_present())
        ) end)
deku_forest:connect_one_way_entrance(deku_forest_soldier,function() return All(
            ooa_can_use_mystery_seeds()
        ) end)
deku_forest:connect_one_way_entrance(d2_past_entrance,function() return ooa_has_bombs() end)
lynna_village:connect_two_ways_entrance(crescent_past_west,function() return ooa_can_swim_deepwater(false) end)
raftons_raft:connect_one_way_entrance(crescent_past_west)
crescent_present_west:connect_one_way_entrance(crescent_past_west,function() return ooa_can_go_back_to_present() end)
crescent_past_west:connect_one_way_entrance(tokay_crystal_cave,function() return All(
            Any(
                ooa_has_shovel(),
                ooa_can_break_crystal()),
            ooa_can_jump_1_wide_pit(false)
        ) end)
lynna_village:connect_two_ways_entrance(hidden_tokay_cave,function() return ooa_can_dive() end)
crescent_past_west:connect_one_way_entrance(crescent_past_east,function() return ooa_can_break_bush() end)
crescent_present_west:connect_one_way_entrance(crescent_past_east,function() return ooa_can_go_back_to_present() end)
crescent_past_east:connect_one_way_entrance(tokay_bomb_cave,function() return All(
            ooa_has_bracelet(),
            ooa_has_bombs()) end)
crescent_past_east:connect_one_way_entrance(wild_tokay_game,function() return All(
            ooa_has_bracelet(),
            ooa_has_bombs()) end)
crescent_past_east:connect_one_way_entrance(tokay_pot_cave,function() return ooa_has_long_hook() end)
crescent_past_east:connect_one_way_entrance(tokay_market_1,function() return ooa_has_mystery_seeds() end)
crescent_past_east:connect_one_way_entrance(tokay_market_2,function() return ooa_has_scent_seeds() end)
lynna_city:connect_two_ways_entrance(crescent_present_west,function() return ooa_can_swim_deepwater(true) end)
crescent_past_west:connect_one_way_entrance(crescent_present_west,function() return Any(
            ooa_can_go_back_to_present(),
            All(
                ooa_has_shovel(),
                ooa_can_open_portal()
            )
        ) end)
crescent_present_west:connect_one_way_entrance(d3_entrance)
lynna_city:connect_two_ways_entrance(under_crescent_island,function() return ooa_can_dive() end)
crescent_present_east:connect_one_way_entrance(tokay_chef_trade,function() return Has("Stink Bag") end)
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
crescent_past_east:connect_two_ways_entrance(crescent_present_east,function() return ooa_can_open_portal() end)
crescent_past_west:connect_one_way_entrance(crescent_present_east,function() return ooa_can_go_back_to_present() end)
fairies_woods:connect_two_ways_entrance(nuun,function() return All(
            ooa_can_use_ember_seeds(false),
            ooa_has_seedshooter()) end)
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
nuun__dimitri_:connect_one_way_entrance(nuun_highlands_cave,function() return ooa_has_flute() end)
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
symmetry_present:connect_one_way_entrance(d4_entrance,function() return All(
            Has("Tuni Nut"),
            Any(
                ooa_can_go_back_to_present(),
                ooa_can_open_portal()
            )
        ) end)
symmetry_present:connect_one_way_entrance(symmetry_past,function() return Any(
            ooa_can_switch_past_and_present(),
            All(
                ooa_can_open_portal(),
                ooa_can_break_bush(false)
            )
        ) end)
symmetry_past:connect_one_way_entrance(symmetry_city_brother)
symmetry_past:connect_one_way_entrance(symmetry_middle_man_trade,function() return Has("Dumbbell") end)
symmetry_past:connect_one_way_entrance(symmetry_city_heartpiece,function() return ooa_can_go_back_to_present() end)
symmetry_past:connect_one_way_entrance(tokkeys_composition,function() return ooa_can_swim(false) end)
symmetry_past:connect_one_way_entrance(talus_peaks,function() return All(
            ooa_can_go_back_to_present(),
            ooa_has_bracelet()
        ) end)
talus_peaks:connect_one_way_entrance(bomb_fairy,function() return ooa_has_bombs() end)
talus_peaks:connect_two_ways_entrance(restoration_wall,function() return Any(
            ooa_can_swim(false),
            ooa_can_jump_3_wide_liquid()
        ) end)
restoration_wall:connect_one_way_entrance(talus_peaks_chest)
fairies_woods:connect_two_ways_entrance(restoration_wall,function() return ooa_can_switch_past_and_present() end)
restoration_wall:connect_two_ways_entrance(patch,function() return Any(
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
                    ooa_has_scent_seeds(),
                    ooa_has_shovel())
            )
        ) end)
patch:connect_one_way_entrance(patch_tuni_nut_ceremony,function() return Has("Cracked Tuni Nut") end)
patch:connect_one_way_entrance(patch_broken_sword_ceremony,function() return Has("Broken Sword") end)
lynna_village:connect_one_way_entrance(old_zora_trade,function() return All(
            Any(
                ooa_can_switch_past_and_present(),
                All(
                    ooa_can_jump_1_wide_pit(false),
                    Any(
                        ooa_can_jump_4_wide_pit(false),
                        ooa_has_switch_hook(),
                        ooa_can_swim_deepwater(false)))),
            Has("Sea Ukulele")) end)
lynna_village:connect_two_ways_entrance(ridge_west_past_base,function() return All(
            Any(
                ooa_can_switch_past_and_present(),
                ooa_can_jump_1_wide_pit(false)),
            Any(
                ooa_can_jump_4_wide_pit(false),
                ooa_has_switch_hook())) end)
ridge_west_past_base:connect_one_way_entrance(ridge_west_present,function() return ooa_can_go_back_to_present() end)
ridge_west_past_base:connect_one_way_entrance(goron_elder,function() return Has("Bomb Flower") end)
ridge_west_present:connect_one_way_entrance(ridge_west_past,function() return All(
            ooa_can_open_portal(),
            ooa_has_bracelet()
        ) end)
ridge_west_present:connect_one_way_entrance(ridge_west_heartpiece,function() return ooa_has_bombs() end)
goron_elder:connect_one_way_entrance(ridge_west_past)
ridge_west_past:connect_one_way_entrance(ridge_west_past_base)
ridge_west_past:connect_one_way_entrance(ridge_west_tree,function() return ooa_can_harvest_tree(false) end)
ridge_west_past:connect_one_way_entrance(ridge_west_present,function() return ooa_can_go_back_to_present() end)
ridge_upper_present:connect_one_way_entrance(ridge_west_present)
ridge_west_present:connect_one_way_entrance(gorons_hiding_place,function() return ooa_has_bombs() end)
ridge_west_present:connect_one_way_entrance(ridge_base_chest)
ridge_west_present:connect_one_way_entrance(ridge_west_cave)
ridge_west_present:connect_one_way_entrance(under_moblin_keep,function() return All(
            ooa_can_jump_1_wide_pit(false),
            ooa_can_swim(false)) end)
ridge_west_present:connect_one_way_entrance(defeat_great_moblin,function() return All(
            ooa_can_use_pegasus_seeds(),
            ooa_has_bracelet()) end)
defeat_great_moblin:connect_one_way_entrance(ridge_upper_present,function() return ooa_can_jump_2_wide_pit(false) end)
ridge_upper_past:connect_one_way_entrance(ridge_upper_present,function() return ooa_can_go_back_to_present() end)
ridge_upper_present:connect_one_way_entrance(d5_entrance,function() return Has("Crown Key") end)
ridge_mid_present:connect_two_ways_entrance(ridge_NE_cave_present)
ridge_base_present:connect_one_way_entrance(ridge_upper_present,function() return ooa_can_jump_3_wide_pit(false) end)
ridge_base_past_west:connect_two_ways_entrance(ridge_upper_past,function() return All(
            ooa_has_switch_hook()) end)
ridge_upper_present:connect_one_way_entrance(ridge_upper_past,function() return ooa_can_switch_past_and_present() end)
ridge_upper_present:connect_one_way_entrance(treasure_hunting_goron,function() return All(
            ooa_has_bombs(2),
            ooa_has_ember_seeds(),
            ooa_can_open_portal(),
            ooa_has_bracelet()
        ) end)
ridge_upper_past:connect_one_way_entrance(bomb_goron_head,function() return ooa_has_bombs() end)
ridge_upper_past:connect_one_way_entrance(ridge_upper_heartpiece,function() return All(
            ooa_can_go_back_to_present(),
            ooa_can_break_bush()
        ) end)
ridge_upper_present:connect_one_way_entrance(ridge_base_present)
ridge_base_past_east:connect_one_way_entrance(ridge_base_present,function() return ooa_can_go_back_to_present() end)
ridge_base_past_west:connect_one_way_entrance(ridge_base_present,function() return ooa_can_go_back_to_present() end)
ridge_base_present:connect_one_way_entrance(d6_present_entrance,function() return Has("Old Mermaid Key") end)
ridge_base_present:connect_one_way_entrance(pool_in_d6_entrance,function() return ooa_can_dive() end)
ridge_base_present:connect_one_way_entrance(trade_rock_brisket,function() return Has("Rock Brisket") and Has("Brother Emblem") end)
ridge_base_present:connect_one_way_entrance(first_goron_dance,function() return ooa_has_rupees(10) end)
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
ridge_base_past_west:connect_one_way_entrance(ridge_base_bomb_past,function() return ooa_has_bombs() end)
ridge_base_past_west:connect_one_way_entrance(ridge_diamonds_past,function() return ooa_has_switch_hook() end)
ridge_base_past_west:connect_one_way_entrance(d6_past_entrance,function() return All(
            ooa_can_swim(false),
            Has("Mermaid Key")
        ) end)
ridge_base_past_west:connect_two_ways_entrance(ridge_base_past_east,function() return ooa_can_swim(false) end)
ridge_base_past_east:connect_one_way_entrance(first_goron_dance,function() return ooa_has_rupees(10) end)
ridge_base_past_east:connect_one_way_entrance(goron_dance__with_letter,function() return ooa_has_rupees(10) and Has("Letter of Introduction") end)
ridge_base_past_east:connect_one_way_entrance(trade_goron_vase,function() return Has("Goron Vase") and Has("Brother Emblem") end)
ridge_base_present:connect_two_ways_entrance(ridge_mid_present,function() return All(
            Has("Brother Emblem"),
            Any(
                ooa_has_switch_hook(),
                ooa_can_jump_3_wide_pit(false))
        ) end)
ridge_diamonds_past:connect_one_way_entrance(ridge_mid_past)
ridge_mid_past:connect_one_way_entrance(ridge_mid_present,function() return ooa_can_go_back_to_present() end)
ridge_mid_present:connect_two_ways_entrance(target_carts,function() return All(
            ooa_has_switch_hook(),
            Has("_access_cart")) end)
goron_shooting_gallery:connect_one_way_entrance(target_carts,function() return ooa_can_go_back_to_present() end)
target_carts:connect_two_ways_entrance(target_carts_1)
target_carts_1:connect_two_ways_entrance(target_carts_2)
ridge_mid_present:connect_two_ways_entrance(big_bang_game,function() return Has("Goronade") end)
ridge_mid_present:connect_two_ways_entrance(goron_diamond_cave,function() return Any(
            ooa_has_switch_hook(),
            ooa_can_jump_3_wide_pit(false)) end)
ridge_mid_present:connect_one_way_entrance(ridge_mid_past,function() return ooa_can_switch_past_and_present() end)
ridge_base_past_east:connect_one_way_entrance(ridge_mid_past,function() return All(
            Has("Brother Emblem"),
            ooa_can_jump_2_wide_pit(false)) end)
ridge_mid_past:connect_one_way_entrance(ridge_move_vine_seed,function() return ooa_has_switch_hook() end)
target_carts:connect_one_way_entrance(goron_shooting_gallery,function() return All(
            ooa_can_open_portal(),
            ooa_has_bracelet()) end)
ridge_mid_present:connect_one_way_entrance(goron_shooting_gallery,function() return ooa_can_switch_past_and_present() end)
goron_shooting_gallery:connect_one_way_entrance(goron_shooting_gallery_price,function() return ooa_has_sword() end)
ridge_mid_past:connect_one_way_entrance(ridge_east_tree,function() return All(
            ooa_can_harvest_tree(false),
            ooa_option_medium_logic(),
            ooa_can_warp_using_gale_seeds()) end)
goron_shooting_gallery:connect_one_way_entrance(ridge_east_tree,function() return ooa_can_harvest_tree(false) end)
ridge_mid_past:connect_one_way_entrance(trade_lava_juice,function() return Has("Lava Juice") end)
ridge_mid_past:connect_one_way_entrance(ridge_bush_cave,function() return ooa_has_switch_hook() end)
lynna_city:connect_two_ways_entrance(zora_village,function() return All(
            ooa_can_dive(),
            ooa_has_switch_hook(),
            ooa_can_switch_past_and_present()) end)
zora_village:connect_one_way_entrance(zora_village_tree,function() return ooa_can_harvest_tree(false) end)
zora_village:connect_one_way_entrance(zora_village_present)
zora_village:connect_one_way_entrance(zora_palace_chest)
zora_village:connect_one_way_entrance(zora_NW_cave,function() return All(
            ooa_has_bombs(),
            ooa_has_glove()) end)
zora_village:connect_one_way_entrance(fairies_coast_chest)
zora_village:connect_one_way_entrance(library_present,function() return Has("Library Key") end)
library_present:connect_one_way_entrance(library_past,function() return Has("Book of Seals") end)
zora_village:connect_one_way_entrance(zora_seas_chest,function() return Has("Fairy Powder") end)
zora_village:connect_one_way_entrance(zora_king_gift,function() return All(
            Has("King Zora's Potion")
        ) end)
zora_king_gift:connect_one_way_entrance(d7_entrance,function() return All(
            Has("Fairy Powder")) end)
zora_village:connect_one_way_entrance(fishers_island_cave,function() return ooa_has_long_hook() end)
zora_village:connect_one_way_entrance(zoras_reward,function() return  Has("_finished_d7") end)
lynna_city:connect_one_way_entrance(piratian_captain,function() return All(
            ooa_can_dive(),
            Has("Zora Scale")) end)
piratian_captain:connect_one_way_entrance(sea_of_storms_past)
crescent_past_west:connect_one_way_entrance(d8_entrance,function() return All(
            Has("Tokay Eyeball"),
            ooa_can_break_pot(),
            ooa_can_dive(),
            ooa_has_bombs(),
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
d8_entrance:connect_one_way_entrance(sea_of_no_return,function() return ooa_has_glove() end)
