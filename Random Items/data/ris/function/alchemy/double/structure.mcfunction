execute store result score rng ris.rng run random value 0..24


execute if score rng ris.rng matches 0 if dimension overworld store success score #success ris.rng run place structure ancient_city
execute if score rng ris.rng matches 0 unless dimension overworld store success score #success ris.rng run place structure ris:ancient_city
execute if score rng ris.rng matches 1 store success score #success ris.rng run place structure bastion_remnant

# wont generate w/o world gen heightmap 
execute if score rng ris.rng matches 2 store success score #success ris.rng run place structure desert_pyramid
execute if score rng ris.rng matches 3 store success score #success ris.rng run place structure end_city
#
execute if score rng ris.rng matches 4 run fill ~150 31 ~150 ~-150 31 ~-150 light replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 4 store success score #success ris.rng run place structure fortress
execute if score rng ris.rng matches 4 run fill ~150 31 ~150 ~-150 31 ~-150 air replace light

execute if score rng ris.rng matches 5 run fill ~15 ~ ~15 ~-15 ~ ~-15 light replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 5 store success score #success ris.rng run place structure igloo
execute if score rng ris.rng matches 5 run fill ~15 ~ ~15 ~-15 ~ ~-15 air replace light

# wont generate w/o world gen heightmap 
execute if score rng ris.rng matches 6 store success score #success ris.rng run place structure jungle_pyramid
execute if score rng ris.rng matches 7 store success score #success ris.rng run place structure mansion
#
execute if score rng ris.rng matches 8..9 run fill ~80 80 ~80 ~-80 80 ~-80 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 8 store success score #success ris.rng run place structure mineshaft
execute if score rng ris.rng matches 9 store success score #success ris.rng run place structure mineshaft_mesa
execute if score rng ris.rng matches 8..9 run fill ~80 80 ~80 ~-80 80 ~-80 air replace stone

# wont generate w/o world gen heightmap 
execute if score rng ris.rng matches 10 store success score #success ris.rng run place structure monument
#
execute if score rng ris.rng matches 11..12 run fill ~32 ~ ~32 ~-32 ~ ~-32 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 11 store success score #success ris.rng run place structure ocean_ruin_cold
execute if score rng ris.rng matches 12 store success score #success ris.rng run place structure ocean_ruin_warm
execute if score rng ris.rng matches 11..12 run fill ~32 ~ ~32 ~-32 ~ ~-32 air replace stone

execute if score rng ris.rng matches 13 store success score #success ris.rng run place structure pillager_outpost
execute if score rng ris.rng matches 14 store success score #success ris.rng run place structure ruined_portal
execute if score rng ris.rng matches 15 store success score #success ris.rng run place structure ruined_portal_jungle
execute if score rng ris.rng matches 16 store success score #success ris.rng run place structure ruined_portal_nether
execute if score rng ris.rng matches 17 store success score #success ris.rng run place structure ruined_portal_swamp

execute if score rng ris.rng matches 18..19 run fill ~32 ~ ~32 ~-32 ~ ~-32 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 18 store success score #success ris.rng run place structure shipwreck
execute if score rng ris.rng matches 19 store success score #success ris.rng run place structure shipwreck_beached
execute if score rng ris.rng matches 18..19 run fill ~32 ~ ~32 ~-32 ~ ~-32 air replace stone

execute if score rng ris.rng matches 20 store success score #success ris.rng run place structure stronghold

execute if score rng ris.rng matches 21 run fill ~15 ~ ~15 ~-15 ~ ~-15 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 21 store success score #success ris.rng run place structure swamp_hut
execute if score rng ris.rng matches 21 run fill ~15 ~ ~15 ~-15 ~ ~-15 air replace stone

execute if score rng ris.rng matches 22 store success score #success ris.rng run place structure ris:trail_ruins
execute if score rng ris.rng matches 23 store success score #success ris.rng run place structure ris:trial_chambers

execute if score rng ris.rng matches 24 store result score rng1 ris.rng run random value 0..4
execute if score rng ris.rng matches 24 if score rng1 ris.rng matches 0 store success score #success ris.rng run place structure village_desert
execute if score rng ris.rng matches 24 if score rng1 ris.rng matches 1 store success score #success ris.rng run place structure village_plains
execute if score rng ris.rng matches 24 if score rng1 ris.rng matches 2 store success score #success ris.rng run place structure village_savanna
execute if score rng ris.rng matches 24 if score rng1 ris.rng matches 3 store success score #success ris.rng run place structure village_snowy
execute if score rng ris.rng matches 24 if score rng1 ris.rng matches 4 store success score #success ris.rng run place structure village_taiga


# execute if score #success ris.rng matches 1 run playsound block.anvil.land block @a ~ ~ ~ 2 0.7
execute if score #success ris.rng matches 1 run playsound item.mace.smash_ground block @a ~ ~ ~ 2 0.8
execute if score #success ris.rng matches 1 run kill @s[type=item]

execute if score #success ris.rng matches 0 run playsound block.fire.extinguish block @a ~ ~ ~ 1
execute if score #success ris.rng matches 0 run particle smoke ~ ~0.25 ~ 0.1 0.1 0.1 0 15