# mainly used when `debug` is called by alchemy functions or player at non-`#ris:debug_breakable` block
summon item ~ ~ ~ {Tags:["ris.spawned_item","ris.blank_item"],Item:{id:"minecraft:stone",count:1},PickupDelay:11s}

execute store result score #temp ris.timer run loot replace entity @n[type=item,tag=ris.blank_item] contents mine ~ ~ ~ shears[enchantments={levels:{silk_touch:1}},tool={rules:[{blocks:"#ris:not_air",correct_for_drops:true}]}]

execute if block ~ ~ ~ #ris:holds_items unless block ~ ~ ~ #shulker_boxes run function ris:custom_items/debug/mine_other_container
execute if block ~ ~ ~ decorated_pot run function ris:custom_items/debug/mine_other_container

execute if score #temp ris.timer matches 0 run kill @n[type=item,tag=ris.blank_item]
tag @n[type=item,tag=ris.blank_item] remove ris.blank_item