# allows placed minecarts by player/dispenser to activate while summon/existing ones with set commands do not
execute if entity @s[type=command_block_minecart] unless entity @s[nbt={Fire:-1s,Command:""}] run return run tag @s add ris.command_block_minecart

playsound block.chest.open player @a ~ ~ ~ 1
particle smoke ~ ~0.4 ~ 0.25 0.25 0.25 0 50

loot spawn ~ ~ ~ loot ris:loot/chests/all
# loot/all is around 30% loot/chests/all (8=2.4 chests)
loot spawn ~ ~ ~ loot ris:loot/all
loot spawn ~ ~ ~ loot ris:loot/all
loot spawn ~ ~ ~ loot ris:loot/all
loot spawn ~ ~ ~ loot ris:loot/all
loot spawn ~ ~ ~ loot ris:loot/all
loot spawn ~ ~ ~ loot ris:loot/all
loot spawn ~ ~ ~ loot ris:loot/all
loot spawn ~ ~ ~ loot ris:loot/all

kill @s[type=command_block_minecart]
kill @s[type=item]

execute on origin run return run advancement grant @s only ris:special/customized/commander command_block_minecart
advancement grant @p only ris:special/customized/commander command_block_minecart