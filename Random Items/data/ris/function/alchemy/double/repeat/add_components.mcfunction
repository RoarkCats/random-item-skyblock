execute store result score rng1 ris.rng run random value 0..1000000
scoreboard players operation rng1 ris.rng %= weight ris.rng
execute store result storage ris:generator component int 1 run scoreboard players get rng1 ris.rng
function ris:alchemy/double/repeat/get_component with storage ris:generator

function ris:alchemy/double/repeat/component with storage ris:generator

scoreboard players remove count ris.rng 1
execute if score count ris.rng matches 1.. run function ris:alchemy/double/repeat/add_components