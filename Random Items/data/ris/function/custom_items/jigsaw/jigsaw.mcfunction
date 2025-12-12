execute unless entity @s[tag=ris.feature_generator] store result score rng ris.rng run random value 0..137
scoreboard players set rng ris.rng 74

execute if score rng ris.rng matches 0 store success score #success ris.rng run place feature acacia
execute if score rng ris.rng matches 1 store success score #success ris.rng run place feature azalea_tree
execute if score rng ris.rng matches 2 store success score #success ris.rng run place feature birch
execute if score rng ris.rng matches 3 store success score #success ris.rng run place feature ris:birch_bees
execute if score rng ris.rng matches 4 store success score #success ris.rng run place feature cave_vine ~ ~-1 ~
execute if score rng ris.rng matches 5 store success score #success ris.rng run place feature dark_oak
execute if score rng ris.rng matches 6 store success score #success ris.rng run place feature end_gateway_delayed
execute if score rng ris.rng matches 7 store success score #success ris.rng run place feature end_gateway_return
execute if score rng ris.rng matches 8 store success score #success ris.rng run place feature end_island
execute if score rng ris.rng matches 9 store success score #success ris.rng run place feature fancy_oak
execute if score rng ris.rng matches 10 store success score #success ris.rng run place feature fancy_oak_bees
execute if score rng ris.rng matches 11 store success score #success ris.rng run place feature jungle_bush
execute if score rng ris.rng matches 12 store success score #success ris.rng run place feature jungle_tree
execute if score rng ris.rng matches 13 store success score #success ris.rng run place feature jungle_tree_no_vine
execute if score rng ris.rng matches 14 store success score #success ris.rng run place feature mega_jungle_tree
execute if score rng ris.rng matches 15 store success score #success ris.rng run place feature mega_pine
execute if score rng ris.rng matches 16 store success score #success ris.rng run place feature mega_spruce
execute if score rng ris.rng matches 17 store success score #success ris.rng run place feature oak
execute if score rng ris.rng matches 18 store success score #success ris.rng run place feature ris:oak_bees
execute if score rng ris.rng matches 19 store success score #success ris.rng run place feature pine
execute if score rng ris.rng matches 20 store success score #success ris.rng run place feature spruce
execute if score rng ris.rng matches 21 store success score #success ris.rng run place feature super_birch_bees
execute if score rng ris.rng matches 22 store success score #success ris.rng run place feature swamp_oak
execute if score rng ris.rng matches 23 store success score #success ris.rng run place feature cherry
execute if score rng ris.rng matches 24 store success score #success ris.rng run place feature ris:cherry_bees

execute if score rng ris.rng matches 25 run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 25 store success score #success ris.rng run place feature amethyst_geode ~-6 ~-6 ~-6
execute if score rng ris.rng matches 25 run fill ~-6 ~-6 ~-6 ~6 ~6 ~6 air replace stone

execute if score rng ris.rng matches 26..30 run setblock ~ ~-1 ~ grass_block
execute if score rng ris.rng matches 26 store success score #success ris.rng run place feature bamboo_no_podzol
execute if score rng ris.rng matches 27 store success score #success ris.rng run place feature birch_tall
execute if score rng ris.rng matches 28 store success score #success ris.rng run place feature dripleaf
execute if score rng ris.rng matches 29 store success score #success ris.rng run place feature huge_brown_mushroom
execute if score rng ris.rng matches 30 store success score #success ris.rng run place feature huge_red_mushroom
execute if score rng ris.rng matches 26..30 if score #success ris.rng matches 0 run setblock ~ ~-1 ~ air

execute if score rng ris.rng matches 31 run setblock ~ ~-1 ~ podzol
execute if score rng ris.rng matches 31 store success score #success ris.rng run place feature bamboo_some_podzol
execute if score rng ris.rng matches 31 if score #success ris.rng matches 0 run setblock ~ ~-1 ~ air

