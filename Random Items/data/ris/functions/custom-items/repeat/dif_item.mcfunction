loot spawn ~ ~ ~ loot ris:random_item

execute as @e[type=item,nbt={Age:0s},sort=nearest,limit=1] run data merge entity @s {Motion:[0,0,0]}
tag @e[type=item,nbt={Age:0s},sort=nearest,limit=1] add spawned