data remove storage ris:generator Item

execute store result score rng ris.rng run random value 0..7
execute store result storage ris:generator Item.components.minecraft:food.nutrition int 1 run scoreboard players get rng ris.rng
execute store result score rng ris.rng run random value 0..11
execute store result storage ris:generator Item.components.minecraft:food.saturation int 1 run scoreboard players get rng ris.rng
execute if predicate {"condition":"random_chance", "chance":0.33} run data modify storage ris:generator Item.components.minecraft:food.can_always_eat set value true
data modify storage ris:generator components[{id:"consumable_food"}].full set value 0b

execute store result score rng ris.rng run random value 80..240
execute store result storage ris:generator components[{id:"consumable_food"}].time float 0.01 run scoreboard players get rng ris.rng

data modify storage ris:generator components[{id:"consumable_food"}].food merge from storage ris:generator Item.components.minecraft:food