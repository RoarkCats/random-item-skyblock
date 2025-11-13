## Special Items ##
# run as/at all items from main every tick if enabled


# Item tagging (2nd count check needed if changes after dropped)
execute if entity @s[tag=!ris.tagged_item] if function ris:custom_items/tag_item run return 0

execute if score alchemy_items ris.settings matches 1 if entity @s[tag=ris.normal_item,tag=ris.custom_stack] run return run execute if block ~ ~ ~ water_cauldron run function ris:alchemy/custom_stack
execute if score alchemy_items ris.settings matches 1 if entity @s[tag=!ris.in_cauldron] if block ~ ~ ~ water_cauldron align y positioned ~ ~0.9 ~ run function ris:alchemy/_recipe/added_to_cauldron
execute if score alchemy_items ris.settings matches 1 if entity @s[tag=ris.in_cauldron] run return run execute unless entity @s[tag=ris.dead] run function ris:alchemy/_recipe/recipes
execute if score alchemy_items ris.settings matches 1 if block ~ ~ ~ cauldron run return 0

execute if entity @s[nbt=!{PickupDelay:0s}] run return 0
execute unless items entity @s contents *[count=1] run return run tag @s add ris.normal_item
execute if entity @s[tag=ris.ejected_item] run return 0
# (deliberately separated)


# Alchemy - Transmuted Items    (ris.transmuted_ignore)
execute if score alchemy_items ris.settings matches 1 if entity @s[tag=ris.transmuted] run return run execute if entity @s[tag=!ris.transmuted_ignore,tag=!ris.alchemy_book] run function ris:alchemy/run with entity @s Item.components.minecraft:custom_data.ris


# Chain Command Block - Muliplies any item by 16
execute unless score chain_command_block ris.special_item_settings matches 0 if entity @s[tag=ris.chain_command_block] run return run function ris:custom_items/chain/chain

# Command Block - 64 of any item
execute unless score command_block ris.special_item_settings matches 0 if entity @s[tag=ris.command_block] run return run function ris:custom_items/command_block/spawn

# Repeating Command Block - Item generator
execute unless score repeating_command_block ris.special_item_settings matches 0 if entity @s[tag=ris.repeating_command_block] run return run function ris:custom_items/repeat/repeat

# Command Block Minecart - Random loot
execute unless score command_block_minecart ris.special_item_settings matches 0 if entity @s[tag=ris.command_block_minecart] run return run function ris:custom_items/command_block_minecart

# Structure Block - Random structure
execute unless score structure_block ris.special_item_settings matches 0 if entity @s[tag=ris.structure_block] align y if predicate ris:y_range_structure run return run function ris:custom_items/structure/spawn

# Jigsaw - Random feature
execute unless score jigsaw ris.special_item_settings matches 0 if entity @s[tag=ris.jigsaw] if predicate ris:y_range_jigsaw run return run function ris:custom_items/jigsaw/jigsaw

# Debug Stick - Removes unbreakable blocks    
execute unless score debug_stick ris.special_item_settings matches 0 if entity @s[tag=ris.debug_stick] positioned ~ ~-0.1 ~ if block ~ ~ ~ #ris:debug_breakable run return run function ris:custom_items/debug/debug

# Knowledge Book - Spawns a random item trader
execute unless score knowledge_book ris.special_item_settings matches 0 if entity @s[tag=ris.knowledge_book] positioned ~ ~0.01 ~ run return run function ris:custom_items/trader/knowledge