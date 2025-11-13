scoreboard players set #temp ris.timer 0
execute store success score #temp ris.timer unless block ~ ~ ~ #ris:chain_repeat run setblock ~ ~ ~ chain_command_block[facing=up] destroy
execute if score #temp ris.timer matches 0 run return fail

execute align xyz run summon area_effect_cloud ~0.5 ~0.85 ~0.5 {Tags:["ris.super_multiplier"],Duration:2147000000,CustomName:'{"text":"Super Item Multiplier"}'}

playsound block.stone.place block @a ~ ~ ~ 1 0.8

kill @s[type=item]