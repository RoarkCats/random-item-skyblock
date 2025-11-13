scoreboard players remove #temp ris.generator 1

particle white_smoke

execute positioned ^ ^ ^1 if block ^ ^ ^ #ris:debug_breakable align xyz positioned ~0.5 ~0.5 ~0.5 run function ris:alchemy/debug/fail_fx
execute if block ^ ^ ^1 #ris:debug_breakable run return run scoreboard players set #temp ris.generator -1
execute positioned ^ ^ ^1 unless block ^ ^ ^ #ris:fluid run return run function ris:custom_items/debug/debug

execute unless score #temp ris.generator matches 1.. run return run scoreboard players set #temp ris.generator -1
execute positioned ^ ^ ^1 run function ris:alchemy/debug/repeat/ray