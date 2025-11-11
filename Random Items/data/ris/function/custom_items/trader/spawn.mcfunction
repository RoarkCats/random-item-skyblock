summon wandering_trader ~ ~ ~ {Tags:["ris.trader"],CustomName:'{"text":"Random Item Trader"}',Offers:{Recipes:[]}}

execute if score op_cmd ris.settings matches 0 store result score rng ris.rng run random value 2..4
execute if score op_cmd ris.settings matches 1 store result score rng ris.rng run random value 3..5

execute as @n[type=wandering_trader,tag=ris.trader] run function ris:custom_items/trader/trades


tag @e[type=wandering_trader,tag=ris.trader] remove ris.trader
kill @s[type=item]

particle warped_spore ~ ~1 ~ 0.2 0.5 0.2 0 100
playsound entity.wandering_trader.reappeared neutral @a ~ ~ ~ 1 1.1

execute on origin run advancement grant @s only ris:intriguing_deals