execute store result score rng ris.rng run random value 1..3

summon wandering_trader ~ ~ ~ {Tags:["ris.trader","ris.feature_trader","ris.new"],CustomName:'{"text":"Feature Trader"}',Offers:{Recipes:[]}}
execute as @n[type=wandering_trader,tag=ris.new] run function ris:alchemy/knowledge/jigsaw/trades

particle warped_spore ~ ~1 ~ 0.2 0.5 0.2 0 50
playsound entity.wandering_trader.reappeared neutral @a ~ ~ ~ 1 0.9
playsound block.pointed_dripstone.land neutral @a ~ ~ ~ 1 0.8

kill @s[type=item]