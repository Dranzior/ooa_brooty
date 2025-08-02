-- maku path
function maku_tree()
    return rescue_nayru() or (maku_basement() and has("pathkey") and k_normal())
end

function maku_basement()
    return (rescue_nayru() or (lynna_village() and shovel()))
end

function maku_key_chest()
    return (has("dungeon_er_on") and (foundmakupath() or (rescue_nayru() and k_normal() and has("pathkey"))))
end

-- d1
function d1_east_terrace()
    return k_switchhook()
end

function d1_crystal_room()
    return d1_east_terrace() and use_ember() and crystal()
end

function d1_wide_room()
    return d1_east_terrace() and d1sk(2)
end

function d1_boss()
    return d1_wide_room() and bush() and d1bk() and k_pumpkinhead()
end

function d1_u_room()
    return pot() or (d1_wide_room() and bush() and k_giantghini() and d1sk(3))
end

function d1_basement()
    return d1_u_room() and (use_ember() or use_mystery())
end

function d1sk(amount)
	return (has("d1sk", amount) or has("d1mk"))
end

function d1bk()
	return has("d1bk") or (has("master_key_boss") and has("d1mk"))
end

-- d2
function d2_bombed_terrace()
    return k_spikedbeetle() and bombs()
end

function d2_moblin_drop()
    return k_spikedbeetle() and k_normal()
end

function d2_enter_swoop()
    return (k_spikedbeetle() and feather() and (pegasus() or medium())) or d2sk(2)
end

function d2_basement()
    return d2_enter_swoop() and k_swoop()
end

function d2_thwomp_shelf()
    return d2_basement() and feather()
end

function d2_basement_drop()
    return d2_basement() and feather()
end

function d2_basement_chest()
    return d2_basement() and feather() and bombs() and lever_minecartabove() and k_normal()
end

function d2_moblin_platform()
    return d2_basement() and feather() and d2sk(3)
end

function d2_statue_puzzle()
    return d2_moblin_platform() and (lift1() or cane())
end

function d2_rope_room()
    return k_switchhook() and d2sk(4)
end

function d2_ladder_chest()
    return bombs() and k_switchhook() and d2sk(4)
end

function d2_color_room()
    return d2_statue_puzzle() and d2sk(5)
end

function d2_boss()
    return d2_color_room() and d2bk() and bombs()
end

function d2sk(amount)
	return (has("d2sk", amount) or has("d2mk"))
end

function d2bk()
	return has("d2bk") or (has("master_key_boss") and has("d2mk"))
end

-- d3
function d3_pols_voice()
    return bombs() or (d3_six_blocK_drop() and bush() and k_pols_voice_h())
end

function d3_1f_spinner()
    return k_moldorm() or lift1()
end

function d3_S_crystal()
    return d3_1f_spinner()
end

function d3_four_crystals_owl()
    return d3_1f_spinner() and mystery()
end

function d3_E_crystal()
    return d3_1f_spinner() and bombs()
end

function d3_statue_drop()
    return d3_E_crystal()
end

function d3_seeds()
    return d3sk(1) and seed_item() and (sword() or foolsore() or bombs())
end

function d3_W_crystal()
    return d3sk(1) and k_pols_voice
end

function d3_N_crystal()
    return d3sk(1) and (any_shooter() or any_hyper_slingshot() or boomerang())
end

function d3_stone_soldiers_owl()
    return d3sk(1) and mystery()
end

function d3_armos_drop()
    return d3sk(1) and (bombs() or bigsword() or cane() or magicboom() or (scent() and (shooter() or slingshot())))
end

function d3_six_blocK_drop()
    return
        d3_W_crystal() and (bombs() or switch() or (scent() and (shooter() or slingshot())) or (cane() and lift1())) and
            (bombs() or any_shooter() or any_hyper_slingshot() or magicboom())
end

function d3_conveyor_belt_room()
    return d3_six_blocK_drop() and (bombs() or bigsword() or cane() or magicboom() or (scent() and (shooter() or slingshot())))
end

function d3_break_crystal_switch()
    return
        sword() or switch() or boomerang() or ember_satchel() or scent_satchel() or mystery_satchel() or seed_range() or
            punch_object() or foolsore()
end

function d3_B1F_spinner()
    return d3_S_crystal() and d3_E_crystal() and d3_N_crystal() and d3_W_crystal() and d3_break_crystal_switch()
end

