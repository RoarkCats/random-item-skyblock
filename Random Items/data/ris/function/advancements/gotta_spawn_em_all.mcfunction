advancement revoke @s only ris:ris/curious_creatures/gotta_spawn_em_all_trigger


execute if entity @n[type=#ris:spawnable,tag=!ris.spawnable_old,distance=..12] run scoreboard players add @s ris.gotta_spawn_em_all 1

execute if entity @s[advancements={ris:ris/curious_creatures/cute_and_cuddly=false}] if data entity @n[type=#ris:spawnable,tag=!ris.spawnable_old,distance=..12,nbt=!{Age:0}] Age run advancement grant @s only ris:ris/curious_creatures/cute_and_cuddly
execute if entity @s[advancements={ris:ris/curious_creatures/cute_and_cuddly=false}] if entity @n[type=#ris:spawnable,tag=!ris.spawnable_old,distance=..12,nbt={IsBaby:1b}] run advancement grant @s only ris:ris/curious_creatures/cute_and_cuddly