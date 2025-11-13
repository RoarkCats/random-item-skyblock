# run from alchemy/generator as/at @e[tag=ris.loot_generator]

summon item ~ ~0.4 ~ {Tags:["ris.blank_item","ris.spawned_item"],Item:{id:"minecraft:stone",count:1}}
execute as @n[type=item,tag=ris.blank_item] run function ris:alchemy/command/repeat_minecart/new_item