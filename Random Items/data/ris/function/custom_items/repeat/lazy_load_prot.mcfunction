# run as/at generators before they generate, flags them not to generate if lazy loaded (frozen item overflow)
execute store result score #count ris.timer if entity @e[type=item,distance=..0,nbt={Age:0s}]
execute if entity @s[tag=ris.component_generator] if block ~ ~ ~ decorated_pot positioned ~ ~1 ~ store result score #count ris.timer if entity @e[type=item,distance=..0,nbt={Age:0s}]

tag @s remove ris.gen_unloaded
execute if score #count ris.timer matches 5.. run tag @s add ris.gen_unloaded