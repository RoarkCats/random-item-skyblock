# align to chunk via precision loss hack, fill 3x3x3 chunks
execute positioned ~29999992 ~-8 ~29999992 positioned ~108086391056891904 ~108086391056891904 ~108086391056891904 positioned ~-108086391056891904 ~-108086391056891904 ~-108086391056891904 positioned ~-30000000 ~ ~-30000000 run function ris:alchemy/double/jigsaw/fill_chunks


playsound item.dye.use block @a ~ ~ ~ 2 0.7
playsound item.bottle.fill_dragonbreath block @a ~ ~ ~ 2 0.8
playsound block.sculk.spread block @a ~ ~ ~ 2 0.6
playsound block.sculk_sensor.clicking_stop block @a ~ ~ ~ 2 0.8
kill @s[type=item]