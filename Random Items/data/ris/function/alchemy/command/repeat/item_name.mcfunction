tag @s remove ris.blank_item

loot replace entity @s contents loot ris:custom_items/all
item modify entity @s contents [{"function":"minecraft:set_name","entity":"this","target":"custom_name","name":[{"selector":"@s","color":"#bbbbbb"},{"text":" Generator","color":"white"}]}]
data modify storage ris:generator Item.item set from entity @s Item
data modify storage ris:generator Item.name set from storage ris:generator Item.item.components.minecraft:custom_name
data remove storage ris:generator Item.item.components.minecraft:custom_name

function ris:alchemy/command/repeat/summon_name with storage ris:generator Item

tag @s add ris.dead
kill @s