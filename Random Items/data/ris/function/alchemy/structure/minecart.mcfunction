scoreboard players set #temp0 ris.timer 5
execute positioned ~-2 ~-2 ~-2 run function ris:alchemy/structure/minecart/row_x

playsound block.vault.close_shutter block @a ~ ~ ~ 2 0.8
playsound block.shroomlight.place block @a ~ ~ ~ 2 1.3

kill @s[type=item]