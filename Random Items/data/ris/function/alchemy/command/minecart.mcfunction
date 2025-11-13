playsound block.chest.open player @a ~ ~ ~ 1 0.9
particle large_smoke ~ ~0.4 ~ 0.25 0.25 0.25 0 20
particle white_smoke ~ ~0.4 ~ 0.25 0.25 0.25 0.03 40
summon firework_rocket

loot spawn ~ ~ ~ loot ris:loot/chests/all_stack

kill @s[type=item]