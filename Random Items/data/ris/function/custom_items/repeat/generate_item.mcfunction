scoreboard players operation #temp ris.generator = generator ris.generator
scoreboard players operation #temp ris.generator %= #2 ris.timer
execute unless score #temp ris.generator matches 0 run return 0


execute as @e[tag=ris.generator] at @s if block ~ ~-0.5 ~ repeating_command_block{powered:1b} run tag @s add ris.gen_off

execute if score same_items ris.settings matches 1 run function ris:custom_items/repeat/same_item
execute if score same_items ris.settings matches 0 as @e[tag=ris.generator,tag=!ris.gen_off] at @s positioned ~ ~0.4 ~ run function ris:custom_items/repeat/dif_item

execute as @e[tag=ris.generator,tag=ris.gen_off] at @s run function ris:custom_items/repeat/off
tag @e[tag=ris.generator,tag=ris.gen_off] remove ris.gen_off