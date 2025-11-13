# run as item at dispenser if it's #ris:cauldron_dispensable
execute at @s store result score #temp ris.timer run function ris:dispensable/get_cauldron_use
execute if score #temp ris.timer matches 0 run return fail


execute if score #temp ris.timer matches 1 at @s run function ris:dispensable/fill_cauldron
execute if score #temp ris.timer matches 1 run loot insert ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:item,name:glass_bottle}]}]}

execute if score #temp ris.timer matches 2 at @s run setblock ~ ~ ~ water_cauldron[level=3]
execute if score #temp ris.timer matches 3 at @s run setblock ~ ~ ~ lava_cauldron
execute if score #temp ris.timer matches 4 at @s run setblock ~ ~ ~ powder_snow_cauldron[level=3]
execute if score #temp ris.timer matches 2..4 run loot insert ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:item,name:bucket}]}]}

execute if score #temp ris.timer matches 5 at @s run function ris:dispensable/empty_cauldron
execute if score #temp ris.timer matches 5 run loot insert ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:item,name:potion,functions:[{function:set_potion,id:water}]}]}]}

execute if score #temp ris.timer matches 6..8 at @s run setblock ~ ~ ~ cauldron
execute if score #temp ris.timer matches 6 run loot insert ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:item,name:water_bucket}]}]}
execute if score #temp ris.timer matches 7 run loot insert ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:item,name:lava_bucket}]}]}
execute if score #temp ris.timer matches 8 run loot insert ~ ~ ~ loot {pools:[{rolls:1,entries:[{type:item,name:powder_snow_bucket}]}]}


execute if score #temp ris.timer matches 1 at @s run playsound item.bottle.empty block @a ~ ~ ~ 1 1
execute if score #temp ris.timer matches 2 at @s run playsound item.bucket.empty block @a ~ ~ ~ 1 1
execute if score #temp ris.timer matches 3 at @s run playsound item.bucket.empty_lava block @a ~ ~ ~ 1 1
execute if score #temp ris.timer matches 4 at @s run playsound item.bucket.empty_powder_snow block @a ~ ~ ~ 1 1
# for some reason dispensers don't make sound when filling the bucket, only emptying


execute if score #temp ris.timer matches 1..8 run kill @s[type=item]

execute if score #temp ris.timer matches 1..2 run advancement grant @p[distance=..16] only ris:alchemy/transmutation/auto_refill