execute store result entity @s data.id int 1 run scoreboard players get #id ris.rng

data modify storage ris:random pos.x set from entity @s Pos[0]
data modify storage ris:random pos.y set from entity @s Pos[1]
data modify storage ris:random pos.z set from entity @s Pos[2]
# tried optimizing with a set coord clone cmd, wasn't better
function ris:alchemy/jigsaw/structure/compare with storage ris:random pos

tag @s add ris.block_shift