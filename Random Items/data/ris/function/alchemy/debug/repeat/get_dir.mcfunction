execute store result score #temp0 ris.timer run data get entity @s Motion[0] 10000
execute store result score #temp1 ris.timer run data get entity @s Motion[1] 10000
execute store result score #temp2 ris.timer run data get entity @s Motion[2] 10000

# get highest abs motion
scoreboard players operation #temp ris.generator = #temp0 ris.timer
scoreboard players operation #temp ris.generator > #temp1 ris.timer
scoreboard players operation #temp ris.generator > #temp2 ris.timer
scoreboard players operation #temp ris.timer = #temp0 ris.timer
scoreboard players operation #temp ris.timer < #temp1 ris.timer
scoreboard players operation #temp ris.timer < #temp2 ris.timer
scoreboard players operation #temp ris.timer *= #-1 ris.timer
scoreboard players operation #temp ris.generator > #temp ris.timer

# identify which highest motion dir
execute if score #temp ris.generator = #temp0 ris.timer run scoreboard players set @s ris.generator 0
execute if score #temp ris.generator = #temp1 ris.timer run scoreboard players set @s ris.generator 1
execute if score #temp ris.generator = #temp2 ris.timer run scoreboard players set @s ris.generator 2
scoreboard players operation #temp ris.generator *= #-1 ris.timer
execute if score #temp ris.generator = #temp0 ris.timer run scoreboard players set @s ris.generator 3
execute if score #temp ris.generator = #temp1 ris.timer run scoreboard players set @s ris.generator 4
execute if score #temp ris.generator = #temp2 ris.timer run scoreboard players set @s ris.generator 5