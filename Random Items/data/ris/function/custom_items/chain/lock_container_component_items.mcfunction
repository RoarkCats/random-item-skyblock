# run as/at a container item stack after dupe with any component items
execute if score combinable_duped_items ris.settings matches 1 run return 1

# verify any unlocked component items (not possible with predicates alone unless all have locked:0b)
execute store result score #comp ris.timer if data entity @s Item.components.minecraft:container[{item:{components:{"minecraft:custom_data":{ris:{components:[{}]}}}}}]
execute store result score #comp_locked ris.timer if data entity @s Item.components.minecraft:container[{item:{components:{"minecraft:custom_data":{ris:{components:[{locked:1b}]}}}}}]
scoreboard players operation #comp ris.timer -= #comp_locked ris.timer
execute if score #comp ris.timer matches 0 run return 0


# -Copy container item
# -Damage kill, filter non-locked-component items
# -Run on the dropped items:  ris:item_modifier/_util/pre_dupe
# -Hope that they're dropped in slot order and arbitrary order replace component item in container with locked one, deleting locked as go


# copy container
summon item ~ ~0.1 ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
item replace entity @n[type=item,distance=..0.11,tag=ris.blank_item] contents from entity @s contents
# damage kill container copy
damage @n[type=item,distance=..0.11,tag=ris.blank_item] 100 generic_kill

# prepare data to merge back to container
data modify storage ris:random container set value []
data modify storage ris:random container append from entity @s Item.components.minecraft:container[{item:{components:{"minecraft:custom_data":{ris:{components:[{}]}}}}}]
data remove storage ris:random container[{item:{components:{"minecraft:custom_data":{ris:{components:[{locked:1b}]}}}}}]

# kill (filter) non-component items and previously locked
execute as @e[type=item,distance=..0.11,tag=!ris.tagged_item,nbt={Age:0s,PickupDelay:0s}] unless items entity @s contents *[custom_data~{ris:{components:[{}]}}] run kill @s
execute as @e[type=item,distance=..0.11,tag=!ris.tagged_item,nbt={Age:0s,PickupDelay:0s}] if items entity @s contents *[custom_data~{ris:{components:[{locked:1b}]}}] run kill @s

# lock remaining, copy back to container, kill temp locked versions 
execute as @n[type=item,distance=..0.11,tag=!ris.tagged_item,nbt={Age:0s,PickupDelay:0s}] run function ris:custom_items/chain/lock_container_back with storage ris:random container[0]