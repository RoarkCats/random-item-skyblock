loot replace entity @s contents loot ris:random_item
tag @s remove ris.blank_item

execute if entity @s[nbt={Item:{id:"minecraft:bundle"}}] run return 0

data merge entity @s {Item:{count:64}}

execute unless data entity @s Item.components."minecraft:custom_data".custom_item run return 1
execute if score op_cmd ris.settings matches 0 run data merge entity @s {Item:{count:8}}
execute if score op_cmd ris.settings matches 1 run data merge entity @s {Item:{count:32}}