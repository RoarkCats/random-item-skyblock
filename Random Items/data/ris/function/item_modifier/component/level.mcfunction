$execute store result score #temp ris.timer run data get storage ris:generator components[{id:"level"}].levels[{id:$(component)}].level
scoreboard players add #temp ris.timer 1
$execute store result storage ris:generator components[{id:"level"}].levels[{id:$(component)}].level int 1 run scoreboard players get #temp ris.timer