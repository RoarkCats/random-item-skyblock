# run by `/durability` as the temp item used for repairablity
loot replace entity @s contents loot ris:random_item
data modify storage ris:generator Item.components.minecraft:repairable.items set from entity @s Item.id

item modify entity @s contents {"function":"set_lore","entity":"this","mode":"append","lore":[[{"text":"Repairable - ","color":"gray","italic":false},{"selector":"@s"}]]}
data modify storage ris:generator components[{id:"durability"}].lore set from entity @s Item.components.minecraft:lore[-1]

kill @s