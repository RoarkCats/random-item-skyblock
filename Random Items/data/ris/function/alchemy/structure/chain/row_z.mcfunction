scoreboard players operation #temp3 ris.timer = #temp1 ris.timer
function ris:alchemy/structure/chain/row_y

scoreboard players remove #temp ris.timer 1
execute if score #temp ris.timer matches 0.. positioned ~ ~ ~1 run function ris:alchemy/structure/chain/row_z