## Special Item Main ##
# run from main every tick if enabled


# Chain Command Block - Muliplies any item by 16
execute as @e[tag=ris.multiplier] at @s run function ris:custom_items/chain/multiplier


# Repeating Command Block - Item generator
execute as @e[tag=ris.generator] at @s run function ris:custom_items/repeat/generator

execute if score time ris.timer >= delay ris.timer run scoreboard players add generator ris.timer 1
execute unless score item_giver ris.settings matches 0 unless score repeating_command_block ris.special_item_settings matches 0 if score generator ris.timer matches 2.. run function ris:custom_items/repeat/generate_item


# Command Block Minecart - Random chest loot tables
execute unless score command_block_minecart ris.special_item_settings matches 0 as @e[type=command_block_minecart] at @s run function ris:custom_items/command_block_minecart