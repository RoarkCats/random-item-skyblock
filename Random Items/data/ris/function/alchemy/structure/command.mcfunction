function ris:alchemy/get_random_block
function ris:alchemy/structure/command/check_special with storage ris:random

execute if score #smaller ris.rng matches 1 run function ris:alchemy/structure/command/fill_cube_smaller with storage ris:random
execute unless score #smaller ris.rng matches 1 run function ris:alchemy/structure/command/fill_cube with storage ris:random

playsound block.vault.close_shutter block @a ~ ~ ~ 2 0.6
playsound block.shroomlight.place block @a ~ ~ ~ 2 0.9

kill @s[type=item]