execute if score rng ris.rng matches 32..33 run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 netherrack replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 32 store success score #success ris.rng run place feature basalt_blobs
execute if score rng ris.rng matches 33 store success score #success ris.rng run place feature blackstone_blobs
execute if score rng ris.rng matches 32..33 run fill ~-7 ~-7 ~-7 ~7 ~7 ~7 air replace netherrack

execute if score rng ris.rng matches 34 run function ris:custom_items/jigsaw/basalt_pillar

execute if score rng ris.rng matches 35 run fill ~-15 ~ ~-15 ~15 ~ ~15 jigsaw{name:"ris:temp"} replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 35 store success score #success ris.rng run place feature bonus_chest
execute if score rng ris.rng matches 35 run schedule function ris:custom_items/jigsaw/torch 1t
execute if score rng ris.rng matches 35 run fill ~-15 ~ ~-15 ~15 ~ ~15 air replace jigsaw{name:"ris:temp"}

execute if score rng ris.rng matches 36 run setblock ~ ~-1 ~ end_stone
execute if score rng ris.rng matches 36 store success score #success ris.rng run place feature chorus_plant
execute if score rng ris.rng matches 36 if score #success ris.rng matches 0 run setblock ~ ~-1 ~ air

execute if score rng ris.rng matches 37..38 run fill ~-8 ~ ~-8 ~8 ~-3 ~8 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 37 store success score #success ris.rng run place feature clay_pool_with_dripleaves
execute if score rng ris.rng matches 38 store success score #success ris.rng run place feature clay_with_dripleaves
execute if score rng ris.rng matches 37..38 run fill ~-8 ~ ~-8 ~8 ~-3 ~8 air replace stone

execute if score rng ris.rng matches 39 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 crimson_nylium replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 39 store success score #success ris.rng run place feature crimson_forest_vegetation
execute if score rng ris.rng matches 39 if score #success ris.rng matches 0 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace crimson_nylium

execute if score rng ris.rng matches 40 run setblock ~ ~-1 ~ crimson_nylium
execute if score rng ris.rng matches 40 store success score #success ris.rng run place feature crimson_fungus_planted
execute if score rng ris.rng matches 40 if score #success ris.rng matches 0 run setblock ~ ~-1 ~ air

execute if score rng ris.rng matches 41 run fill ~-4 ~-1 ~-3 ~4 ~-1 ~3 jigsaw{name:"ris:temp"} replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 41 run fill ~-3 ~-1 ~-4 ~3 ~-1 ~4 jigsaw{name:"ris:temp"} replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 41 store success score #success ris.rng run place feature large_basalt_columns
execute if score rng ris.rng matches 41 run place feature delta ~ ~3 ~
execute if score rng ris.rng matches 41 run place feature delta ~ ~4 ~
execute if score rng ris.rng matches 41 run place feature delta ~ ~5 ~
execute if score rng ris.rng matches 41 run place feature delta ~ ~6 ~
execute if score rng ris.rng matches 41 run place feature delta ~ ~7 ~
execute if score rng ris.rng matches 41 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace jigsaw{name:"ris:temp"}

execute if score rng ris.rng matches 42 run fill ~-2 ~-1 ~-2 ~2 ~-2 ~2 sand
execute if score rng ris.rng matches 42 store success score #success ris.rng run place feature desert_well
execute if score rng ris.rng matches 42 if score #success ris.rng matches 0 run fill ~-2 ~-1 ~-2 ~2 ~-2 ~2 air

execute if score rng ris.rng matches 43..46 run fill ~-6 ~ ~-6 ~6 ~ ~6 dirt replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 43 store success score #success ris.rng run place feature disk_clay
execute if score rng ris.rng matches 44 store success score #success ris.rng run place feature disk_grass
execute if score rng ris.rng matches 45 store success score #success ris.rng run place feature disk_gravel
execute if score rng ris.rng matches 46 store success score #success ris.rng run place feature disk_sand
execute if score rng ris.rng matches 43..46 run fill ~-6 ~ ~-6 ~6 ~ ~6 air replace dirt

execute if score rng ris.rng matches 47 run function ris:custom_items/jigsaw/dripstone_cluster

