execute if block ~ ~ ~ brown_mushroom_block run advancement grant @s only ris:ris/mycologist brown_mushroom
execute if block ~ ~ ~ red_mushroom_block run advancement grant @s only ris:ris/mycologist red_mushroom

execute unless block ~ ~ ~ #ris:mushroom_blocks positioned ^ ^ ^0.5 run function ris:advancements/mycologist_raycast
execute if block ~ ~ ~ mushroom_stem positioned ~ ~1 ~ run function ris:advancements/mycologist_raycast