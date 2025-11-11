tag @e[tag=!ris.gen_off,tag=ris.generator,limit=1,sort=random] add ris.origin_item

execute as @e[tag=ris.generator,tag=ris.origin_item] at @s positioned ~ ~0.4 ~ run function ris:custom_items/repeat/dif_item
execute as @e[tag=ris.generator,tag=ris.origin_item] at @s positioned ~ ~0.4 ~ run data modify storage ris generator.Item set from entity @n[type=item,nbt={Age:0s}] Item

execute as @e[tag=!ris.gen_off,tag=ris.generator,tag=!ris.origin_item] at @s positioned ~ ~0.4 ~ run summon item ~ ~ ~ {Tags:["ris.spawned_item","ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
execute as @e[type=item,tag=ris.blank_item] run data modify entity @s Item merge from storage ris generator.Item

tag @e[type=item,tag=ris.blank_item] remove ris.blank_item
tag @e[tag=ris.generator,tag=ris.origin_item] remove ris.origin_item