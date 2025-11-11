# Generate trade (run from trader spawn as new trader)

data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone"},sell:{id:"minecraft:stone"}}


execute if score trader_special_items ris.settings matches 0 run loot spawn ~ ~ ~ loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1 run loot spawn ~ ~ ~ loot ris:random_item

data modify entity @s Offers.Recipes[-1].buy set from entity @n[type=item] Item

kill @n[type=item]


execute if score trader_special_items ris.settings matches 0 run loot spawn ~ ~ ~ loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1 run loot spawn ~ ~ ~ loot ris:random_item

data modify entity @s Offers.Recipes[-1].sell set from entity @n[type=item] Item

kill @n[type=item]