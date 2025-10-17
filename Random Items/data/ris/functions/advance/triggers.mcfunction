execute as @a at @s store result score @s risYPos run data get entity @s Pos[1]
execute as @a[scores={risYPos=..1},nbt={OnGround:1b}] run advancement grant @s only ris:sweaty_palms

execute as @a if score @s risUsed_disk matches 1 run advancement grant @s only ris:disk
execute as @a if score @s risDayswodying matches 168000 run advancement grant @s only ris:hardcore
execute as @a if score @s risPedro matches 1 run advancement grant @s only ris:pedro