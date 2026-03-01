scoreboard players reset #temp ris.timer

execute store result score in ris.rng run data get storage ris:generator components[{id:"consumable_food"}].time 100
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"consumable_food"}].time 100
execute if score in ris.rng > in1 ris.rng run scoreboard players operation in ris.rng >< in1 ris.rng
execute store result score rng ris.rng run random value -10..5
scoreboard players operation in ris.rng += rng ris.rng
execute if score in ris.rng matches ..-1 run scoreboard players set in ris.rng 0
execute store result storage ris:generator components[{id:"consumable_food"}].time float 0.01 run scoreboard players get in ris.rng

execute store result score in ris.rng run data get storage ris:generator components[{id:"consumable_food"}].food.nutrition 1
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"consumable_food"}].food.nutrition 1
function ris:item_modifier/merge/rng_range_add
execute store result storage ris:generator components[{id:"consumable_food"}].food.nutrition int 1 run scoreboard players get rng ris.rng
execute if score rng ris.rng matches 20.. run scoreboard players add #temp ris.timer 1

execute store result score in ris.rng run data get storage ris:generator components[{id:"consumable_food"}].food.saturation 1
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"consumable_food"}].food.saturation 1
function ris:item_modifier/merge/rng_range_add
execute store result storage ris:generator components[{id:"consumable_food"}].food.saturation int 1 run scoreboard players get rng ris.rng
execute if score rng ris.rng matches 20.. run scoreboard players add #temp ris.timer 1

execute unless score #temp ris.timer matches 2 run data modify storage ris:generator components[{id:"consumable_food"}].full set value 0b
execute if score #temp ris.timer matches 2 run data modify storage ris:generator components[{id:"consumable_food"}].full set value 1b

data modify storage ris:generator components[{id:"consumable_food"}].food.can_always_eat set from storage ris:generator components_merge[{id:"consumable_food"}].food.can_always_eat