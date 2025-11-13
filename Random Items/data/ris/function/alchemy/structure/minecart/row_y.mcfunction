function ris:alchemy/get_random_block
function ris:alchemy/structure/minecart/setblock with storage ris:random

scoreboard players remove #temp2 ris.timer 1
execute if score #temp2 ris.timer matches 1.. positioned ~ ~1 ~ run function ris:alchemy/structure/minecart/row_y