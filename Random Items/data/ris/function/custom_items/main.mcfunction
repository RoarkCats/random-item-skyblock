## Special Item Main ##
# run from main every tick if enabled

# Generators
execute if score time ris.timer >= delay ris.timer run scoreboard players add generator ris.generator 1

# Held Destroy Range Visual
execute if score destroy_range ris.settings matches 1 as @a[tag=!ris.no_destroy_range,gamemode=!spectator] if items entity @s weapon.mainhand #ris:destroy_range at @s run function ris:custom_items/destroy_range

# Custom Name Visibility
execute as @e[type=area_effect_cloud,tag=!ris.name_ignore] run function ris:custom_items/name_visibility


# Command Block Minecart - Random loot (placed)
execute unless score command_block_minecart ris.special_item_settings matches 0 as @e[type=command_block_minecart,tag=!ris.command_block_minecart] at @s run function ris:custom_items/command_block_minecart

# Chain Command Block - Muliplies any item by 16
execute as @e[tag=ris.multiplier] at @s run function ris:custom_items/chain/multiplier

# Repeating Command Block - Item generator
execute as @e[tag=ris.generator] at @s unless block ~ ~-0.5 ~ repeating_command_block run kill @s
execute if score time ris.timer >= delay ris.timer unless score item_giver ris.settings matches 0 unless score repeating_command_block ris.special_item_settings matches 0 run function ris:custom_items/repeat/generate_item