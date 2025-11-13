# run from alchemy/generator as/at @e[tag=ris.stack_generator]

summon item ~ ~0.4 ~ {Tags:["ris.blank_item","ris.spawned_item"],Item:{id:"minecraft:stone",count:1}}
data modify entity @n[type=item,tag=ris.blank_item] Item merge from entity @s Particle.item
tag @n[type=item,tag=ris.blank_item] remove ris.blank_item