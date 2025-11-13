$execute store result score in ris.rng run data get storage ris:generator components_merge[{id:$(id)}].speed 10
execute store result score in1 ris.rng run data get storage ris:generator Item.tools[0].speed 10
function ris:item_modifier/merge/rng_range_add
$execute store result storage ris:generator components[{id:$(id)}].speed float 0.1 run scoreboard players get rng ris.rng

data remove storage ris:generator Item.tools[0]
scoreboard players remove count ris.rng 1
execute if score count ris.rng matches 1.. run function ris:item_modifier/merge/tools_merge with storage ris:generator Item.tools[0]