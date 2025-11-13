data remove entity @s Item.components.minecraft:tool.rules
data remove storage ris:generator Item

execute if data storage ris:generator components[{id:"tool_axe"}] run function ris:item_modifier/commit/tool_axe
execute if data storage ris:generator components[{id:"tool_hoe"}] run function ris:item_modifier/commit/tool_hoe
execute if data storage ris:generator components[{id:"tool_pickaxe"}] run function ris:item_modifier/commit/tool_pickaxe
execute if data storage ris:generator components[{id:"tool_shears"}] run function ris:item_modifier/commit/tool_shears
execute if data storage ris:generator components[{id:"tool_shovel"}] run function ris:item_modifier/commit/tool_shovel
execute if data storage ris:generator components[{id:"tool_sword"}] run function ris:item_modifier/commit/tool_sword

data modify entity @s Item.components.minecraft:tool.rules append from storage ris:generator Item.components.minecraft:tool.rules[]