execute if score rng ris.rng matches 48..61 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 grass_block replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 48 store success score #success ris.rng run place feature flower_default
execute if score rng ris.rng matches 49 store success score #success ris.rng run place feature flower_flower_forest
execute if score rng ris.rng matches 50 store success score #success ris.rng run place feature flower_meadow
execute if score rng ris.rng matches 51 store success score #success ris.rng run place feature flower_plain
execute if score rng ris.rng matches 52 store success score #success ris.rng run place feature flower_swamp
execute if score rng ris.rng matches 53 store success score #success ris.rng run place feature flower_cherry
execute if score rng ris.rng matches 54 store success score #success ris.rng run place feature forest_flowers
execute if score rng ris.rng matches 55 store success score #success ris.rng run place feature patch_berry_bush
execute if score rng ris.rng matches 56 store success score #success ris.rng run place feature patch_large_fern
execute if score rng ris.rng matches 57 store success score #success ris.rng run place feature patch_melon
execute if score rng ris.rng matches 58 store success score #success ris.rng run place feature patch_pumpkin
execute if score rng ris.rng matches 59 store success score #success ris.rng run place feature patch_sunflower
execute if score rng ris.rng matches 60 store success score #success ris.rng run place feature patch_taiga_grass
execute if score rng ris.rng matches 61 store success score #success ris.rng run place feature patch_tall_grass
execute if score rng ris.rng matches 48..61 run place feature patch_grass
execute if score rng ris.rng matches 48..61 if score #success ris.rng matches 0 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace grass_block

execute if score rng ris.rng matches 62 run setblock ~ ~-1 ~ stone
execute if score rng ris.rng matches 62 store success score #success ris.rng run place feature forest_rock
execute if score rng ris.rng matches 62 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 jigsaw{name:"ris:temp"} replace mossy_cobblestone
execute if score rng ris.rng matches 62 run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 mossy_cobblestone replace jigsaw{name:"ris:temp"}
execute if score rng ris.rng matches 62 run setblock ~ ~-1 ~ mossy_cobblestone
execute if score rng ris.rng matches 62 if score #success ris.rng matches 0 run setblock ~ ~-1 ~ air

execute if score rng ris.rng matches 63 run setblock ~ ~1 ~ netherrack
execute if score rng ris.rng matches 63 store success score #success ris.rng run place feature glowstone_extra
execute if score rng ris.rng matches 63 run setblock ~ ~1 ~ air

execute if score rng ris.rng matches 64 store success score #success ris.rng run place feature iceberg_blue
execute if score rng ris.rng matches 64 if score #success ris.rng matches 1 run place feature iceberg_blue
execute if score rng ris.rng matches 65 store success score #success ris.rng run place feature iceberg_packed
execute if score rng ris.rng matches 65 if score #success ris.rng matches 1 run place feature iceberg_packed
execute if score rng ris.rng matches 64..65 if score #success ris.rng matches 1 run particle snowflake ~ ~ ~ 0.2 0.2 0.2 0 12

execute if score rng ris.rng matches 66 run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 dirt replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 66 store success score #success ris.rng run place feature ice_patch
execute if score rng ris.rng matches 66 run fill ~-3 ~-1 ~-3 ~3 ~1 ~3 air replace dirt

execute if score rng ris.rng matches 67 run setblock ~ ~-1 ~ snow_block
execute if score rng ris.rng matches 67 store success score #success ris.rng run place feature ice_spike
execute if score rng ris.rng matches 67 if score #success ris.rng matches 0 run setblock ~ ~-1 ~ snow_block

execute if score rng ris.rng matches 68 run setblock ~ ~-1 ~ stone
execute if score rng ris.rng matches 68 run fill ~ ~ ~ ~ ~11 ~ water replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 68 store success score #success ris.rng run place feature kelp
execute if score rng ris.rng matches 68 run fill ~ ~ ~ ~ ~11 ~ air replace water
execute if score rng ris.rng matches 68 if score #success ris.rng matches 0 run setblock ~ ~-1 ~ stone