function d3_torch_chest()
    return d3_B1F_spinner() and ember() and (shooter() or slingshot2())
end

function d3_traverse1()
    return any_shooter() or jump3() or magicboom()
end

function d3_traverse2()
    return any_shooter() or any_hyper_slingshot() or cape() or boomerang()
end

function d3_bridge_chest()
    return d3sk(1) and (d3_traverse1() or (d3_post_subterror() and d3sk(3)) and jump3())
end

function d3_B1F_east()
    return d3_B1F_spinner() and k_subterror() and
               (d3_W_crystal() or (d3sk(3) and d3_traverse1() and (d3_traverse2() or jump3()))) and
               (magicboom() or any_shooter() or (hard() and has_sword()))
end

function d3_post_subterror()
    return d3_boss_door() or (d3_B1F_spinner() and k_subterror()) or (d3_traverse1() and d3sk(4) and jump2())
end

function d3_boss_door()
    return (((d3_B1F_spinner() and k_subterror()) or (d3_traverse1() and d3sk(3) and jump3())) and jump2() and
               d3_traverse2()) or (d3sk(4) and d3_traverse1() and d3_traverse2())
end

function d3_moldorm_drop()
    return k_moldorm() and d3_post_subterror()
end

function d3_boss()
    return d3_boss_door() and d3bk() and (ember_shooter() or scent_shooter() or ember_satchel())
end

function d3_bush_beetle_room()
    return k_switchhook() and d3sk(3)
end

function d3_mimic_room()
    return d3_bush_beetle_room() and k_normal() and d3sk(4)
end

function d3sk(amount)
	return (has("d3sk", amount) or has("d3mk"))
end

function d3bk()
	return has("d3bk") or (has("master_key_boss") and has("d3mk"))
end

-- d4
function d4_first_chest()
    return (k_stalfos() or push_enemy()) and (feather() or hook1())
end

function d4_cube_chest()
    return d4_first_chest() and feather()
end

function d4_minecartA()
    return feather() and d4sk(1)
end

function d4_first_crystal_switch()
    return d4_minecartA() and (shooter() or magicboom())
end

function d4_minecart_chest()
    return d4_minecartA() and lever()
end

function d4_minecartB()
    return d4_minecartA() and lever_minecart() and lift1() and k_stalfos() and d4sk(2)
end

function d4_second_crystal_switch()
    return d4_minecartB() and (shooter() or magicboom() or (cape() and switch()))
end

function d4_minecartC()
    return d4_minecartB() and d4sk(3)
end

function d4_color_tile_drop()
    return d4_minecartC() and (sword() or foolsore() or rodofseasons() or seed_range())
end

function d4_minecartD()
    return d4_color_tile_drop() and d4sk(4)
end

function d4_pre_miniboss()
    return d4_minecartD() or (d4_post_miniboss() and k_armos_warrior())
end

function d4_post_miniboss()
    return (cape() and pegasus_satchel()) or (d4_minecartD() and k_armos_warrior)
end

function d4_small_floor_puzzle()
    return d4_post_miniboss() and bombs()
end

function d4_large_floor_puzzle()
    return d4_pre_miniboss() and feather() and hook1()
end

function d4_boss()
    return d4_large_floor_puzzle() and d4bk() and hook1() and (sword() or foolsore() or boomerang() or punch_enemy())
end

function d4_lava_pot_chest()
    return d4_large_floor_puzzle() and lift1() and hook1() and d4sk(5)
end

function d4sk(amount)
	return (has("d4sk", amount) or has("d4mk"))
end

function d4bk()
	return has("d4bk") or (has("master_key_boss") and has("d4mk"))
end

-- d5
function d5_switchA()
    return k_normal() and switch()
end

function d5_darkroom()
    return d5_switchA() and switch() and ((cape() and pegasus_satchel()) or cane() or hook1())
end

function d5_likelike()
    return d5_switchA() and switch_far()
end

function d5_eyes()
    return d5_switchA() and (any_shooter() or any_hyper_slingshot())
end

function d5_2statue()
    return d5_switchA() and pot() and cane() and feather() and (any_shooter() or any_hyper_slingshot() or boomerang())
end

function d5_boss()
    return d5_switchA() and d5bk() and cane() and (sword() or foolsore())
end

function d5_crossroads()
    return k_normal() and feather() and lift1() and d5sk(2) and (cane() or (pegasus_satchel() and cape()))
end

