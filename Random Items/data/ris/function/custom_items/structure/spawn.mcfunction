function ris:custom_items/structure/get_structure
function ris:custom_items/structure/place with storage ris:random

scoreboard players set #clear_spawned_blocks ris.rng 48
function ris:custom_items/structure/clear_spawned_blocks

playsound block.anvil.land block @a ~ ~ ~ 2

kill @s[type=item]

execute on origin run advancement grant @s only ris:special/customized/pieces_of_a_whole structure_block