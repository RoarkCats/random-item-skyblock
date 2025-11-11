advancement revoke @s only ris:gotta_spawn_em_all_trigger


execute if entity @e[distance=..12,tag=!ris.retagged] run scoreboard players add @s ris.gotta_spawn_em_all 1

execute if entity @s[advancements={ris:cute_and_cuddly=false}] if data entity @e[distance=..12,tag=!ris.retagged,nbt=!{Age:0},limit=1] Age run advancement grant @s only ris:cute_and_cuddly
execute if entity @s[advancements={ris:cute_and_cuddly=false}] if entity @e[distance=..12,tag=!ris.retagged,nbt={IsBaby:1b}] run advancement grant @s only ris:cute_and_cuddly