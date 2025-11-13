# get custom data from @s[type=item], store in `ris:generator components`

data modify storage ris:generator components set value []
execute store success score #temp ris.timer run data modify storage ris:generator components set from entity @s Item.components.minecraft:custom_data.ris.components

execute if data storage ris:generator components[{id:"durability"}] run data modify storage ris:generator components[{id:"durability"}].nbt.minecraft:damage set from entity @s Item.components.minecraft:damage
# store original lore for resetting when committing
execute if score #temp ris.timer matches 0 run data modify storage ris:generator components[{id:"lore"}].lore set from entity @s Item.components.minecraft:lore