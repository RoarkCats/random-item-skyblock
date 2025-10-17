scoreboard players set #temp ris.timer 0
execute store success score #temp ris.timer unless block ~ ~ ~ #ris:chain_repeat run setblock ~ ~ ~ chain_command_block[facing=up] destroy

execute if score #temp ris.timer matches 1 if score generator_names ris.settings matches 1 run summon area_effect_cloud ~ ~0.85 ~ {Tags:["ris.multiplier","ris.name_showing"],Duration:2147000000,CustomNameVisible:1b,CustomName:'{"text":"Item Multiplier"}'}
execute if score #temp ris.timer matches 1 if score generator_names ris.settings matches 0 run summon area_effect_cloud ~ ~0.85 ~ {Tags:["ris.multiplier","ris.name_hidden"],Duration:2147000000,CustomNameVisible:0b,CustomName:'{"text":"Item Multiplier"}'}

execute if score #temp ris.timer matches 1 run playsound block.stone.place block @a ~ ~ ~ 1 0.8
execute if score #temp ris.timer matches 1 run kill @s[type=item]


execute if score #temp ris.timer matches 1 run advancement grant @p only ris:commander chain_command_block