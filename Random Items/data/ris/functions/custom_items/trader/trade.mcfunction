# Generate trade (run from trader spawn as new trader)

execute if score trader_special_items ris.settings matches 0 run loot spawn ~ ~ ~ loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1 run loot spawn ~ ~ ~ loot ris:random_item

execute if score #trade ris.rng matches 0 run data modify entity @s Offers.Recipes[0].buy merge from entity @e[type=item,limit=1,sort=nearest] Item
execute if score #trade ris.rng matches 1 run data modify entity @s Offers.Recipes[1].buy merge from entity @e[type=item,limit=1,sort=nearest] Item
execute if score #trade ris.rng matches 2 run data modify entity @s Offers.Recipes[2].buy merge from entity @e[type=item,limit=1,sort=nearest] Item
execute if score #trade ris.rng matches 3 run data modify entity @s Offers.Recipes[3].buy merge from entity @e[type=item,limit=1,sort=nearest] Item

kill @e[type=item,limit=1,sort=nearest]


execute if score trader_special_items ris.settings matches 0 run loot spawn ~ ~ ~ loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1 run loot spawn ~ ~ ~ loot ris:random_item

execute if score #trade ris.rng matches 0 run data modify entity @s Offers.Recipes[0].sell merge from entity @e[type=item,limit=1,sort=nearest] Item
execute if score #trade ris.rng matches 1 run data modify entity @s Offers.Recipes[1].sell merge from entity @e[type=item,limit=1,sort=nearest] Item
execute if score #trade ris.rng matches 2 run data modify entity @s Offers.Recipes[2].sell merge from entity @e[type=item,limit=1,sort=nearest] Item
execute if score #trade ris.rng matches 3 run data modify entity @s Offers.Recipes[3].sell merge from entity @e[type=item,limit=1,sort=nearest] Item

kill @e[type=item,limit=1,sort=nearest]



scoreboard players add #trade ris.rng 1