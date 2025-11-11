## Special Items ##
# run as/at all items from main every tick if enabled

# Item tagging
execute if entity @s[tag=!ris.tagged_item] run function ris:custom_items/tag_item
execute if entity @s[tag=ris.normal_item] run return 0
execute if entity @s[nbt=!{PickupDelay:0s}] run return 0


# Chain Command Block - Muliplies any item by 16
execute unless score chain_command_block ris.special_item_settings matches 0 if entity @s[tag=ris.hand_dropped,tag=ris.chain_command_block] align xyz positioned ~0.5 ~ ~0.5 run function ris:custom_items/chain/chain

# Command Block - 64 of any item
execute unless score command_block ris.special_item_settings matches 0 if entity @s[tag=ris.command_block] run function ris:custom_items/command_block/spawn

# Repeating Command Block - Item generator
execute unless score repeating_command_block ris.special_item_settings matches 0 if entity @s[tag=ris.hand_dropped,tag=ris.repeating_command_block] align xyz positioned ~0.5 ~ ~0.5 run function ris:custom_items/repeat/repeat

# Command Block Minecart - Random chest loot tables
# <not item>

# Structure Block - Random structure
execute unless score structure_block ris.special_item_settings matches 0 if entity @s[tag=ris.hand_dropped,tag=ris.structure_block] align y if predicate ris:y_range_structure run function ris:custom_items/structure/spawn

# Jigsaw - Random feature
execute unless score jigsaw_block ris.special_item_settings matches 0 if entity @s[tag=ris.hand_dropped,tag=ris.jigsaw] if predicate ris:y_range_jigsaw run function ris:custom_items/jigsaw/jigsaw

# Debug Stick - Removes unbreakable blocks    
execute unless score debug_stick ris.special_item_settings matches 0 if entity @s[tag=ris.debug_stick] if block ~ ~-0.1 ~ #ris:debug_breakable run function ris:custom_items/debug/debug

# Knowledge Book - Spawns a random item trader
execute unless score knowledge_book ris.special_item_settings matches 0 if entity @s[tag=ris.knowledge_book] positioned ~ ~0.01 ~ run function ris:custom_items/trader/spawn