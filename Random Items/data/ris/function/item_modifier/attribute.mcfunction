# to be run with `component` set (to the attribute) in ris:generator

item modify entity @s contents ris:attribute_values
# Lag test:  Specific attribute modify w/ if data {like components} BEST, (this) 50% laggier, using temp entity 100% laggier
# BUT this one is the cleanest and the lag amounts are *really small* even with constant use (what's bad here is actually the below 2 lines)

$execute store result score #temp ris.timer run data get entity @s Item.components.minecraft:attribute_modifiers.modifiers[{id:"ris:rng",type:"minecraft:$(component)"}].amount 100
$execute store result score #temp1 ris.timer run data get storage ris:generator components[{id:$(component)}].value 100
scoreboard players operation #temp ris.timer += #temp1 ris.timer
$execute store result storage ris:generator components[{id:$(component)}].value double 0.01 run scoreboard players get #temp ris.timer

data remove entity @s Item.components.minecraft:attribute_modifiers.modifiers[{id:"ris:rng"}]