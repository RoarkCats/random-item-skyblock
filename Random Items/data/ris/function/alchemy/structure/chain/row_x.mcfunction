scoreboard players operation #temp ris.timer = #temp2 ris.timer
function ris:alchemy/structure/chain/row_z

scoreboard players remove #temp0 ris.timer 1
execute if score #temp0 ris.timer matches 0.. positioned ~1 ~ ~ run function ris:alchemy/structure/chain/row_x