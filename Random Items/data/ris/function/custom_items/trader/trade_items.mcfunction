execute if score trader_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1.. run loot replace entity @s contents loot ris:random_item

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].buy set from entity @s Item


execute if score trader_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1.. run loot replace entity @s contents loot ris:random_item

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].sell set from entity @s Item

execute if score trader_special_items ris.settings matches 2 if items entity @s contents *[custom_data~{ris:{custom_item:1b}}] store result entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].maxUses int 1 run scoreboard players get cmd_special_items ris.settings


kill @s[type=item]