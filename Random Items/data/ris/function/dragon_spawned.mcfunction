tag @s add ris.dragon

execute if predicate {"condition":"entity_properties","entity":"this","predicate":{"location":{"dimension":"minecraft:the_end"}}} run return 0
#execute unless entity @s[nbt={Fire:-1s}] run return 0
execute if entity @s[y_rotation=0] run return 0

kill @s
stopsound @a[distance=..80] hostile entity.ender_dragon.ambient
summon item ~ ~ ~ {PickupDelay:10,Item:{id:"minecraft:ender_dragon_spawn_egg",count:1}}
particle smoke

# allows spawners in the overworld to farm the spawn eggs