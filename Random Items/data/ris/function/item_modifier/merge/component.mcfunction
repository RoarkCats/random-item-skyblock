data modify storage ris:generator component set from storage ris:generator components[0].id

$execute store success score #combine ris.rng if data storage ris:generator components_merge[{id:$(id)}]
execute if data storage ris:generator {component:"level"} run scoreboard players set #combine ris.rng 5
$execute if score #combine ris.rng matches 1 run data modify storage ris:generator components_merge[{id:$(id)}].merged set value 1b
execute if data storage ris:generator {component:"durability"} run scoreboard players add #combine ris.rng 2
execute if data storage ris:generator {component:"lore"} run scoreboard players set #combine ris.rng 4
# $tellraw @a ["DEBUG - $(id) ",{"score":{"name": "#combine","objective": "ris.rng"}}]
execute if score #combine ris.rng matches 0 run data modify storage ris:generator components_merge append from storage ris:generator components[0]
execute if score #combine ris.rng matches 1.. run data modify storage ris:generator components append from storage ris:generator components[0]
data remove storage ris:generator components[0]

execute if score #combine ris.rng matches 1 run function ris:item_modifier/merge/level with storage ris:generator

execute if score #combine ris.rng matches 3 run function ris:item_modifier/merge/durability
execute if score #combine ris.rng matches 1 if data storage ris:generator components[-1].value run function ris:item_modifier/merge/attribute with storage ris:generator components[-1]

scoreboard players remove count ris.rng 1
execute if score count ris.rng matches 1.. run function ris:item_modifier/merge/component with storage ris:generator components[0]