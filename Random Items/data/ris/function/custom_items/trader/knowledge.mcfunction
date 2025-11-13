execute store result score count ris.rng run random value 2..4

execute on origin run function ris:alchemy/book/hint

summon wandering_trader ~ ~ ~ {Tags:["ris.trader","ris.new"],CustomName:'{"text":"Item Trader"}',Offers:{Recipes:[]}}
execute as @n[type=wandering_trader,tag=ris.new] run function ris:custom_items/trader/trades

particle warped_spore ~ ~1 ~ 0.2 0.5 0.2 0 50
playsound entity.wandering_trader.reappeared neutral @a ~ ~ ~ 1 1.1

execute on origin run advancement grant @s only ris:special/customized/intriguing_deals

kill @s[type=item]