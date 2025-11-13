execute store result score in ris.rng run data get storage ris:generator components[{id:"consumable_teleport"}].time 100
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"consumable_teleport"}].time 100
execute if score in ris.rng > in1 ris.rng run scoreboard players operation in ris.rng >< in1 ris.rng
execute store result score rng ris.rng run random value -10..10
scoreboard players operation in ris.rng += rng ris.rng
execute store result storage ris:generator components[{id:"consumable_teleport"}].time float 0.01 run scoreboard players get in ris.rng

execute store result score in ris.rng run data get storage ris:generator components[{id:"consumable_teleport"}].effect.diameter 1
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"consumable_teleport"}].effect.diameter 1
function ris:item_modifier/merge/rng_range_add
execute store result storage ris:generator components[{id:"consumable_teleport"}].effect.diameter int 1 run scoreboard players get rng ris.rng

execute store result score in ris.rng run data get storage ris:generator components[{id:"consumable_teleport"}].cooldown 10
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"consumable_teleport"}].cooldown 10
scoreboard players operation in ris.rng += in1 ris.rng
scoreboard players operation in ris.rng /= #2 ris.timer
execute unless score in ris.rng matches 0 store result storage ris:generator components[{id:"consumable_teleport"}].cooldown float 0.1 run scoreboard players get in ris.rng