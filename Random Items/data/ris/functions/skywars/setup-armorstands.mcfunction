
execute as @e[tag=ris-p0] at @s run playsound minecraft:item.trident.hit master @a ~ ~ ~ 2 1
execute as @e[tag=ris-p0] at @s run particle minecraft:end_rod ~ ~.2 ~ 0 0.1 0 0 8 force
execute as @e[tag=ris-p0] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ris-p1"]}
execute as @e[tag=ris-p0] at @s run kill @s

execute as @e[tag=ris-m0] at @s run playsound minecraft:item.trident.hit master @a ~ ~ ~ 2 1
execute as @e[tag=ris-m0] at @s run particle minecraft:end_rod ~ ~.2 ~ 0 0.1 0 0 8 force
execute as @e[tag=ris-m0] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["ris-m1"]}
execute as @e[tag=ris-m0] at @s run kill @s