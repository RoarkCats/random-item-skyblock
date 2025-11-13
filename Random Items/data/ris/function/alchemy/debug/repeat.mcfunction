execute if block ~ ~ ~ #ris:chain_repeat run return fail
scoreboard players set #temp ris.timer 0
execute if score @s ris.generator matches 0 store success score #temp ris.timer run setblock ~ ~ ~ repeating_command_block[facing=east] destroy
execute if score @s ris.generator matches 1 store success score #temp ris.timer run setblock ~ ~ ~ repeating_command_block[facing=up] destroy
execute if score @s ris.generator matches 2 store success score #temp ris.timer run setblock ~ ~ ~ repeating_command_block[facing=south] destroy
execute if score @s ris.generator matches 3 store success score #temp ris.timer run setblock ~ ~ ~ repeating_command_block[facing=west] destroy
execute if score @s ris.generator matches 4 store success score #temp ris.timer run setblock ~ ~ ~ repeating_command_block[facing=down] destroy
execute if score @s ris.generator matches 5 store success score #temp ris.timer run setblock ~ ~ ~ repeating_command_block[facing=north] destroy
execute if score #temp ris.timer matches 0 run return fail

execute align xyz run summon area_effect_cloud ~0.5 ~0.85 ~0.5 {Tags:["ris.alchemy_generator","ris.block_miner_generator"],Duration:2147000000,CustomName:'{"text":"Block Miner"}'}
scoreboard players set @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] ris.generator 1

execute if score @s ris.generator matches 0 as @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] at @s run rotate @s facing ~1 ~ ~
execute if score @s ris.generator matches 1 as @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] at @s run rotate @s facing ~ ~1 ~
execute if score @s ris.generator matches 2 as @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] at @s run rotate @s facing ~ ~ ~1
execute if score @s ris.generator matches 3 as @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] at @s run rotate @s facing ~-1 ~ ~
execute if score @s ris.generator matches 4 as @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] at @s run rotate @s facing ~ ~-1 ~
execute if score @s ris.generator matches 5 as @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] at @s run rotate @s facing ~ ~ ~-1

playsound block.stone.place block @a ~ ~ ~ 1 0.8

kill @s[type=item]