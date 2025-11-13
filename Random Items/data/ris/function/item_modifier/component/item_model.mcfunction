# 1388 items possible, inject missing texture and invisible models
execute store result score rng ris.rng run random value 0..1389
execute if score rng ris.rng matches 0 run return run data modify storage ris:generator components[{id:"item_model"}].item_model set value ""
execute if score rng ris.rng matches 1 run return run data modify storage ris:generator components[{id:"item_model"}].item_model set value "minecraft:air"


summon item ~ ~ ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:random_item

data modify storage ris:generator components[{id:"item_model"}].item_model set from entity @n[type=item,tag=ris.blank_item] Item.id

kill @n[type=item,tag=ris.blank_item]