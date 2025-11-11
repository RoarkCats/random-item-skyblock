# run as/at all generators from custom_items/main every tick

execute if score generator_names ris.settings matches 1 if entity @s[tag=!ris.name_showing] run function ris:custom_items/toggle_name
execute if score generator_names ris.settings matches 0 if entity @s[tag=!ris.name_hidden] run function ris:custom_items/toggle_name

execute unless block ~ ~-0.5 ~ repeating_command_block run return run kill @s