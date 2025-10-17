playsound block.beacon.power_select block @a ~ ~ ~ 1 0.9

data merge entity @s {Item:{Count:16b}}
tag @s add ris.spawned_item

setblock ~ ~-0.5 ~ air