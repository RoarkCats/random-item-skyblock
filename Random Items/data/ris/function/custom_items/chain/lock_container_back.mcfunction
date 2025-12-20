# lock items (also leave copies if partial setting) 
execute at @s run function ris:item_modifier/_util/pre_dupe

# copy back to container
data modify storage ris:random container[0].item set from entity @s Item
$data modify entity @n[type=item,tag=ris.contains_items] Item.components.minecraft:container[{slot:$(slot)}] merge from storage ris:random container[0]
data remove storage ris:random container[0]

# kill locked temp items
kill @s[type=item]



# loop to next item (required for slot macro match)
execute as @n[type=item,distance=..0.11,tag=!ris.tagged_item,tag=!ris.components_locked,tag=!ris.spawned_item,nbt={Age:0s,PickupDelay:0s}] run function ris:custom_items/chain/lock_container_back with storage ris:random container[0]