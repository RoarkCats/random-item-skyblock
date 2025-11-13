# General Settings
execute unless score item_giver ris.settings matches 0..1 run scoreboard players set item_giver ris.settings 1
execute unless score same_items ris.settings matches 0..1 run scoreboard players set same_items ris.settings 0
execute unless score special_items ris.settings matches 0..1 run scoreboard players set special_items ris.settings 1
execute unless score alchemy_items ris.settings matches 0..1 run scoreboard players set alchemy_items ris.settings 1
execute unless score loot_box_shulkers ris.settings matches 0..1 run scoreboard players set loot_box_shulkers ris.settings 1
execute unless score void_totems ris.settings matches 0..1 run scoreboard players set void_totems ris.settings 1
execute unless score dragon_spawn_egg_prot ris.settings matches 0..1 run scoreboard players set dragon_spawn_egg_prot ris.settings 1
execute unless score refresh_settings_menu ris.settings matches 0..1 run scoreboard players set refresh_settings_menu ris.settings 1
# Special Item Settings
execute unless score generator_names ris.settings matches 0..1 run scoreboard players set generator_names ris.settings 1
execute unless score dispensable_special_items ris.settings matches 0..3 run scoreboard players set dispensable_special_items ris.settings 1
execute unless score disp_special_item_delay ris.settings matches 0.. run scoreboard players set disp_special_item_delay ris.settings 0
execute unless score destroy_range ris.settings matches 0..1 run scoreboard players set destroy_range ris.settings 1
execute unless score shulker_dupe ris.settings matches 0..1 run scoreboard players set shulker_dupe ris.settings 0
execute unless score written_book_dupe ris.settings matches 0..1 run scoreboard players set written_book_dupe ris.settings 0
execute unless score special_item_dupe ris.settings matches 0..1 run scoreboard players set special_item_dupe ris.settings 0
execute unless score unstackable_dupe_count ris.settings matches 1.. run scoreboard players set unstackable_dupe_count ris.settings 4
execute unless score cmd_special_items ris.settings matches 0.. run scoreboard players set cmd_special_items ris.settings 8
execute unless score trader_special_items ris.settings matches 0..2 run scoreboard players set trader_special_items ris.settings 2
execute unless score debug_items ris.settings matches 0..2 run scoreboard players set debug_items ris.settings 1
# Alchemy Item Settings
execute unless score cauldron_water_use ris.settings matches 0..1 run scoreboard players set cauldron_water_use ris.settings 1
execute unless score dispensable_cauldrons ris.settings matches 0..1 run scoreboard players set dispensable_cauldrons ris.settings 1
execute unless score compendium_sync ris.settings matches 0..1 run scoreboard players set compendium_sync ris.settings 0
execute unless score compendium_auto_revise ris.settings matches 0..1 run scoreboard players set compendium_auto_revise ris.settings 1
execute unless score sherd_modifiers ris.settings matches 0..1 run scoreboard players set sherd_modifiers ris.settings 1
execute unless score combinable_duped_items ris.settings matches 0..2 run scoreboard players set combinable_duped_items ris.settings 2
execute unless score component_level_display ris.settings matches 0..1 run scoreboard players set component_level_display ris.settings 0
execute unless score component_level_max ris.settings matches 0.. run scoreboard players set component_level_max ris.settings 0
execute unless score component_merge_chance ris.settings matches 1..100 run scoreboard players set component_merge_chance ris.settings 50

execute unless score schematic_block_limit ris.settings matches 1.. run scoreboard players set schematic_block_limit ris.settings 1728
execute unless score structure_gen_integrity ris.settings matches 1..100 run scoreboard players set structure_gen_integrity ris.settings 20
execute unless score vein_miner_block_limit ris.settings matches 1.. run scoreboard players set vein_miner_block_limit ris.settings 256
execute unless score inverse_vein_miner_range ris.settings matches 1.. run scoreboard players set inverse_vein_miner_range ris.settings 1500
execute unless score block_miner_range ris.settings matches 1.. run scoreboard players set block_miner_range ris.settings 8
execute unless score trade_reroll_chance ris.settings matches 1..100 run scoreboard players set trade_reroll_chance ris.settings 50
execute unless score trade_multiply_chance ris.settings matches 1..100 run scoreboard players set trade_multiply_chance ris.settings 50
execute unless score knowledge_damage ris.settings matches 0..1 run scoreboard players set knowledge_damage ris.settings 1


# Special Items
execute unless score command_block ris.special_item_settings matches 0..1 run scoreboard players set command_block ris.special_item_settings 1
execute unless score chain_command_block ris.special_item_settings matches 0..1 run scoreboard players set chain_command_block ris.special_item_settings 1
execute unless score repeating_command_block ris.special_item_settings matches 0..1 run scoreboard players set repeating_command_block ris.special_item_settings 1
execute unless score command_block_minecart ris.special_item_settings matches 0..1 run scoreboard players set command_block_minecart ris.special_item_settings 1
execute unless score structure_block ris.special_item_settings matches 0..1 run scoreboard players set structure_block ris.special_item_settings 1
execute unless score jigsaw ris.special_item_settings matches 0..1 run scoreboard players set jigsaw ris.special_item_settings 1
execute unless score debug_stick ris.special_item_settings matches 0..1 run scoreboard players set debug_stick ris.special_item_settings 1
execute unless score knowledge_book ris.special_item_settings matches 0..1 run scoreboard players set knowledge_book ris.special_item_settings 1
execute unless score creator_heads ris.special_item_settings matches 0..1 run scoreboard players set creator_heads ris.special_item_settings 1

