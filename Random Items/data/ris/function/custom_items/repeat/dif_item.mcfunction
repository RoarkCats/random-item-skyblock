summon item ~ ~ ~ {Tags:["ris.spawned_item","ris.blank_item"],Item:{id:"minecraft:stone",count:1}}

loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:random_item
execute if score same_items ris.settings matches 1 run tag @n[type=item,tag=ris.blank_item] add ris.origin_item

tag @n[type=item,tag=ris.blank_item] remove ris.blank_item