scoreboard players set #temp ris.timer 1

execute store result score #temp3 ris.timer run data get entity @s Item.components.minecraft:custom_data.ris.pos.x
scoreboard players operation #temp3 ris.timer -= #temp0 ris.timer
execute if score #temp3 ris.timer matches ..-1 run scoreboard players operation #temp3 ris.timer *= #-1 ris.timer
execute store result entity @s Item.components.minecraft:custom_data.ris.pos.ox int 1 run scoreboard players get #temp3 ris.timer
scoreboard players add #temp3 ris.timer 1
scoreboard players operation #temp ris.timer *= #temp3 ris.timer

execute store result score #temp3 ris.timer run data get entity @s Item.components.minecraft:custom_data.ris.pos.y
scoreboard players operation #temp3 ris.timer -= #temp1 ris.timer
execute if score #temp3 ris.timer matches ..-1 run scoreboard players operation #temp3 ris.timer *= #-1 ris.timer
execute store result entity @s Item.components.minecraft:custom_data.ris.pos.oy int 1 run scoreboard players get #temp3 ris.timer
scoreboard players add #temp3 ris.timer 1
scoreboard players operation #temp ris.timer *= #temp3 ris.timer

execute store result score #temp3 ris.timer run data get entity @s Item.components.minecraft:custom_data.ris.pos.z
scoreboard players operation #temp3 ris.timer -= #temp2 ris.timer
execute if score #temp3 ris.timer matches ..-1 run scoreboard players operation #temp3 ris.timer *= #-1 ris.timer
execute store result entity @s Item.components.minecraft:custom_data.ris.pos.oz int 1 run scoreboard players get #temp3 ris.timer
scoreboard players add #temp3 ris.timer 1
scoreboard players operation #temp ris.timer *= #temp3 ris.timer

execute if score #temp ris.timer <= schematic_block_limit ris.settings run return 1
# should technically data remove the pos.o_ data if fail, but doesnt matter
return 0