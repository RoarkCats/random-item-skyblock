title @s actionbar {"text":"Game Stopped","color":"red","bold":true}
playsound minecraft:block.anvil.land master @s ~ ~ ~ 20
playsound minecraft:block.anvil.land master @s ~ ~ ~ 20

execute at @e[type=armor_stand,tag=ris-p1] run setblock ~ ~-.5 ~ diamond_block
tag @e remove ris-p2
tag @a remove ris-tp

execute at @e[type=armor_stand,tag=ris-m1] run setblock ~ ~-.5 ~ diamond_block
tag @e remove ris-m2

scoreboard players set inGame risSkywars 0
scoreboard players set playerCount risSkywars 0
tag @a remove ris-dead