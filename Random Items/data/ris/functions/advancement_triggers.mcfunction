execute as @a if score @s risdeaths matches 1.. run scoreboard players set @s risdayswodying 0
execute as @a if score @s risdeaths matches 1.. run scoreboard players set @s risdeaths 0

scoreboard players add @a ristime 1
execute as @a if score @s ristime matches 24000 run scoreboard players add @s risdayswodying 1
execute as @a if score @s ristime matches 24000 run scoreboard players set @s ristime 0



execute as @a if score @s risused_disk matches 1 run advancement grant @s only ris:disk
execute as @a if score @s risdayswodying matches 7 run advancement grant @s only ris:hardcore
execute as @a if score @s rispedro matches 1 run advancement grant @s only ris:pedro