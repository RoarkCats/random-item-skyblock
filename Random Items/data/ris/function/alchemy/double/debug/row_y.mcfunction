execute unless block ~ ~ ~ #air run function ris:custom_items/debug/debug

scoreboard players remove #temp2 ris.timer 1
execute if score #temp2 ris.timer matches 1.. positioned ~ ~1 ~ run function ris:alchemy/double/debug/row_y