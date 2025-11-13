scoreboard players set #temp2 ris.timer 7
function ris:alchemy/jigsaw/structure/row_y

scoreboard players remove #temp1 ris.timer 1
execute if score #temp1 ris.timer matches 1.. positioned ~ ~ ~1 run function ris:alchemy/jigsaw/structure/row_z