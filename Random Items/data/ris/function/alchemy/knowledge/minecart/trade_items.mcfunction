execute if score trader_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1.. run loot replace entity @s contents loot ris:random_item

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].buy set from entity @s Item


loot replace entity @s contents loot ris:loot/chests/all_container
data modify storage ris:random loot_table set string entity @s Item.components.minecraft:container_loot.loot_table 17
item modify entity @s contents [{"function":"set_lore","entity":"this","lore":[[{"text":"Loot Table: ","italic":false,"color":"gray"},{"nbt":"loot_table","storage":"ris:random"}]],"mode":"append"}]

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].sell set from entity @s Item



kill @s[type=item]