execute if score rng ris.rng matches 69 run fill ~ ~ ~ ~15 ~-4 ~15 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 69 store success score #success ris.rng run place feature lake_lava
execute if score rng ris.rng matches 69 run scoreboard players set #trim ris.rng 0
execute if score rng ris.rng matches 69 run function ris:custom_items/jigsaw/trim
execute if score rng ris.rng matches 69 run function ris:custom_items/jigsaw/trim
execute if score rng ris.rng matches 69 run function ris:custom_items/jigsaw/trim
execute if score rng ris.rng matches 69 run function ris:custom_items/jigsaw/trim
execute if score rng ris.rng matches 69 run function ris:custom_items/jigsaw/trim

execute if score rng ris.rng matches 70 run fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 jigsaw{name:"ris:temp"} replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 70 store success score #success ris.rng run place feature large_basalt_columns
execute if score rng ris.rng matches 70 run fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 air replace jigsaw{name:"ris:temp"}

execute if score rng ris.rng matches 71 run function ris:custom_items/jigsaw/large_dripstone

execute if score rng ris.rng matches 72..73 run fill ~-7 ~-1 ~ ~7 ~-1 ~ dirt replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 72..73 run fill ~ ~-1 ~-7 ~ ~-1 ~7 dirt replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 72 store success score #success ris.rng run place feature mangrove
execute if score rng ris.rng matches 73 store success score #success ris.rng run place feature tall_mangrove
execute if score rng ris.rng matches 72..73 run fill ~-7 ~-1 ~ ~7 ~-1 ~ air replace dirt
execute if score rng ris.rng matches 72..73 run fill ~ ~-1 ~-7 ~ ~-1 ~7 air replace dirt

execute if score rng ris.rng matches 74 run function ris:custom_items/jigsaw/monster_room

execute if score rng ris.rng matches 75 run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 75 store success score #success ris.rng run place feature moss_patch
execute if score rng ris.rng matches 75 run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 air replace stone

execute if score rng ris.rng matches 76 run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 76 store success score #success ris.rng run place feature moss_patch_bonemeal
execute if score rng ris.rng matches 76 run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace stone

execute if score rng ris.rng matches 77 run fill ~-7 ~-1 ~-7 ~7 ~ ~7 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 77 store success score #success ris.rng run place feature moss_patch_ceiling
execute if score rng ris.rng matches 77 run place feature spore_blossom ~ ~-2 ~
execute if score rng ris.rng matches 77 run fill ~-7 ~-1 ~-7 ~7 ~ ~7 air replace stone

execute if score rng ris.rng matches 78 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 warped_nylium replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 78 store success score #success ris.rng run place feature nether_sprouts
execute if score rng ris.rng matches 78 if score #success ris.rng matches 0 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace warped_nylium

execute if score rng ris.rng matches 79 store success score #success ris.rng run place feature ris:ore_ancient_debris_large
execute if score rng ris.rng matches 80 store success score #success ris.rng run place feature ris:ore_ancient_debris_small
execute if score rng ris.rng matches 81 if predicate ris:stone_ore_range store success score #success ris.rng run place feature ris:ore_emerald
execute if score rng ris.rng matches 81 unless predicate ris:stone_ore_range store success score #success ris.rng run place feature ris:ore_deepslate_emerald

execute if score rng ris.rng matches 82..85 run fill ~-15 ~-10 ~-15 ~15 ~5 ~15 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 82 store success score #success ris.rng run place feature ore_andesite
execute if score rng ris.rng matches 83 store success score #success ris.rng run place feature ore_diorite
execute if score rng ris.rng matches 84 store success score #success ris.rng run place feature ore_granite
execute if score rng ris.rng matches 85 store success score #success ris.rng run place feature ore_tuff
execute if score rng ris.rng matches 82..85 run fill ~-15 ~-10 ~-15 ~15 ~5 ~15 air replace stone

