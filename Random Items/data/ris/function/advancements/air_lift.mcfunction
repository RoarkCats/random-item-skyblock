scoreboard players set #temp ris.timer 0
execute on leasher run scoreboard players set #temp ris.timer 1
execute if score #temp ris.timer matches 0 run scoreboard players reset @p[scores={ris.air_lift=1..}] ris.air_lift
execute if score #temp ris.timer matches 0 run return run tag @s remove ris.air_lift

execute on passengers run scoreboard players set #temp ris.timer 2
execute if score #temp ris.timer matches 2 on leasher if entity @s[nbt={FallFlying:1b}] run return run scoreboard players add @s ris.air_lift 20

execute if predicate ris:boat_landed on leasher if score @s ris.air_lift matches 200.. if predicate ris:boat_landed run advancement grant @s only ris:ris/storage_solution/air_lift

execute on leasher run scoreboard players reset @s ris.air_lift