# run by custom structure block items sold by trader

function ris:custom_items/structure/place with entity @s Item.components.minecraft:custom_data.ris

scoreboard players set #clear_spawned_blocks ris.rng 48
function ris:custom_items/structure/clear_spawned_blocks

playsound block.anvil.land block @a ~ ~ ~ 2 1.05

kill @s[type=item]