function d5_3statue()
    return d5_switchA() and cane() and d5sk(5)
end

function d5_6statue()
    return d5_switchA() and ember_shooter() and feather() and d5sk(5)
end

function d5_redpeg()
    return d5_crossroads() and switch_far() and d5sk(5)
end

function d5_owl_puzzle()
    return d5_redpeg() and cane()
end

function d5sk(amount)
	return (has("d5sk", amount) or has("d5mk"))
end

function d5bk()
	return has("d5bk") or (has("master_key_boss") and has("d5mk"))
end

-- d6 past
function d6past_colorroom()
    return feather() and k_switchhook()
end

function d6past_wizzrobe_chest()
    return bombs() and k_wizzrobe()
end

function d6past_pool_chest()
    return bombs() and ember() and flippers()
end

function d6_openwall()
    return bombs() and ember() and (shooter() or slingshot2())
end

function d6past_stalfos()
    return use_ember() and (k_normal_far() or scent_satchel() or feather())
end

function d6past_rope_chest()
    return d6_openwall() and mermaid() and (k_underwater() or hook1())
end

function d6past_spinner()
    return cane() and lift1() and feather() and d6_1sk(1) and bombs()
end

function d6past_boss()
    return d6past_spinner() and d6bk() and mermaid() and k_octogon() and d6_1sk(2) and
            (cape() or (d6_1sk(3) and (any_shooter() or magicboom())))
end

function d6_1sk(amount)
	return (has("d6_1sk", amount) or has("d6_1mk"))
end

function d6bk()
	return has("d6bk") or (has("master_key_boss") and has("d6_1mk"))
end

-- d6 present
function d6present_diamond_chest()
    return hook1()
end

function d6present_orb_room()
    return flippers() or jump3() or hook1()
end

function d6present_hit_orb()
    return d6present_orb_room() and (any_shooter() or boomerang())
end

function d6present_rope_room()
    return d6present_orb_room() and
               (jump3() or (d6present_hit_orb() and (any_shooter() or any_slingshot() or boomerang() or bombs())))
end

function d6present_rope_chest()
    return d6present_rope_room() and scent_satchel()
end

function d6present_hand_room()
    return d6present_orb_room() and (cape() or (d6present_hit_orb() and bombs()))
end

function d6present_cube_chest()
    return d6present_hand_room() and bombs() and hook1() and feather()
end

function d6present_spinner_chest()
    return d6past_spinner() and d6present_hand_room() and (feather() or hook1()) and d6present_d6past_access()
end

function d6present_beamos_chest()
    return d6_openwall() and d6present_d6past_access() and feather() and (flippers() or (hook1() and d6_2sk(2)))
end

function d6present_rng_chest()
    return d6present_beamos_chest() and lift1() and (sword() or foolsore() or cane() or hook1() or punch_enemy()) and
               d6_2sk(3)
end

function d6present_channel_chest()
    return d6_openwall() and hook1() and d6_2sk(3) and d6present_d6past_access()
end

function d6present_vire_chest()
    return d6present_spinner_chest() and d6_2sk(3) and (sword() or foolsore() or expert()) and hook1()
end

function d6present_d6past_access()
	return (has("d6keypast") and has("dungeon_er_off") and has("flippers")) or (foundd6past() and has("dungeon_er_on"))
end

function d6_2sk(amount)
	return (has("d6_2sk", amount) or has("d6_2mk"))
end

-- d7
function d7_crab()
    return k_underwater() or (draind7() and k_normal())
end

function d7_diamondpuzzle()
    return hook1()
end

function d7_flower()
    return hook2() and feather()
end

function d7_stairway()
    return hook2() or (draind7() and cane() and hook1())
end

function d7_right_wing()
    return k_moldorm() and (d7_stairway() or (draind7() and cane() and cape() and pegasus_satchel()))
end

function draind7()
    return floodd7() or d7sk(3)
end

function floodd7()
    return hook2() and d7sk(4)
end

function d7_boss()
    return d7bk() and floodd7()
end

function d7_hallway()
    return floodd7() and d7sk(5)
end

function d7_miniboss()
    return d7_stairway() and feather() and (sword() or foolsore() or boomerang() or (scent() and shoot_seeds())) and d7sk(7)
end

function d7_pot_island()
    return draind7() and hook1() and d7sk(7)
end

function d7sk(amount)
	return (has("d7sk", amount) or has("d7mk"))
