execute as @e[type=skeleton_horse,tag=!ris.modified] run data merge entity @s {Tame:1}
execute as @e[type=zombie_horse,tag=!ris.modified] run data merge entity @s {Tame:1}

execute as @e[type=skeleton_horse,tag=!ris.modified] run tag @s add ris.modified
execute as @e[type=zombie_horse,tag=!ris.modified] run tag @s add ris.modified