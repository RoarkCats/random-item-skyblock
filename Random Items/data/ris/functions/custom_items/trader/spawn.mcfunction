scoreboard players set in ris.rng 0
scoreboard players set in1 ris.rng 2
function ris:rng/range_lcg


execute if score out ris.rng matches 0 run summon wandering_trader ~ ~ ~ {Tags:["ris.trader"],CustomName:'{"text":"Random Item Trader"}',Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647}]}}
execute if score out ris.rng matches 1 run summon wandering_trader ~ ~ ~ {Tags:["ris.trader"],CustomName:'{"text":"Random Item Trader"}',Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647}]}}
execute if score out ris.rng matches 2 run summon wandering_trader ~ ~ ~ {Tags:["ris.trader"],CustomName:'{"text":"Random Item Trader"}',Offers:{Recipes:[{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647},{rewardExp:0b,maxUses:2147483647}]}}

scoreboard players set #trade ris.rng 0
execute as @e[type=wandering_trader,tag=ris.trader,limit=1,sort=nearest] run function ris:custom_items/trader/trades


tag @e[tag=ris.trader] remove ris.trader
kill @s[type=item]

particle warped_spore ~ ~1 ~ 0.2 0.5 0.2 0 100
playsound entity.wandering_trader.reappeared neutral @a ~ ~ ~ 1 1.1

advancement grant @p only ris:intriguing_deals