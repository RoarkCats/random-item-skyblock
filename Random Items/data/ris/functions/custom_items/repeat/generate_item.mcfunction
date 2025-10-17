execute as @e[tag=ris.generator] at @s if block ~ ~-0.5 ~ repeating_command_block{powered:1b} run tag @s add ris.gen_off

execute if score same_items ris.settings matches 1 run function ris:custom_items/repeat/same_item
execute if score same_items ris.settings matches 0 as @e[tag=ris.generator,tag=!ris.gen_off] at @s positioned ~ ~0.4 ~ run function ris:custom_items/repeat/dif_item

execute as @e[tag=ris.generator,tag=ris.gen_off] at @s run particle dust 1 0 0 1 ~ ~0.4 ~ 0.1 0.1 0.1 0 4

tag @e[tag=ris.generator,tag=ris.gen_off] remove ris.gen_off


scoreboard players set generator ris.timer 0