execute if score rng ris.rng matches 86..88 run fill ~-6 ~-6 ~-6 ~6 ~2 ~6 netherrack replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 86 store success score #success ris.rng run place feature ore_blackstone
execute if score rng ris.rng matches 87 store success score #success ris.rng run place feature ore_magma
execute if score rng ris.rng matches 88 store success score #success ris.rng run place feature ore_soul_sand
execute if score rng ris.rng matches 86..88 run fill ~-6 ~-6 ~-6 ~6 ~2 ~6 air replace netherrack

execute if score rng ris.rng matches 89..91 run fill ~-6 ~-6 ~-6 ~6 ~2 ~6 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 89 store success score #success ris.rng run place feature ore_clay
execute if score rng ris.rng matches 90 store success score #success ris.rng run place feature ore_dirt
execute if score rng ris.rng matches 91 store success score #success ris.rng run place feature ore_gravel
execute if score rng ris.rng matches 89..91 run fill ~-6 ~-6 ~-6 ~6 ~2 ~6 air replace stone

execute if score rng ris.rng matches 92..102 run execute if predicate ris:stone_ore_range run fill ~-3 ~-4 ~-3 ~3 ~1 ~3 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 92..102 run execute unless predicate ris:stone_ore_range run fill ~-3 ~-4 ~-3 ~3 ~1 ~3 deepslate replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 92 store success score #success ris.rng run place feature ore_coal
execute if score rng ris.rng matches 93 store success score #success ris.rng run place feature ore_copper_large
execute if score rng ris.rng matches 94 store success score #success ris.rng run place feature ore_copper_small
execute if score rng ris.rng matches 95 store success score #success ris.rng run place feature ore_diamond_large
execute if score rng ris.rng matches 96 store success score #success ris.rng run place feature ore_diamond_small
execute if score rng ris.rng matches 97 store success score #success ris.rng run place feature ore_gold
execute if score rng ris.rng matches 98 store success score #success ris.rng run place feature ore_infested
execute if score rng ris.rng matches 99 store success score #success ris.rng run place feature ore_iron
execute if score rng ris.rng matches 100 store success score #success ris.rng run place feature ore_iron_small
execute if score rng ris.rng matches 101 store success score #success ris.rng run place feature ore_lapis
execute if score rng ris.rng matches 102 store success score #success ris.rng run place feature ore_redstone
execute if score rng ris.rng matches 92..102 run execute if predicate ris:stone_ore_range run fill ~-3 ~-4 ~-3 ~3 ~1 ~3 air replace stone
execute if score rng ris.rng matches 92..102 run execute unless predicate ris:stone_ore_range run fill ~-3 ~-4 ~-3 ~3 ~1 ~3 air replace deepslate
# !!!! ORE FEATURES FAIL IN CERTAIN AREAS WHICH SHIFT ON WORLD RELOAD

execute if score rng ris.rng matches 103..105 run fill ~-3 ~-4 ~-3 ~3 ~1 ~3 netherrack replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 103 store success score #success ris.rng run place feature ore_soul_sand
execute if score rng ris.rng matches 104 store success score #success ris.rng run place feature ore_nether_gold
execute if score rng ris.rng matches 105 store success score #success ris.rng run place feature ore_quartz
execute if score rng ris.rng matches 103..105 run fill ~-3 ~-4 ~-3 ~3 ~1 ~3 air replace netherrack

execute if score rng ris.rng matches 106..107 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 mycelium replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 106 store success score #success ris.rng run place feature patch_brown_mushroom
execute if score rng ris.rng matches 107 store success score #success ris.rng run place feature patch_red_mushroom
execute if score rng ris.rng matches 106..107 if score #success ris.rng matches 0 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace mycelium

execute if score rng ris.rng matches 108 store success score #success ris.rng run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 sand replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 108 if score #success ris.rng matches 1 run fill ~-4 ~-2 ~-4 ~4 ~-2 ~4 sandstone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 108 if score #success ris.rng matches 1 run place feature patch_cactus
execute if score rng ris.rng matches 108 if score #success ris.rng matches 1 run place feature patch_cactus
execute if score rng ris.rng matches 108 if score #success ris.rng matches 1 run place feature patch_dead_bush
execute if score rng ris.rng matches 108 if score #success ris.rng matches 1 run place feature patch_dead_bush

