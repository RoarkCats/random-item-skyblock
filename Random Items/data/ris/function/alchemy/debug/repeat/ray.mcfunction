# allow to redirect and pass through other block miners
execute if block ^ ^ ^ repeating_command_block if entity @n[tag=ris.block_miner_generator,distance=..0.5] rotated as @n[tag=ris.block_miner_generator,distance=..0.5] positioned ^ ^ ^1 run return run function ris:alchemy/debug/repeat/ray

scoreboard players remove #temp ris.generator 1

particle white_smoke

execute if block ^ ^ ^ #ris:debug_breakable align xyz positioned ~0.5 ~0.5 ~0.5 run function ris:alchemy/debug/fail_fx
execute if block ^ ^ ^ #ris:debug_breakable run return run scoreboard players set #temp ris.generator -1
execute unless block ^ ^ ^ #ris:fluid run return run function ris:alchemy/debug/repeat/mine

execute unless score #temp ris.generator matches 1.. run return run scoreboard players set #temp ris.generator -1
execute positioned ^ ^ ^1 run function ris:alchemy/debug/repeat/ray