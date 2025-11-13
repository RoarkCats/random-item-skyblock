# run by custom jigsaw items sold by trader

execute store result score rng ris.rng run data get entity @s Item.components.minecraft:custom_data.ris.feature
tag @s[type=item] add ris.feature_generator
function ris:custom_items/jigsaw/jigsaw

playsound block.pointed_dripstone.land block @a ~ ~ ~ 2 0.7

kill @s[type=item]