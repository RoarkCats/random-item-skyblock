scoreboard players set #id ris.rng 0
scoreboard players set #temp0 ris.timer 7
execute positioned ~-3 ~-3 ~-3 run function ris:alchemy/jigsaw/structure/row_x

execute store result storage ris:random id int 1 run scoreboard players get #id ris.rng
function ris:alchemy/jigsaw/structure/replace_ids with storage ris:random

playsound block.metal.place block @a ~ ~ ~ 2 0.9
playsound block.shroomlight.place block @a ~ ~ ~ 2 1.0
playsound block.vault.eject_item block @a ~ ~ ~ 2 1.0

kill @s[type=item]