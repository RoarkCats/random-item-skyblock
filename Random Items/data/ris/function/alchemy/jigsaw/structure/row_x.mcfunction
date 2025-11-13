scoreboard players set #temp1 ris.timer 7
function ris:alchemy/jigsaw/structure/row_z

scoreboard players remove #temp0 ris.timer 1
execute if score #temp0 ris.timer matches 1.. positioned ~1 ~ ~ run function ris:alchemy/jigsaw/structure/row_x