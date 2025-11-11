function ris:skywars/stop
stopsound @s master block.anvil.land

title @s actionbar {"text":"All Games Reset","color":"dark_red","bold":true}
playsound entity.wither.hurt master @s ~ ~ ~ 16 0.8

execute as @e[tag=ris.p1] at @s run setblock ~ ~-0.5 ~ redstone_block
execute as @e[tag=ris.m1] at @s run setblock ~ ~-0.5 ~ redstone_block

kill @e[tag=ris.p1]
kill @e[tag=ris.m1]