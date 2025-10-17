function ris:skywars/stop
stopsound @s master block.anvil.land

execute at @e[tag=ris.p1] run setblock ~ ~-0.5 ~ air
execute at @e[tag=ris.m1] run setblock ~ ~-0.5 ~ air

title @s actionbar {"text":"Game Started","color":"green","bold":true}
playsound entity.player.levelup master @s ~ ~ ~ 16

execute as @e[tag=ris.p1,tag=!ris.p2,sort=random] at @s run function ris:skywars/tp

execute as @e[tag=ris.m1,tag=!ris.m2] at @s align xyz positioned ~0.5 ~-0.5 ~0.5 run function ris:custom_items/repeat/repeat
tag @e[tag=ris.m1,tag=!ris.m2] add ris.m2

scoreboard players set in_game ris.skywars 1