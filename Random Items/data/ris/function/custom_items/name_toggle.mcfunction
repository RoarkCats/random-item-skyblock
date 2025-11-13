execute if score generator_names ris.settings matches 1 run data merge entity @s {CustomNameVisible:1b}
execute if score generator_names ris.settings matches 1 run tag @s remove ris.name_hidden
execute if score generator_names ris.settings matches 1 run tag @s add ris.name_showing

execute if score generator_names ris.settings matches 0 run data merge entity @s {CustomNameVisible:0b}
execute if score generator_names ris.settings matches 0 run tag @s remove ris.name_showing
execute if score generator_names ris.settings matches 0 run tag @s add ris.name_hidden