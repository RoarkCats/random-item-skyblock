scoreboard players set #temp0 ris.timer 3
execute positioned ~-1 ~-1 ~-1 run function ris:alchemy/double/debug/row_x

playsound entity.generic.explode block @a ~ ~ ~ 1 1.2
playsound block.anvil.break block @a ~ ~ ~ 2
execute align xyz run particle explosion ~.5 ~.5 ~.5 1 1 1 0 5

kill @s[type=item]