execute as @a if score @s risDeaths matches 1.. run scoreboard players set @s risDayswodying 0
execute as @a if score @s risDeaths matches 1.. run scoreboard players set @s risDeaths 0

scoreboard players add @a risTime 1
execute as @a if score @s risTime matches 24000 run scoreboard players add @s risDayswodying 1
execute as @a if score @s risTime matches 24000 run scoreboard players set @s risTime 0


execute as @a if score @s risUsed_disk matches 1 run advancement grant @s only ris:disk
execute as @a if score @s risDayswodying matches 7 run advancement grant @s only ris:hardcore
execute as @a if score @s risPedro matches 1 run advancement grant @s only ris:pedro