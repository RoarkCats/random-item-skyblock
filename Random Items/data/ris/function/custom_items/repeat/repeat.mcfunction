scoreboard players set #temp ris.timer 0
execute store success score #temp ris.timer unless block ~ ~ ~ #ris:chain_repeat run setblock ~ ~ ~ repeating_command_block[facing=up] destroy
execute if score #temp ris.timer matches 0 run return fail

execute align xyz run summon area_effect_cloud ~0.5 ~0.85 ~0.5 {Tags:["ris.generator"],Duration:2147000000,CustomName:'{"text":"Item Generator"}'}

playsound block.stone.place block @a ~ ~ ~ 1 0.8
kill @s[type=item]

execute on origin run advancement grant @s only ris:special/customized/commander repeating_command_block
execute store result score #temp ris.timer if entity @e[tag=ris.generator,distance=..32]
execute if score #temp ris.timer matches 10.. run advancement grant @a[distance=..64,gamemode=!spectator] only ris:special/customized/commander/item_farm
execute if score #temp ris.timer matches 50.. run advancement grant @a[distance=..64,gamemode=!spectator] only ris:special/customized/commander/item_factory