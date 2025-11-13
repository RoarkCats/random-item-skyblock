execute store result score count ris.rng run random value 6..12

scoreboard players reset #hint ris.alchemy_hint

summon wandering_trader ~ ~ ~ {Tags:["ris.trader","ris.super_trader","ris.new"],CustomName:'{"text":"Super Item Trader"}',Offers:{Recipes:[]}}
execute as @n[type=wandering_trader,tag=ris.new] run function ris:custom_items/trader/trades

particle warped_spore ~ ~1 ~ 0.2 0.5 0.2 0 50
playsound entity.wandering_trader.reappeared neutral @a ~ ~ ~ 1 1.2
playsound block.enchantment_table.use neutral @a ~ ~ ~ 1 0.9

kill @s[type=item]