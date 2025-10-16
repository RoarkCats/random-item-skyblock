execute as @e[type=skeleton_horse,tag=!RISmodified] run data merge entity @s {Tame:1}
execute as @e[type=zombie_horse,tag=!RISmodified] run data merge entity @s {Tame:1}

execute as @e[type=skeleton_horse,tag=!RISmodified] run tag @s add RISmodified
execute as @e[type=zombie_horse,tag=!RISmodified] run tag @s add RISmodified