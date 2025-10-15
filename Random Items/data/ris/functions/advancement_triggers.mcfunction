execute as @r if score @s deaths matches 1.. run scoreboard players set @s dayswodying 0
execute as @r if score @s deaths matches 1.. run scoreboard players set @s deaths 0

scoreboard players add server ristime 1
execute if score server ristime matches 24000 run scoreboard players add @a dayswodying 1
execute if score server ristime matches 24000 run scoreboard players set server ristime 0



execute as @a if score @s used_disk matches 1 run advancement grant @s only ris:disk
execute as @a if score @s dayswodying matches 7 run advancement grant @s only ris:hardcore
execute as @a if score @s pedro matches 1 run advancement grant @s only ris:pedro