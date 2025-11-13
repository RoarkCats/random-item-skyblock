execute store result score rng ris.rng run random value 1..3

summon wandering_trader ~ ~ ~ {Tags:["ris.trader","ris.structure_trader","ris.new"],CustomName:'{"text":"Structure Trader"}',Offers:{Recipes:[]}}
execute as @n[type=wandering_trader,tag=ris.new] run function ris:alchemy/knowledge/structure/trades

particle warped_spore ~ ~1 ~ 0.2 0.5 0.2 0 50
playsound entity.wandering_trader.reappeared neutral @a ~ ~ ~ 1 0.9
playsound block.chain.break neutral @a ~ ~ ~ 1 0.9

kill @s[type=item]