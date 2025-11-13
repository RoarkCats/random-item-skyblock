$execute if score #combine ris.rng matches 0 run data remove storage ris:generator components[{id:"level"}].levels[{id:$(component)}]
execute unless score #combine ris.rng matches 1 run return 0

$execute store result score #temp ris.timer run data get storage ris:generator components[{id:"level"}].levels[{id:$(component)}].level
$execute store result score #temp1 ris.timer run data get storage ris:generator components_merge[{id:"level"}].levels[{id:$(component)}].level
scoreboard players operation #temp ris.timer += #temp1 ris.timer
$execute store result storage ris:generator components[{id:"level"}].levels[{id:$(component)}].level int 1 run scoreboard players get #temp ris.timer