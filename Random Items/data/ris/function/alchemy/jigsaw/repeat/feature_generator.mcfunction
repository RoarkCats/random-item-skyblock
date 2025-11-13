tag @s remove ris.generate


execute store result score rng ris.rng run data get entity @s Particle.item.components.minecraft:custom_data.ris.feature

execute if score rng ris.rng matches 39 run setblock ~ ~ ~ crimson_nylium
execute if score rng ris.rng matches 71 run setblock ~ ~ ~ air
execute if score rng ris.rng matches 78 run setblock ~ ~ ~ crimson_nylium
execute if score rng ris.rng matches 110..111 run setblock ~ ~ ~ netherrack
execute if score rng ris.rng matches 128 run setblock ~ ~ ~ air
execute if score rng ris.rng matches 130 run setblock ~ ~ ~ warped_nylium

execute positioned ~ ~1 ~ run function ris:custom_items/jigsaw/jigsaw
setblock ~ ~ ~ repeating_command_block[facing=up]


# playsound block.copper_bulb.place block @a ~ ~ ~ 1 0.5
playsound block.pointed_dripstone.land block @a ~ ~ ~ 1 0.5
playsound minecraft:block.wool.place block @a ~ ~ ~ 1 1.2