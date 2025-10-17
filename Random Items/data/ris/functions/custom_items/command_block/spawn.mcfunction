loot spawn ~ ~ ~ loot ris:random_item

tag @s[type=item] add ris.temp
execute as @e[type=item,tag=!ris.spawned_item,nbt={Age:0s},nbt=!{Item:{id:"minecraft:bundle"}},sort=nearest,limit=1,tag=!ris.temp] run function ris:custom_items/command_block/item

# There's sadly no substitute with /playsound and /particle (/particle cloud is close but not exactly the same)
# only causes about 1 mspt of extra lag per ~27 activations each tick (notable, but that also uses 8.5 stacks per second)
summon firework_rocket

kill @s[type=item]

advancement grant @p only ris:commander command_block