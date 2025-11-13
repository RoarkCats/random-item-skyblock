scoreboard players set #temp ris.timer 0
execute store success score #temp ris.timer unless block ~ ~ ~ #ris:chain_repeat run setblock ~ ~ ~ chain_command_block[facing=up] destroy
execute if score #temp ris.timer matches 0 run return fail

execute align xyz run summon area_effect_cloud ~0.5 ~0.85 ~0.5 {Tags:["ris.stack_gambler"],Duration:2147000000,CustomName:'{"text":"Stack Gambler"}'}

playsound block.stone.place block @a ~ ~ ~ 1 0.8
playsound gsfx:gambling_start block @a ~ ~ ~ 1 1

kill @s[type=item]