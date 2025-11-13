scoreboard players set #temp ris.timer 0
execute store success score #temp ris.timer unless block ~ ~ ~ #ris:chain_repeat run setblock ~ ~ ~ repeating_command_block[facing=up] destroy
execute if score #temp ris.timer matches 0 run return fail

summon item ~ ~ ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
execute as @n[type=item,tag=ris.blank_item,distance=0] run function ris:alchemy/command/repeat/item_name

playsound block.stone.place block @a ~ ~ ~ 1 0.8

kill @s[type=item]