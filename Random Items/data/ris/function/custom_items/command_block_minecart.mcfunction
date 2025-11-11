playsound block.chest.open player @a ~ ~ ~ 1
particle smoke ~ ~0.4 ~ 0.25 0.25 0.25 0 50

loot spawn ~ ~ ~ loot ris:chests/all
loot spawn ~ ~ ~ loot ris:chests/all
loot spawn ~ ~ ~ loot ris:chests/all
execute if score op_cmd ris.settings matches 1 run loot spawn ~ ~ ~ loot ris:chests/all
execute if score op_cmd ris.settings matches 1 run loot spawn ~ ~ ~ loot ris:chests/all

kill @s[type=command_block_minecart]

advancement grant @p only ris:commander command_block_minecart