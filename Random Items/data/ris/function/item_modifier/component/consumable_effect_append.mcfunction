$data modify storage ris:generator Item.effect.txt set value '{"translate":"effect.minecraft.$(id)"}'
execute if score rng ris.rng matches 39..40 run data modify storage ris:generator Item.effect.txt set value "Milk"

$execute if score rng ris.rng matches 37..40 run return run data modify storage ris:generator components[{id:"consumable_effect"}].effects[{id:$(id)}] merge from storage ris:generator Item.effect

$execute store result score #temp ris.timer run data get storage ris:generator components[{id:"consumable_effect"}].effects[{id:$(id)}].duration
execute store result score rng ris.rng run random value 0..1
execute if score #temp ris.timer matches 1.. run scoreboard players add rng ris.rng 1
execute store result storage ris:generator Item.effect.amplifier int 1 run scoreboard players get rng ris.rng

execute store result score rng ris.rng run random value 20..2400
execute if score #temp ris.timer matches 1.. run scoreboard players operation rng ris.rng += #temp ris.timer
execute store result storage ris:generator Item.effect.duration int 1 run scoreboard players get rng ris.rng

$data modify storage ris:generator components[{id:"consumable_effect"}].effects[{id:$(id)}] merge from storage ris:generator Item.effect