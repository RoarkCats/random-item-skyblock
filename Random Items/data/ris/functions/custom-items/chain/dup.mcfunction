playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0.9
setblock ~ ~-1 ~ air
data merge entity @s {Item: {Count: 16b}}