summon item ~ ~ ~ {Tags:["ris.spawned_item","ris.blank_item"],Item:{id:"minecraft:stone",count:1}}

execute as @n[type=item,tag=ris.blank_item] run function ris:custom_items/command_block/item

# There's sadly no substitute with /playsound and /particle (/particle cloud is close but not exactly the same)
# only causes about 1 mspt of extra lag per ~27 activations each tick (notable, but that also uses 8.5 stacks per second)
summon firework_rocket

kill @s[type=item]

execute on origin run advancement grant @s only ris:commander command_block