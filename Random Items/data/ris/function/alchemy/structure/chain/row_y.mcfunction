# this is actually not as laggy as you'd think, with default settings & max size clone, each of these cmds takes maybe 0.04ms 
execute if block ~ ~ ~ #ris:holds_items run data remove block ~ ~ ~ Items
execute if block ~ ~ ~ #ris:holds_item run data remove block ~ ~ ~ item

scoreboard players remove #temp3 ris.timer 1
execute if score #temp3 ris.timer matches 0.. positioned ~ ~1 ~ run function ris:alchemy/structure/chain/row_y