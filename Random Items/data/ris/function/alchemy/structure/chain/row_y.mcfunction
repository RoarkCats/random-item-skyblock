# this is actually not as laggy as you'd think, with default settings & max size clone, each "if block run data remove" command takes maybe 0.04ms 

execute if score #success ris.rng matches 0 if block ~ ~ ~ #ris:holds_items_or_item run function ris:alchemy/structure/chain/container_scan_0
execute if score #success ris.rng matches 1 if block ~ ~ ~ #ris:holds_items_or_item run function ris:alchemy/structure/chain/container_scan_1

scoreboard players remove #temp3 ris.timer 1
execute if score #temp3 ris.timer matches 0.. positioned ~ ~1 ~ run function ris:alchemy/structure/chain/row_y