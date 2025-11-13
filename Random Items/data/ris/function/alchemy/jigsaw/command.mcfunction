function ris:alchemy/get_random_block
function ris:alchemy/jigsaw/command/replace with storage ris:random

playsound block.metal.place block @a ~ ~ ~ 2 0.9
playsound block.shroomlight.place block @a ~ ~ ~ 2 0.8
playsound block.vault.eject_item block @a ~ ~ ~ 2 0.8

kill @s[type=item]