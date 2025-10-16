function ris:skywars/stop
stopsound @s master minecraft:block.anvil.land

title @s actionbar {"text":"All Games Reset","color":"dark_red","bold":true}
playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 20 0
playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 20 0

kill @e[type=armor_stand,tag=ris-p1]
kill @e[type=armor_stand,tag=ris-m1]
kill @e[type=armor_stand,tag=ris-g]