end

function d7bk()
	return has("d7bk") or (has("master_key_boss") and has("d7mk"))
end

-- d8
function d8_first()
    return bombs() and (k_switchhook() or rodofseasons() or boomerang() or (pegasus() and shoot_seeds()))
end

function d8_ghini()
    return d8_first() and d8sk(1) and hook1() and cane() and (shooter() or slingshot2()) and ember()
end

function d8_bluepeg()
    return d8_ghini() and d8sk(2)
end

function d8_maze()
    return d8_bluepeg() and feather() and (sword() or foolsore()) and d8sk(4)
end

function d8_neslate()
    return d8_maze() and feather() and flippers() and use_ember()
end

function d8_tileroom()
    return d8_maze() and lift2() and feather()
end

function d8_boss()
    return d8bk() and d8_tileroom() and requiredslates() and has_sword()
end

function d8sk(amount)
	return (has("d8sk", amount) or has("d8mk"))
end

function d8bk()
	return has("d8bk") or (has("master_key_boss") and has("d8mk"))
end

-- functions to combine all dungeons for er rando
function foundmakupath()
    return has("makupath0") or has("spiritsgrave0") or has("wingdungeonpast0") or has("moonlitgrotto0") or has("skulldungeon0") or has("crowndungeon0") or has("mermaidscavepast0") or has("mermaidscavepresent0") or has("jabujabusbelly0") or has("ancienttomb0")
end

function foundd1()
    return has("makupath1") or has("spiritsgrave1") or has("wingdungeonpast1") or has("moonlitgrotto1") or has("skulldungeon1") or has("crowndungeon1") or has("mermaidscavepast1") or has("mermaidscavepresent1") or has("jabujabusbelly1") or has("ancienttomb1")
end

function foundd2()
    return has("makupath2") or has("spiritsgrave2") or has("wingdungeonpast2") or has("moonlitgrotto2") or has("skulldungeon2") or has("crowndungeon2") or has("mermaidscavepast2") or has("mermaidscavepresent2") or has("jabujabusbelly2") or has("ancienttomb2")
end

function foundd3()
    return has("makupath3") or has("spiritsgrave3") or has("wingdungeonpast3") or has("moonlitgrotto3") or has("skulldungeon3") or has("crowndungeon3") or has("mermaidscavepast3") or has("mermaidscavepresent3") or has("jabujabusbelly3") or has("ancienttomb3")
end

function foundd4()
    return has("makupath4") or has("spiritsgrave4") or has("wingdungeonpast4") or has("moonlitgrotto4") or has("skulldungeon4") or has("crowndungeon4") or has("mermaidscavepast4") or has("mermaidscavepresent4") or has("jabujabusbelly4") or has("ancienttomb4")
end

function foundd5()
    return has("makupath5") or has("spiritsgrave5") or has("wingdungeonpast5") or has("moonlitgrotto5") or has("skulldungeon5") or has("crowndungeon5") or has("mermaidscavepast5") or has("mermaidscavepresent5") or has("jabujabusbelly5") or has("ancienttomb5")
end

function foundd6past()
    return has("makupath6p") or has("spiritsgrave6p") or has("wingdungeonpast6p") or has("moonlitgrotto6p") or has("skulldungeon6p") or has("crowndungeon6p") or has("mermaidscavepast6p") or has("mermaidscavepresent6p") or has("jabujabusbelly6p") or has("ancienttomb6p")
end

function foundd6present()
    return has("makupath6") or has("spiritsgrave6") or has("wingdungeonpast6") or has("moonlitgrotto6") or has("skulldungeon6") or has("crowndungeon6") or has("mermaidscavepast6") or has("mermaidscavepresent6") or has("jabujabusbelly6") or has("ancienttomb6")
end

function foundd7()
    return has("makupath7") or has("spiritsgrave7") or has("wingdungeonpast7") or has("moonlitgrotto7") or has("skulldungeon7") or has("crowndungeon7") or has("mermaidscavepast7") or has("mermaidscavepresent7") or has("jabujabusbelly7") or has("ancienttomb7")
end

function foundd8()
    return has("makupath8") or has("spiritsgrave8") or has("wingdungeonpast8") or has("moonlitgrotto8") or has("skulldungeon8") or has("crowndungeon8") or has("mermaidscavepast8") or has("mermaidscavepresent8") or has("jabujabusbelly8") or has("ancienttomb8")
end
