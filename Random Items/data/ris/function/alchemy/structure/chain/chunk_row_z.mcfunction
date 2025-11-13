execute store result score #success ris.rng run forceload query ~ ~
execute unless score #success ris.rng matches 1 run function ris:alchemy/structure/chain/forceload_add

execute if score #temp2 ris.timer = #temp5 ris.timer run return 0
scoreboard players operation #temp2 ris.timer += #temp4 ris.timer
execute if score #temp4 ris.timer matches -1 positioned ~ ~ ~-16 run function ris:alchemy/structure/chain/chunk_row_z
execute if score #temp4 ris.timer matches 1 positioned ~ ~ ~16 run function ris:alchemy/structure/chain/chunk_row_z