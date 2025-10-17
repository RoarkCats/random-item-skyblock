## Special Items ##

# Item tagging
tag @e[type=item,tag=!ris.tagged_item,tag=ris.spawned_item] add ris.tagged_item
execute as @e[type=item,tag=!ris.tagged_item] run function ris:custom_items/tag_item



# Chain Command Block - Muliplies any item by 16
execute if score generator_names ris.settings matches 1 as @e[tag=ris.multiplier,tag=!ris.name_showing] run function ris:custom_items/toggle_name
execute if score generator_names ris.settings matches 0 as @e[tag=ris.multiplier,tag=!ris.name_hidden] run function ris:custom_items/toggle_name

execute unless score chain_command_block ris.special_item_settings matches 0 as @e[tag=!ris.spawned_item,type=item,tag=ris.hand_dropped,tag=ris.chain_command_block,nbt={PickupDelay:0s,Item:{Count:1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 run function ris:custom_items/chain/chain

execute as @e[tag=ris.multiplier] at @s unless block ~ ~-0.5 ~ chain_command_block run kill @s
execute unless score chain_command_block ris.special_item_settings matches 0 as @e[tag=ris.multiplier] at @s run particle dragon_breath ~ ~0.4 ~ 0.15 0.15 0.15 0 3

execute unless score chain_command_block ris.special_item_settings matches 0 at @e[tag=ris.multiplier] as @e[tag=!ris.spawned_item,type=item,distance=..0.5,nbt={PickupDelay:0s,Item:{Count:1b}},limit=1] run function ris:custom_items/chain/dup_item


# Command Block - 64 of any item
execute unless score command_block ris.special_item_settings matches 0 as @e[tag=!ris.spawned_item,type=item,tag=ris.command_block,nbt={PickupDelay:0s,Item:{Count:1b}}] at @s run function ris:custom_items/command_block/spawn


# Repeating Command Block - Item generator
execute if score generator_names ris.settings matches 1 as @e[tag=ris.generator,tag=!ris.name_showing] run function ris:custom_items/toggle_name
execute if score generator_names ris.settings matches 0 as @e[tag=ris.generator,tag=!ris.name_hidden] run function ris:custom_items/toggle_name

execute unless score repeating_command_block ris.special_item_settings matches 0 as @e[tag=!ris.spawned_item,type=item,tag=ris.hand_dropped,tag=ris.repeating_command_block,nbt={PickupDelay:0s,Item:{Count:1b}}] at @s align xyz positioned ~0.5 ~ ~0.5 run function ris:custom_items/repeat/repeat

execute as @e[tag=ris.generator] at @s unless block ~ ~-0.5 ~ repeating_command_block run kill @s

execute if score time ris.timer >= delay ris.timer run scoreboard players add generator ris.timer 1
execute unless score item_giver ris.settings matches 0 unless score repeating_command_block ris.special_item_settings matches 0 if score generator ris.timer matches 2.. run function ris:custom_items/repeat/generate_item


# Command Block Minecart - Random chest loot tables
execute unless score command_block_minecart ris.special_item_settings matches 0 as @e[type=command_block_minecart] at @s run function ris:custom_items/command_block_minecart


# Structure Block - Random structure
execute unless score structure_block ris.special_item_settings matches 0 as @e[tag=!ris.spawned_item,type=item,tag=ris.hand_dropped,tag=ris.structure_block,nbt={PickupDelay:0s,Item:{Count:1b}}] at @s align y if predicate ris:y_range_structure run function ris:custom_items/structure/spawn


# Jigsaw - Random feature
execute unless score jigsaw_block ris.special_item_settings matches 0 as @e[tag=!ris.spawned_item,type=item,tag=ris.hand_dropped,tag=ris.jigsaw,nbt={PickupDelay:0s,Item:{Count:1b}}] at @s if predicate ris:y_range_jigsaw run function ris:custom_items/jigsaw/jigsaw


# Debug Stick - Removes unbreakable blocks    
execute unless score debug_stick ris.special_item_settings matches 0 as @e[tag=!ris.spawned_item,type=item,tag=ris.debug_stick,nbt={PickupDelay:0s,Item:{Count:1b}}] at @s if block ~ ~-0.1 ~ #ris:debug_break run function ris:custom_items/debug/debug


# Knowledge Book - Spawns a random item trader
execute unless score knowledge_book ris.special_item_settings matches 0 as @e[tag=!ris.spawned_item,type=item,tag=ris.knowledge_book,nbt={PickupDelay:0s,Item:{Count:1b}}] at @s positioned ~ ~0.01 ~ run function ris:custom_items/trader/spawn