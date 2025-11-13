# run by dupe functions just before duping if item is tagged ris.components
execute if score combinable_duped_items ris.settings matches 1 run return 1
execute if entity @s[tag=ris.components_locked] run return 1

execute if score combinable_duped_items ris.settings matches 2 run summon item ~ ~ ~ {Tags:["ris.blank_item","ris.spawned_item"],Item:{id:"minecraft:stone",count:1}}
execute if score combinable_duped_items ris.settings matches 2 run data modify entity @n[tag=ris.blank_item] Item set from entity @s Item
execute if score combinable_duped_items ris.settings matches 2 run tag @n[tag=ris.blank_item] remove ris.blank_item

function ris:item_modifier/_util/get
data modify storage ris:generator components[{id:"level"}].locked set value 1b
function ris:item_modifier/_util/commit
tag @s add ris.components_locked