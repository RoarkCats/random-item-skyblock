$execute store result score in ris.rng run data get storage ris:generator components[{id:"enchantments"}].enchants[{id:"$(id)"}].level
$execute if score in ris.rng matches 0 run return run data modify storage ris:generator components[{id:"enchantments"}].enchants[{id:"$(id)"}].level set value $(level)
$scoreboard players set in1 ris.rng $(level)
function ris:item_modifier/merge/rng_range_add
execute if score rng ris.rng matches 11.. run scoreboard players set rng ris.rng 10
$execute store result storage ris:generator components[{id:"enchantments"}].enchants[{id:"$(id)"}].level int 1 run scoreboard players get rng ris.rng