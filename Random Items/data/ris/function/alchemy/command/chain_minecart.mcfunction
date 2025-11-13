playsound block.chest.open player @a ~ ~ ~ 1 0.9
playsound block.beacon.power_select block @a ~ ~ ~ 1 0.9
particle smoke ~ ~0.4 ~ 0.25 0.25 0.25 0 50
particle dragon_breath ~ ~0.4 ~ 0.25 0.25 0.25 0.03 20

loot spawn ~ ~ ~ loot ris:loot/chests/all_multiplied
loot spawn ~ ~ ~ loot ris:loot/chests/all_multiplied
loot spawn ~ ~ ~ loot ris:loot/chests/all_multiplied

kill @s[type=item]