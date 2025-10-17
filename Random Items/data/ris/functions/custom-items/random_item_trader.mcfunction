scoreboard players set in risRNG 0
scoreboard players set in1 risRNG 2
function ris:rng/range_lcg

execute if score out risRNG matches 0 run summon wandering_trader ~ ~ ~ {Tags:["risTrader"],CustomName:'{"text":"Random Item Trader"}',Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647}]}}
execute if score out risRNG matches 1 run summon wandering_trader ~ ~ ~ {Tags:["risTrader"],CustomName:'{"text":"Random Item Trader"}',Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647}]}}
execute if score out risRNG matches 2 run summon wandering_trader ~ ~ ~ {Tags:["risTrader"],CustomName:'{"text":"Random Item Trader"}',Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647}]}}



execute if score traderSpecialItems risSettings matches 0 run loot spawn ~ ~ ~ loot ris:all_items
execute if score traderSpecialItems risSettings matches 1 run loot spawn ~ ~ ~ loot ris:random_item
data modify entity @e[tag=risTrader,limit=1,sort=nearest] Offers.Recipes[0].buy merge from entity @e[type=item,limit=1,sort=nearest] Item
kill @e[type=item,limit=1,sort=nearest]

execute if score traderSpecialItems risSettings matches 0 run loot spawn ~ ~ ~ loot ris:all_items
execute if score traderSpecialItems risSettings matches 1 run loot spawn ~ ~ ~ loot ris:random_item
data modify entity @e[tag=risTrader,limit=1,sort=nearest] Offers.Recipes[0].sell merge from entity @e[type=item,limit=1,sort=nearest] Item
kill @e[type=item,limit=1,sort=nearest]


execute if score traderSpecialItems risSettings matches 0 run loot spawn ~ ~ ~ loot ris:all_items
execute if score traderSpecialItems risSettings matches 1 run loot spawn ~ ~ ~ loot ris:random_item
data modify entity @e[tag=risTrader,limit=1,sort=nearest] Offers.Recipes[1].buy merge from entity @e[type=item,limit=1,sort=nearest] Item
kill @e[type=item,limit=1,sort=nearest]

execute if score traderSpecialItems risSettings matches 0 run loot spawn ~ ~ ~ loot ris:all_items
execute if score traderSpecialItems risSettings matches 1 run loot spawn ~ ~ ~ loot ris:random_item
data modify entity @e[tag=risTrader,limit=1,sort=nearest] Offers.Recipes[1].sell merge from entity @e[type=item,limit=1,sort=nearest] Item
kill @e[type=item,limit=1,sort=nearest]


execute if score traderSpecialItems risSettings matches 0 run loot spawn ~ ~ ~ loot ris:all_items
execute if score traderSpecialItems risSettings matches 1 run loot spawn ~ ~ ~ loot ris:random_item
data modify entity @e[tag=risTrader,limit=1,sort=nearest] Offers.Recipes[2].buy merge from entity @e[type=item,limit=1,sort=nearest] Item
kill @e[type=item,limit=1,sort=nearest]

execute if score traderSpecialItems risSettings matches 0 run loot spawn ~ ~ ~ loot ris:all_items
execute if score traderSpecialItems risSettings matches 1 run loot spawn ~ ~ ~ loot ris:random_item
execute if score out risRNG matches 1.. run data modify entity @e[tag=risTrader,limit=1,sort=nearest] Offers.Recipes[2].sell merge from entity @e[type=item,limit=1,sort=nearest] Item
kill @e[type=item,limit=1,sort=nearest]


execute if score traderSpecialItems risSettings matches 0 run loot spawn ~ ~ ~ loot ris:all_items
execute if score traderSpecialItems risSettings matches 1 run loot spawn ~ ~ ~ loot ris:random_item
data modify entity @e[tag=risTrader,limit=1,sort=nearest] Offers.Recipes[3].buy merge from entity @e[type=item,limit=1,sort=nearest] Item
kill @e[type=item,limit=1,sort=nearest]

execute if score traderSpecialItems risSettings matches 0 run loot spawn ~ ~ ~ loot ris:all_items
execute if score traderSpecialItems risSettings matches 1 run loot spawn ~ ~ ~ loot ris:random_item
execute if score out risRNG matches 2.. run data modify entity @e[tag=risTrader,limit=1,sort=nearest] Offers.Recipes[3].sell merge from entity @e[type=item,limit=1,sort=nearest] Item
kill @e[type=item,limit=1,sort=nearest]



tag @e[tag=risTrader] remove risTrader
kill @s[type=item]

particle warped_spore ~ ~1 ~ 0.2 0.5 0.2 0 100
playsound minecraft:entity.wandering_trader.reappeared master @a ~ ~ ~ 1 1.1