title @s actionbar {"text":"Game Stopped","color":"red","bold":true}
playsound block.anvil.land master @s ~ ~ ~ 16

execute at @e[tag=ris.p1] run setblock ~ ~-0.5 ~ gold_block
tag @e[tag=ris.p2] remove ris.p2
tag @a[tag=ris.tp] remove ris.tp

execute at @e[tag=ris.m1] run setblock ~ ~-0.5 ~ diamond_block
tag @e[tag=ris.m2] remove ris.m2

scoreboard players set in_game ris.skywars 0
scoreboard players reset * ris.deaths