execute if score rng ris.rng matches 109..111 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 netherrack replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 109 store success score #success ris.rng run place feature patch_fire
execute if score rng ris.rng matches 110 store success score #success ris.rng run place feature twisting_vines
execute if score rng ris.rng matches 111 store success score #success ris.rng run place feature weeping_vines ~ ~-2 ~
execute if score rng ris.rng matches 109..111 if score #success ris.rng matches 0 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace netherrack

execute if score rng ris.rng matches 112 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 soul_soil replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 112 store success score #success ris.rng run place feature patch_soul_fire
execute if score rng ris.rng matches 112 if score #success ris.rng matches 0 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace soul_soil

execute if score rng ris.rng matches 113 run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 grass_block replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 113 run fill ~-1 ~-1 ~-2 ~1 ~-1 ~2 water replace grass_block
execute if score rng ris.rng matches 113 run fill ~-2 ~-1 ~-1 ~2 ~-1 ~1 water replace grass_block
execute if score rng ris.rng matches 113 store success score #success ris.rng run place feature patch_sugar_cane
execute if score rng ris.rng matches 113 if score #success ris.rng matches 0 run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace grass_block
execute if score rng ris.rng matches 113 if score #success ris.rng matches 0 run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace water

execute if score rng ris.rng matches 114 store success score #success ris.rng run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 water replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 114 if score #success ris.rng matches 1 run place feature patch_waterlily
execute if score rng ris.rng matches 114 if score #success ris.rng matches 1 run place feature patch_waterlily
execute if score rng ris.rng matches 114 if score #success ris.rng matches 0 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace water

execute if score rng ris.rng matches 115..119 run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 grass_block replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 115 store success score #success ris.rng run place feature pile_hay
execute if score rng ris.rng matches 115 run fill ~-3 ~ ~-3 ~3 ~2 ~3 jigsaw{name:"ris:temp"} replace hay_block
execute if score rng ris.rng matches 115 run fill ~-3 ~ ~-3 ~3 ~2 ~3 hay_block replace jigsaw{name:"ris:temp"}
execute if score rng ris.rng matches 116 store success score #success ris.rng run place feature pile_ice
execute if score rng ris.rng matches 116 run fill ~-3 ~ ~-3 ~3 ~2 ~3 jigsaw{name:"ris:temp"} replace packed_ice
execute if score rng ris.rng matches 116 run fill ~-3 ~ ~-3 ~3 ~2 ~3 packed_ice replace jigsaw{name:"ris:temp"}
execute if score rng ris.rng matches 116 run fill ~-3 ~ ~-3 ~3 ~2 ~3 jigsaw{name:"ris:temp"} replace blue_ice
execute if score rng ris.rng matches 116 run fill ~-3 ~ ~-3 ~3 ~2 ~3 blue_ice replace jigsaw{name:"ris:temp"}
execute if score rng ris.rng matches 117 store success score #success ris.rng run place feature pile_melon
execute if score rng ris.rng matches 117 run fill ~-3 ~ ~-3 ~3 ~2 ~3 jigsaw{name:"ris:temp"} replace melon
execute if score rng ris.rng matches 117 run fill ~-3 ~ ~-3 ~3 ~2 ~3 melon replace jigsaw{name:"ris:temp"}
execute if score rng ris.rng matches 118 store success score #success ris.rng run place feature pile_pumpkin
execute if score rng ris.rng matches 118 run fill ~-3 ~ ~-3 ~3 ~2 ~3 jigsaw{name:"ris:temp"} replace pumpkin
execute if score rng ris.rng matches 118 run fill ~-3 ~ ~-3 ~3 ~2 ~3 pumpkin replace jigsaw{name:"ris:temp"}
execute if score rng ris.rng matches 118 run fill ~-3 ~ ~-3 ~3 ~2 ~3 jigsaw{name:"ris:temp"} replace jack_o_lantern
execute if score rng ris.rng matches 118 run fill ~-3 ~ ~-3 ~3 ~2 ~3 jack_o_lantern replace jigsaw{name:"ris:temp"}
execute if score rng ris.rng matches 119 run place feature pile_snow
execute if score rng ris.rng matches 119 run place feature pile_snow
execute if score rng ris.rng matches 119 store success score #success ris.rng run fill ~-3 ~ ~-3 ~3 ~2 ~3 jigsaw{name:"ris:temp"} replace snow
execute if score rng ris.rng matches 119 run fill ~-3 ~ ~-3 ~3 ~2 ~3 snow replace jigsaw{name:"ris:temp"}
execute if score rng ris.rng matches 115..119 run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace grass_block[snowy=false]
execute if score rng ris.rng matches 115..119 if score #success ris.rng matches 0 run fill ~-3 ~-1 ~-3 ~3 ~-1 ~3 air replace grass_block

