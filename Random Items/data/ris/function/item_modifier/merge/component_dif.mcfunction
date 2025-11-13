data modify storage ris:generator component set from storage ris:generator components_merge[0].id

execute store result score rng ris.rng run random value 1..100
execute store success score #combine ris.rng if score rng ris.rng <= component_merge_chance ris.settings

execute if data storage ris:generator {component:"lore"} run scoreboard players set #combine ris.rng 0
execute if data storage ris:generator {component:"level"} run scoreboard players set #combine ris.rng 2
execute if score #combine ris.rng matches 0 run function ris:item_modifier/merge/component_remove with storage ris:generator
function ris:item_modifier/merge/level with storage ris:generator
execute if data storage ris:generator {component:"durability"} run scoreboard players set #combine ris.rng 1
execute if score #combine ris.rng matches 1 run data modify storage ris:generator components append from storage ris:generator components_merge[0]
execute if score #combine ris.rng matches 2 run data modify storage ris:generator components_merge append from storage ris:generator components_merge[0]
data remove storage ris:generator components_merge[0]

scoreboard players remove count ris.rng 1
execute if score count ris.rng matches 1.. run function ris:item_modifier/merge/component_dif