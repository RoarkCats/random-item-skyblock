loot spawn ~ ~ ~ loot ris:random_item

execute as @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run data merge entity @s {Item:{Count:64b},Motion:[0,0,0]}
execute as @e[type=item,nbt={Age:0s},sort=nearest,limit=1,nbt={Item:{tag:{custom_item:1b}}}] if score opCmd risSettings matches 0 run data merge entity @s {Item:{Count:8b},Motion:[0,0,0]}
execute as @e[type=item,nbt={Age:0s},sort=nearest,limit=1,nbt={Item:{tag:{custom_item:1b}}}] if score opCmd risSettings matches 1 run data merge entity @s {Item:{Count:32b},Motion:[0,0,0]}
tag @e[type=item,nbt={Age:0s},sort=nearest,limit=1] add spawned


summon firework_rocket
kill @s