execute if score rng ris.rng matches 120..121 run fill ~-3 ~-7 ~-3 ~3 ~-1 ~3 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 120..121 run fill ~-2 ~-6 ~-2 ~2 ~-2 ~2 air replace stone
execute if score rng ris.rng matches 120 store success score #success ris.rng run place feature sculk_patch_ancient_city
execute if score rng ris.rng matches 121 store success score #success ris.rng run place feature sculk_patch_deep_dark
execute if score rng ris.rng matches 120..121 if score #success ris.rng matches 0 run fill ~-3 ~-7 ~-3 ~3 ~-1 ~3 air replace stone

execute if score rng ris.rng matches 122 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 122 run fill ~-4 ~ ~-4 ~4 ~ ~4 water replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 122 store success score #success ris.rng run place feature sea_pickle
execute if score rng ris.rng matches 122 if score #success ris.rng matches 0 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace stone
execute if score rng ris.rng matches 122 if score #success ris.rng matches 0 run fill ~-4 ~ ~-4 ~4 ~ ~4 air replace water

execute if score rng ris.rng matches 123 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 grass_block
execute if score rng ris.rng matches 123 run setblock ~ ~ ~ air
execute if score rng ris.rng matches 123 store success score #success ris.rng run place feature single_piece_of_grass
execute if score rng ris.rng matches 123 if score #success ris.rng matches 0 run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air replace grass_block

execute if score rng ris.rng matches 124 run fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 jigsaw{name:"ris:temp"} replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 124 store success score #success ris.rng run place feature small_basalt_columns
execute if score rng ris.rng matches 124 run fill ~-5 ~-1 ~-5 ~5 ~-1 ~5 air replace jigsaw{name:"ris:temp"}

execute if score rng ris.rng matches 125..126 run fill ~ ~-1 ~ ~ ~1 ~ stone
execute if score rng ris.rng matches 125..126 run fill ~ ~ ~-1 ~ ~ ~1 stone
execute if score rng ris.rng matches 125..126 run setblock ~-1 ~ ~ stone
execute if score rng ris.rng matches 125 store success score #success ris.rng run place feature spring_lava_overworld
execute if score rng ris.rng matches 126 store success score #success ris.rng run place feature spring_water
execute if score rng ris.rng matches 125..126 if score #success ris.rng matches 0 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace stone

execute if score rng ris.rng matches 127..128 run fill ~-1 ~ ~ ~1 ~ ~ netherrack
execute if score rng ris.rng matches 127..128 run fill ~ ~ ~-1 ~ ~ ~1 netherrack
execute if score rng ris.rng matches 127..128 run setblock ~ ~1 ~ netherrack
execute if score rng ris.rng matches 127 run setblock ~ ~-1 ~ netherrack
execute if score rng ris.rng matches 127 store success score #success ris.rng run place feature spring_nether_closed
execute if score rng ris.rng matches 128 store success score #success ris.rng run place feature spring_nether_open
execute if score rng ris.rng matches 127..128 if score #success ris.rng matches 0 run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air replace netherrack

execute if score rng ris.rng matches 129 run fill ~-6 ~ ~-6 ~6 ~9 ~6 water replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 129 store success score #success ris.rng run place feature warm_ocean_vegetation
execute if score rng ris.rng matches 129 run fill ~-6 ~ ~-6 ~6 ~9 ~6 air replace water

