execute store result score rng ris.rng run random value 1..3

summon wandering_trader ~ ~ ~ {Tags:["ris.trader","ris.stack_trader","ris.new"],CustomName:'{"text":"Stack Trader"}',Offers:{Recipes:[]}}
execute as @n[type=wandering_trader,tag=ris.new] run function ris:alchemy/knowledge/command/trades

particle warped_spore ~ ~1 ~ 0.2 0.5 0.2 0 50
playsound entity.wandering_trader.reappeared neutral @a ~ ~ ~ 1 0.9
summon firework_rocket ~ ~1 ~

kill @s[type=item]