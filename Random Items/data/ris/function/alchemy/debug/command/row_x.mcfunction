scoreboard players set #temp1 ris.timer 5
function ris:alchemy/debug/command/row_z

scoreboard players remove #temp0 ris.timer 1
execute if score #temp0 ris.timer matches 1.. positioned ~1 ~ ~ run function ris:alchemy/debug/command/row_x