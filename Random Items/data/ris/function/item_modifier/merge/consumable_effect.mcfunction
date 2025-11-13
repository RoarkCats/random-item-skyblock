execute store result score in ris.rng run data get storage ris:generator components[{id:"consumable_effect"}].time 100
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"consumable_effect"}].time 100
execute if score in ris.rng > in1 ris.rng run scoreboard players operation in ris.rng >< in1 ris.rng
execute store result score rng ris.rng run random value -10..10
scoreboard players operation in ris.rng += rng ris.rng
execute store result storage ris:generator components[{id:"consumable_effect"}].time float 0.01 run scoreboard players get in ris.rng

execute store result score count ris.rng run data get storage ris:generator components_merge[{id:"consumable_effect"}].effects
function ris:item_modifier/merge/consumable_effect_merge with storage ris:generator components_merge[{id:"consumable_effect"}].effects[0]