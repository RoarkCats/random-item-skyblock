scoreboard players set #temp0 ris.timer 7
execute positioned ~-3 ~-3 ~-3 run function ris:alchemy/jigsaw/minecart/row_x

playsound block.metal.place block @a ~ ~ ~ 2 0.9
playsound block.shroomlight.place block @a ~ ~ ~ 2 1.3
playsound block.vault.eject_item block @a ~ ~ ~ 2 1.3

kill @s[type=item]