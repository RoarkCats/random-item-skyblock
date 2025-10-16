execute as @a if score @s risDeaths matches 1.. run tag @s add ris-dead

scoreboard players set playerCount risSkywars 0
execute as @a[tag=!ris-dead] run scoreboard players add playerCount risSkywars 1

execute if score playerCount risSkywars matches 1 run function ris:skywars/end