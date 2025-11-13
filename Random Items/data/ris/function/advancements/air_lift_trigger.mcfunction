advancement revoke @s only ris:ris/storage_solution/air_lift_trigger
execute if entity @s[advancements={ris:ris/storage_solution/air_lift=true}] run return 0

execute as @e[type=#ris:chest_boat,distance=..10,tag=!ris.air_lift] if data entity @s leash run tag @s add ris.air_lift