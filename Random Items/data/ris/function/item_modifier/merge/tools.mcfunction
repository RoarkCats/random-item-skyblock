data remove storage ris:generator Item
data modify storage ris:generator Item.tools append from storage ris:generator components[{has_durability:1b}]
execute store result score count ris.rng run data get storage ris:generator Item.tools[]
function ris:item_modifier/merge/tools_merge with storage ris:generator Item.tools[0]


execute unless data storage ris:generator components[{id:"tool_sword"}] run return 1

execute store result score in ris.rng run data get storage ris:generator components[{id:"tool_sword"}].attack_damage 10
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"tool_sword"}].attack_damage 10
function ris:item_modifier/merge/rng_range_add
# little -1 weight here if > the larger one bc these get powerful FAST
execute if score rng ris.rng > in1 ris.rng run scoreboard players remove rng ris.rng 10
execute store result storage ris:generator components[{id:"tool_sword"}].attack_damage float 0.1 run scoreboard players get rng ris.rng

execute store result score in ris.rng run data get storage ris:generator components[{id:"tool_sword"}].attack_speed 100
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"tool_sword"}].attack_speed 100
execute if score in ris.rng > in1 ris.rng run scoreboard players operation in ris.rng >< in1 ris.rng
execute store result score rng ris.rng run random value -10..10
scoreboard players operation rng ris.rng += in1 ris.rng
execute store result storage ris:generator components[{id:"tool_sword"}].attack_speed float 0.01 run scoreboard players get rng ris.rng