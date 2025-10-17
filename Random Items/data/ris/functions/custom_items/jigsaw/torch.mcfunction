tag @e[type=item,nbt={Age:0s,Item:{id:"minecraft:torch",Count:1b}}] add ris.jigsaw_torch

execute as @e[type=item,tag=ris.jigsaw_torch] at @s run setblock ~ ~ ~ torch
kill @e[type=item,tag=ris.jigsaw_torch]