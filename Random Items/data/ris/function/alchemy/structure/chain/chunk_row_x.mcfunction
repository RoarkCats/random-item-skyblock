scoreboard players operation #temp2 ris.timer = #temp ris.timer
function ris:alchemy/structure/chain/chunk_row_z

execute if score #temp0 ris.timer = #temp3 ris.timer run return 0
scoreboard players operation #temp0 ris.timer += #temp1 ris.timer
execute if score #temp1 ris.timer matches -1 positioned ~-16 ~ ~ run function ris:alchemy/structure/chain/chunk_row_x
execute if score #temp1 ris.timer matches 1 positioned ~16 ~ ~ run function ris:alchemy/structure/chain/chunk_row_x