execute store result score in ris.rng run data get storage ris:generator components[{id:"death_protection"}].effects[{id:"teleport"}].diameter 1
execute store result score in1 ris.rng run data get storage ris:generator components_merge[{id:"death_protection"}].effects[{id:"teleport"}].diameter 1
function ris:item_modifier/merge/rng_range_add
execute unless score rng ris.rng matches 0 store result storage ris:generator components[{id:"death_protection"}].effects[{id:"teleport",txt:"↔"}].diameter int 1 run scoreboard players get rng ris.rng

execute if data storage ris:generator components_merge[{id:"death_protection"}].effects[{id:"milk"}] unless data storage ris:generator components[{id:"death_protection"}].effects[{id:"milk"}] run data modify storage ris:generator components[{id:"death_protection"}].effects prepend value {id:"milk",txt:"🪣"}


data remove storage ris:generator components_merge[{id:"death_protection"}].effects[{id:"teleport"}]
data remove storage ris:generator components_merge[{id:"death_protection"}].effects[{id:"milk"}]
execute store result score count ris.rng run data get storage ris:generator components_merge[{id:"death_protection"}].effects
function ris:item_modifier/merge/death_protection_effect_merge with storage ris:generator components_merge[{id:"death_protection"}].effects[0]