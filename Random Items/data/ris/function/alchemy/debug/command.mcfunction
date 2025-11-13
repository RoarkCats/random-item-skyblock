scoreboard players set #temp0 ris.timer 5
execute positioned ~-2 ~-2 ~-2 run function ris:alchemy/debug/command/row_x

playsound entity.generic.explode block @a ~ ~ ~ 1 0.9
playsound block.anvil.break block @a ~ ~ ~ 2 0.7
execute align xyz run particle explosion ~.5 ~.5 ~.5 2 2 2 0 10

kill @s[type=item]