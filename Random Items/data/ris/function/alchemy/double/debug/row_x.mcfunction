scoreboard players set #temp1 ris.timer 3
function ris:alchemy/double/debug/row_z

scoreboard players remove #temp0 ris.timer 1
execute if score #temp0 ris.timer matches 1.. positioned ~1 ~ ~ run function ris:alchemy/double/debug/row_x