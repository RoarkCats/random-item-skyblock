setblock ~ ~ ~ air
execute if entity @s[tag=ris.transmuted] run return 1

particle explosion ~ ~ ~ 0 0 0 0 0 force
playsound block.anvil.break block @a ~ ~ ~ 2
kill @s[type=item]