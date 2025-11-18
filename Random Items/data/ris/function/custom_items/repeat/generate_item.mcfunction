scoreboard players operation #temp ris.generator = generator ris.generator
scoreboard players operation #temp ris.generator %= #2 ris.timer
execute unless score #temp ris.generator matches 0 run return run function ris:custom_items/repeat/delay_particle

# Checks
tag @e[tag=ris.generator,tag=ris.gen_off] remove ris.gen_off
execute as @e[tag=ris.generator] at @s if block ~ ~-0.5 ~ repeating_command_block{powered:1b} run function ris:custom_items/repeat/off

execute as @e[tag=ris.generator,tag=!ris.gen_off] at @s positioned ~ ~0.4 ~ run function ris:custom_items/repeat/lazy_load_prot
tag @e[tag=ris.gen_unloaded] add ris.gen_off

# Generate
execute if score same_items ris.settings matches 1 run function ris:custom_items/repeat/same_item
execute if score same_items ris.settings matches 0 as @e[tag=ris.generator,tag=!ris.gen_off] at @s positioned ~ ~0.4 ~ run function ris:custom_items/repeat/dif_item