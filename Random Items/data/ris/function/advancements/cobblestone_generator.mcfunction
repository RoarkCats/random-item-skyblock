# Run once a second as all players without the `cobblestone_generator` advancement

execute unless score @s ris.mined_cobblestone matches 1.. unless score @s ris.mined_stone matches 1.. run return 0


execute unless entity @e[type=marker,tag=ris.cobble_gen,distance=..4] run summon marker ~ ~ ~ {Tags:["ris.cobble_gen"]}

execute if score @s ris.mined_cobblestone matches 1.. run scoreboard players operation @n[type=marker,tag=ris.cobble_gen,distance=..4] ris.mined_cobblestone += @s ris.mined_cobblestone
execute if score @s ris.mined_stone matches 1.. run scoreboard players operation @n[type=marker,tag=ris.cobble_gen,distance=..4] ris.mined_cobblestone += @s ris.mined_stone

execute if score @n[type=marker,tag=ris.cobble_gen,distance=..4] ris.mined_cobblestone matches 32.. run advancement grant @s only ris:cobblestone_generator

scoreboard players reset @s ris.mined_cobblestone
scoreboard players reset @s ris.mined_stone