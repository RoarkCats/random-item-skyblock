$execute store result score in ris.rng run data get storage ris:generator components[{id:"consumable_effect"}].effects[{id:$(id)}].duration
scoreboard players operation #temp ris.timer = in ris.rng
$execute unless score #temp ris.timer matches 0 run scoreboard players set in1 ris.rng $(duration)
execute unless score #temp ris.timer matches 0 run function ris:item_modifier/merge/rng_range_add
execute unless score #temp ris.timer matches 0 run scoreboard players operation rng ris.rng *= #125 ris.timer
execute unless score #temp ris.timer matches 0 run scoreboard players operation rng ris.rng /= #100 ris.timer
execute unless score #temp ris.timer matches 0 if score rng ris.rng matches 24000.. run scoreboard players set rng ris.rng 24000
$execute unless score #temp ris.timer matches 0 store result storage ris:generator components[{id:"consumable_effect"}].effects[{id:$(id)}].duration int 1 run scoreboard players get rng ris.rng

$execute unless score #temp ris.timer matches 0 store result score in ris.rng run data get storage ris:generator components[{id:"consumable_effect"}].effects[{id:$(id)}].amplifier
$execute unless score #temp ris.timer matches 0 run scoreboard players set in1 ris.rng $(amplifier)
execute unless score #temp ris.timer matches 0 if score in ris.rng matches 0 if score in1 ris.rng matches 0 run scoreboard players add in1 ris.rng 1
execute unless score #temp ris.timer matches 0 run function ris:item_modifier/merge/rng_range_add
execute unless score #temp ris.timer matches 0 if score rng ris.rng matches 4.. run scoreboard players set rng ris.rng 4
$execute unless score #temp ris.timer matches 0 store result storage ris:generator components[{id:"consumable_effect"}].effects[{id:$(id)}].amplifier int 1 run scoreboard players get rng ris.rng

execute if score #temp ris.timer matches 0 run data modify storage ris:generator components[{id:"consumable_effect"}].effects append from storage ris:generator components_merge[{id:"consumable_effect"}].effects[0]


data remove storage ris:generator components_merge[{id:"consumable_effect"}].effects[0]
scoreboard players remove count ris.rng 1
execute if score count ris.rng matches 1.. run function ris:item_modifier/merge/consumable_effect_merge with storage ris:generator components_merge[{id:"consumable_effect"}].effects[0]