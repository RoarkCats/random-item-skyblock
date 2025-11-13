summon item ~ ~ ~ {Tags:["ris.spawned_item","ris.blank_item"],Item:{id:"minecraft:stone",count:1},PickupDelay:11s}
execute store result score #success1 ris.rng run loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:custom_items/debug_block_mine
execute if score #success1 ris.rng matches 0 run kill @n[type=item,tag=ris.blank_item]
tag @n[type=item,tag=ris.blank_item] remove ris.blank_item

execute unless block ~ ~ ~ #ris:debug_breakable run function ris:custom_items/debug/mine_other


function ris:custom_items/debug/block_break