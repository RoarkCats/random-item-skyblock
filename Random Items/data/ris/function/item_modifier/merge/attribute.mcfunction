execute store result score in ris.rng run data get storage ris:generator components[-1].value 100
$execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:$(id)}].value 100
function ris:item_modifier/merge/rng_range_add
execute store result storage ris:generator components[-1].value double 0.01 run scoreboard players get rng ris.rng