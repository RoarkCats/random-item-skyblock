$execute store result score #temp ris.timer run data get storage ris:generator components[{id:"death_protection"}].effects[{id:$(id)}].duration
execute store result score rng ris.rng run random value 0..2
execute if score #temp ris.timer matches 1.. run scoreboard players add rng ris.rng 1
execute store result storage ris:generator Item.effect.amplifier int 1 run scoreboard players get rng ris.rng

execute store result score rng ris.rng run random value 20..600
execute if score #temp ris.timer matches 1.. run scoreboard players operation rng ris.rng += #temp ris.timer
execute store result storage ris:generator Item.effect.duration int 1 run scoreboard players get rng ris.rng
execute if data storage ris:generator {Item:{effect:{id:"instant_health"}}} run data modify storage ris:generator Item.effect.duration set value 1

$data modify storage ris:generator components[{id:"death_protection"}].effects[{id:$(id)}] merge from storage ris:generator Item.effect