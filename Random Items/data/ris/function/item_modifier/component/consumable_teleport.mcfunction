data remove storage ris:generator Item

execute store result score rng ris.rng run random value 80..240
execute store result storage ris:generator components[{id:"consumable_teleport"}].time float 0.01 run scoreboard players get rng ris.rng

data modify storage ris:generator Item.components.minecraft:consumable.on_consume_effects prepend value {type:"teleport_randomly"}
execute store result score rng ris.rng run random value 1..64
execute store result storage ris:generator Item.components.minecraft:consumable.on_consume_effects[0].diameter int 1 run scoreboard players get rng ris.rng
data modify storage ris:generator components[{id:"consumable_teleport"}].effect merge from storage ris:generator Item.components.minecraft:consumable.on_consume_effects[0]

execute store result score rng ris.rng run random value 1..25
execute if predicate {"condition":"random_chance", "chance":0.66} store result storage ris:generator components[{id:"consumable_teleport"}].cooldown float 0.1 run scoreboard players get rng ris.rng