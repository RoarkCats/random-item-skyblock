forceload add 0 0
setblock 0 255 0 chest

execute store result score chestLoot item_timer run loot insert 0 255 0 loot ris:chestloot-rng

forceload remove 0 0
setblock 0 255 0 air


execute if score chestLoot item_timer matches 0 run loot spawn ~ ~ ~ loot chests/village/village_armorer
execute if score chestLoot item_timer matches 1 run loot spawn ~ ~ ~ loot chests/village/village_butcher
execute if score chestLoot item_timer matches 2 run loot spawn ~ ~ ~ loot chests/village/village_cartographer
execute if score chestLoot item_timer matches 3 run loot spawn ~ ~ ~ loot chests/village/village_desert_house
execute if score chestLoot item_timer matches 4 run loot spawn ~ ~ ~ loot chests/village/village_fisher
execute if score chestLoot item_timer matches 5 run loot spawn ~ ~ ~ loot chests/village/village_mason
execute if score chestLoot item_timer matches 6 run loot spawn ~ ~ ~ loot chests/village/village_plains_house
execute if score chestLoot item_timer matches 7 run loot spawn ~ ~ ~ loot chests/village/village_savanna_house
execute if score chestLoot item_timer matches 8 run loot spawn ~ ~ ~ loot chests/village/village_shepherd
execute if score chestLoot item_timer matches 9 run loot spawn ~ ~ ~ loot chests/village/village_snowy_house
execute if score chestLoot item_timer matches 10 run loot spawn ~ ~ ~ loot chests/village/village_taiga_house
execute if score chestLoot item_timer matches 11 run loot spawn ~ ~ ~ loot chests/village/village_tannery
execute if score chestLoot item_timer matches 12 run loot spawn ~ ~ ~ loot chests/village/village_temple
execute if score chestLoot item_timer matches 13 run loot spawn ~ ~ ~ loot chests/village/village_toolsmith
execute if score chestLoot item_timer matches 14 run loot spawn ~ ~ ~ loot chests/village/village_weaponsmith
execute if score chestLoot item_timer matches 15 run loot spawn ~ ~ ~ loot chests/village/village_fletcher
execute if score chestLoot item_timer matches 16 run loot spawn ~ ~ ~ loot chests/abandoned_mineshaft
execute if score chestLoot item_timer matches 17 run loot spawn ~ ~ ~ loot chests/buried_treasure
execute if score chestLoot item_timer matches 18 run loot spawn ~ ~ ~ loot chests/desert_pyramid
execute if score chestLoot item_timer matches 19 run loot spawn ~ ~ ~ loot chests/end_city_treasure
execute if score chestLoot item_timer matches 20 run loot spawn ~ ~ ~ loot chests/igloo_chest
execute if score chestLoot item_timer matches 21 run loot spawn ~ ~ ~ loot chests/jungle_temple
execute if score chestLoot item_timer matches 22 run loot spawn ~ ~ ~ loot chests/jungle_temple_dispenser
execute if score chestLoot item_timer matches 23 run loot spawn ~ ~ ~ loot chests/shipwreck_map
execute if score chestLoot item_timer matches 24 run loot spawn ~ ~ ~ loot chests/shipwreck_supply
execute if score chestLoot item_timer matches 25 run loot spawn ~ ~ ~ loot chests/nether_bridge
execute if score chestLoot item_timer matches 26 run loot spawn ~ ~ ~ loot chests/pillager_outpost
execute if score chestLoot item_timer matches 27 run loot spawn ~ ~ ~ loot chests/shipwreck_treasure
execute if score chestLoot item_timer matches 28 run loot spawn ~ ~ ~ loot chests/simple_dungeon
execute if score chestLoot item_timer matches 29 run loot spawn ~ ~ ~ loot chests/spawn_bonus_chest
execute if score chestLoot item_timer matches 30 run loot spawn ~ ~ ~ loot chests/stronghold_corridor
execute if score chestLoot item_timer matches 31 run loot spawn ~ ~ ~ loot chests/stronghold_crossing
execute if score chestLoot item_timer matches 32 run loot spawn ~ ~ ~ loot chests/stronghold_library
execute if score chestLoot item_timer matches 33 run loot spawn ~ ~ ~ loot chests/underwater_ruin_big
execute if score chestLoot item_timer matches 34 run loot spawn ~ ~ ~ loot chests/underwater_ruin_small
execute if score chestLoot item_timer matches 35 run loot spawn ~ ~ ~ loot chests/woodland_mansion