execute if score rng ris.rng matches 130 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 warped_nylium replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 130 store success score #success ris.rng run place feature warped_forest_vegetation
execute if score rng ris.rng matches 130 if score #success ris.rng matches 0 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 air replace warped_nylium

execute if score rng ris.rng matches 131 run setblock ~ ~-1 ~ warped_nylium
execute if score rng ris.rng matches 131 store success score #success ris.rng run place feature warped_fungus_planted
execute if score rng ris.rng matches 131 if score #success ris.rng matches 0 run setblock ~ ~-1 ~ air

execute if score rng ris.rng matches 132 store success score #success ris.rng run place feature end_platform

# could technically integrate those more cleanly in above but really dont feel like adjusting all the numbers thereafter
execute if score rng ris.rng matches 133 run fill ~-4 ~-1 ~-4 ~4 ~-1 ~4 grass_block replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 133 store success score #success ris.rng run place feature pale_forest_flowers
execute if score rng ris.rng matches 134..137 run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 stone replace #ris:jigsaw_replaceable
execute if score rng ris.rng matches 134 store success score #success ris.rng run place feature pale_moss_patch
execute if score rng ris.rng matches 135 store success score #success ris.rng run place feature pale_moss_patch_bonemeal
execute if score rng ris.rng matches 136 store success score #success ris.rng run place feature pale_oak
execute if score rng ris.rng matches 137 store success score #success ris.rng run place feature pale_oak_creaking
execute if score rng ris.rng matches 134..137 run fill ~-7 ~-1 ~-7 ~7 ~-1 ~7 air replace stone


execute if entity @s[tag=ris.feature_generator] run return 1

execute if score #success ris.rng matches 1 run playsound block.pointed_dripstone.land block @a ~ ~ ~ 2
execute if score #success ris.rng matches 1 run kill @s[type=item]

execute if score #success ris.rng matches 1 on origin run advancement grant @s only ris:special/customized/pieces_of_a_whole jigsaw

execute if score #success ris.rng matches 0 run playsound block.fire.extinguish block @a ~ ~ ~ 1
execute if score #success ris.rng matches 0 run particle smoke ~ ~0.25 ~ 0.1 0.1 0.1 0 15



## Unable to spawn

#blue_ice
#end_spike
#freeze_top_layer
#rooted_azalea_tree
#underwater_magma
#void_start_platform

## Chose not to include (duplicates/single blocks)

#bamboo_vegetation
#birch_bees_0002
#birch_bees_002
#birch_bees_005
#cave_vine_in_moss
#crimson_forest_vegetation_bonemeal
#crimson_fungus
#dark_forest_vegetation
#fancy_oak_bees_0002
#fancy_oak_bees_002
#fossil_coal
#fossil_diamonds
#glow_lichen
#lush_caves_clay
#oak_bees_0002
#oak_bees_002
#oak_bees_005
#ore_coal_buried
#ore_diamond_buried
#ore_diamond_medium
#ore_gravel_nether
#ore_gold_buried
#ore_lapis_buried
#pale_garden_vegetation
#pale_moss_vegetation
#pale_oak_bonemeal
#patch_crimson_roots
#patch_grass_jungle
#pointed_dripstone
#mangrove_vegetation
#meadow_trees
#moss_vegetation
#mushroom_island_vegetation
#nether_sprouts_bonemeal
#sculk_vein
#seagrass_mid
#seagrass_short
#seagrass_slightly_less_short
#seagrass_tall
#spring_lava_frozen
#spring_lava_nether
#super_birch_bees_0002
#trees_birch_and_oak
#trees_flower_forest
#trees_grove
#trees_jungle
#trees_old_growth_pine_taiga
#trees_old_growth_spruce_taiga
#trees_plains
#trees_savanna
#trees_sparse_jungle
#trees_taiga
#trees_water
#trees_windswept_hills
#trees_cherry
#twisting_vines_bonemeal
#vines
#warped_forest_vegetation_bonemeal
#warped_fungus