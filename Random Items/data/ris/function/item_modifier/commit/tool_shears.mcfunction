data modify storage ris:generator Item.components.minecraft:tool.rules append value {"blocks":"minecraft:cobweb","correct_for_drops":true}
data modify storage ris:generator Item.components.minecraft:tool.rules[-1].speed set from storage ris:generator components[{id:"tool_shears"}].speed
data modify storage ris:generator Item.components.minecraft:tool.rules append value {"blocks":"#minecraft:leaves"}
data modify storage ris:generator Item.components.minecraft:tool.rules[-1].speed set from storage ris:generator components[{id:"tool_shears"}].speed
data modify storage ris:generator Item.components.minecraft:tool.rules append value {"blocks":"#minecraft:wool"}
execute store result storage ris:generator Item.components.minecraft:tool.rules[-1].speed float 0.333 run data get storage ris:generator components[{id:"tool_shears"}].speed
data modify storage ris:generator Item.components.minecraft:tool.rules append value {"blocks":["minecraft:vine","minecraft:glow_lichen"]}
execute store result storage ris:generator Item.components.minecraft:tool.rules[-1].speed float 0.133 run data get storage ris:generator components[{id:"tool_shears"}].speed

item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Tool - Shears","color":"gray","italic":false}]}