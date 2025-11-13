execute unless block ~ ~ ~ #air unless block ~ ~ ~ #ris:debug_breakable run function ris:custom_items/debug/debug
execute if block ~ ~ ~ #ris:debug_breakable align xyz positioned ~0.5 ~0.5 ~0.5 run function ris:alchemy/debug/fail_fx

scoreboard players remove #temp2 ris.timer 1
execute if score #temp2 ris.timer matches 1.. positioned ~ ~1 ~ run function ris:alchemy/debug/command/row_y