# Alchemy Items
execute unless score double/command ris.alchemy_item_settings matches 0..1 run scoreboard players set double/command ris.alchemy_item_settings 1
execute unless score double/chain ris.alchemy_item_settings matches 0..1 run scoreboard players set double/chain ris.alchemy_item_settings 1
execute unless score double/repeat ris.alchemy_item_settings matches 0..1 run scoreboard players set double/repeat ris.alchemy_item_settings 1
execute unless score double/minecart ris.alchemy_item_settings matches 0..1 run scoreboard players set double/minecart ris.alchemy_item_settings 1
execute unless score double/structure ris.alchemy_item_settings matches 0..1 run scoreboard players set double/structure ris.alchemy_item_settings 1
execute unless score double/jigsaw ris.alchemy_item_settings matches 0..1 run scoreboard players set double/jigsaw ris.alchemy_item_settings 1
execute unless score double/debug ris.alchemy_item_settings matches 0..1 run scoreboard players set double/debug ris.alchemy_item_settings 1
execute unless score double/knowledge ris.alchemy_item_settings matches 0..1 run scoreboard players set double/knowledge ris.alchemy_item_settings 1

execute unless score command/chain ris.alchemy_item_settings matches 0..1 run scoreboard players set command/chain ris.alchemy_item_settings 1
execute unless score command/repeat ris.alchemy_item_settings matches 0..1 run scoreboard players set command/repeat ris.alchemy_item_settings 1
execute unless score command/chain_repeat ris.alchemy_item_settings matches 0..1 run scoreboard players set command/chain_repeat ris.alchemy_item_settings 1
execute unless score command/minecart ris.alchemy_item_settings matches 0..1 run scoreboard players set command/minecart ris.alchemy_item_settings 1
execute unless score command/chain_minecart ris.alchemy_item_settings matches 0..1 run scoreboard players set command/chain_minecart ris.alchemy_item_settings 1
execute unless score command/repeat_minecart ris.alchemy_item_settings matches 0..1 run scoreboard players set command/repeat_minecart ris.alchemy_item_settings 1

execute unless score structure/minecart ris.alchemy_item_settings matches 0..1 run scoreboard players set structure/minecart ris.alchemy_item_settings 1
execute unless score structure/command ris.alchemy_item_settings matches 0..1 run scoreboard players set structure/command ris.alchemy_item_settings 1
execute unless score structure/chain ris.alchemy_item_settings matches 0..1 run scoreboard players set structure/chain ris.alchemy_item_settings 1
execute unless score structure/repeat ris.alchemy_item_settings matches 0..1 run scoreboard players set structure/repeat ris.alchemy_item_settings 1

execute unless score jigsaw/structure ris.alchemy_item_settings matches 0..1 run scoreboard players set jigsaw/structure ris.alchemy_item_settings 1
execute unless score jigsaw/minecart ris.alchemy_item_settings matches 0..1 run scoreboard players set jigsaw/minecart ris.alchemy_item_settings 1
execute unless score jigsaw/command ris.alchemy_item_settings matches 0..1 run scoreboard players set jigsaw/command ris.alchemy_item_settings 1
execute unless score jigsaw/chain ris.alchemy_item_settings matches 0..1 run scoreboard players set jigsaw/chain ris.alchemy_item_settings 1
execute unless score jigsaw/repeat ris.alchemy_item_settings matches 0..1 run scoreboard players set jigsaw/repeat ris.alchemy_item_settings 1

execute unless score debug/jigsaw ris.alchemy_item_settings matches 0..1 run scoreboard players set debug/jigsaw ris.alchemy_item_settings 1
execute unless score debug/structure ris.alchemy_item_settings matches 0..1 run scoreboard players set debug/structure ris.alchemy_item_settings 1
execute unless score debug/minecart ris.alchemy_item_settings matches 0..1 run scoreboard players set debug/minecart ris.alchemy_item_settings 1
execute unless score debug/command ris.alchemy_item_settings matches 0..1 run scoreboard players set debug/command ris.alchemy_item_settings 1
execute unless score debug/chain ris.alchemy_item_settings matches 0..1 run scoreboard players set debug/chain ris.alchemy_item_settings 1
execute unless score debug/repeat ris.alchemy_item_settings matches 0..1 run scoreboard players set debug/repeat ris.alchemy_item_settings 1

execute unless score knowledge/debug ris.alchemy_item_settings matches 0..1 run scoreboard players set knowledge/debug ris.alchemy_item_settings 1
execute unless score knowledge/jigsaw ris.alchemy_item_settings matches 0..1 run scoreboard players set knowledge/jigsaw ris.alchemy_item_settings 1
execute unless score knowledge/structure ris.alchemy_item_settings matches 0..1 run scoreboard players set knowledge/structure ris.alchemy_item_settings 1
execute unless score knowledge/minecart ris.alchemy_item_settings matches 0..1 run scoreboard players set knowledge/minecart ris.alchemy_item_settings 1
execute unless score knowledge/command ris.alchemy_item_settings matches 0..1 run scoreboard players set knowledge/command ris.alchemy_item_settings 1
execute unless score knowledge/chain ris.alchemy_item_settings matches 0..1 run scoreboard players set knowledge/chain ris.alchemy_item_settings 1
execute unless score knowledge/repeat ris.alchemy_item_settings matches 0..1 run scoreboard players set knowledge/repeat ris.alchemy_item_settings 1