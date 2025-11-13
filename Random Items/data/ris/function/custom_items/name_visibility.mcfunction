# run as all area_effect_cloud[tag=!ris.name_ignore] each tick

execute if entity @s[tag=!ris.name_hidden,tag=!ris.name_showing] unless data entity @s CustomName run return run tag @s add ris.name_ignore

execute if score generator_names ris.settings matches 1 if entity @s[tag=!ris.name_showing] run function ris:custom_items/name_toggle
execute if score generator_names ris.settings matches 0 if entity @s[tag=!ris.name_hidden] run function ris:custom_items/name_toggle