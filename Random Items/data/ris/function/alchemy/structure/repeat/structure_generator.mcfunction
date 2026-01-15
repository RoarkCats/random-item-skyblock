tag @s remove ris.generate

tag @e[type=item,dx=47,dy=48,dz=47] add ris.dont_kill
# dont_kill tag so that new untagged items create in area same tick dont get deleted 

data modify storage ris:random structure set from entity @s Particle.item.components.minecraft:custom_data.ris.structure
execute store result storage ris:random integrity float 0.01 run scoreboard players get structure_gen_integrity ris.settings
function ris:alchemy/structure/repeat/place_integrity with storage ris:random

kill @e[type=item,tag=!ris.dont_kill,nbt={Age:0s,PickupDelay:0s},dx=47,dy=48,dz=47]
tag @e[type=item,tag=ris.dont_kill,dx=47,dy=48,dz=47] remove ris.dont_kill

scoreboard players set #clear_spawned_blocks ris.rng 48
function ris:custom_items/structure/clear_spawned_blocks

playsound block.copper_bulb.place block @a ~ ~ ~ 1 0.5
playsound block.wool.place block @a ~ ~ ~ 1 1.2