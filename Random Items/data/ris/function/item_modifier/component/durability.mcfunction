data remove storage ris:generator Item
data modify storage ris:generator Item.components.minecraft:damage set value 0

# default durability ranking: 32, 59, 131, 190, 250, 1561, 2031 (avg 608, range avg 1031)
execute store result score rng ris.rng run random value 32..250
execute if predicate {condition:random_chance,chance:0.4} store result score #temp ris.rng run random value 0..608
scoreboard players operation rng ris.rng += #temp ris.rng
execute if predicate {condition:random_chance,chance:0.4} store result score #temp ris.rng run random value 0..608
scoreboard players operation rng ris.rng += #temp ris.rng
# mixed uniform-binomial distr, (32-1466, avg 384)
execute store result score #temp ris.rng run data get storage ris:generator components[{id:"durability"}].nbt.minecraft:max_damage
execute unless score #temp ris.rng >= rng ris.rng store result storage ris:generator Item.components.minecraft:max_damage int 1 run scoreboard players get rng ris.rng

execute store result score rng ris.rng run random value 1..32
execute store result storage ris:generator Item.components.minecraft:enchantable.value int 1 run scoreboard players get rng ris.rng

summon item ~ ~ ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
execute as @n[type=item,tag=ris.blank_item] run function ris:item_modifier/component/durability_repair


data modify storage ris:generator components[{id:"durability"}].nbt set from storage ris:generator Item.components

# run by `tool_` & `equipment` functions