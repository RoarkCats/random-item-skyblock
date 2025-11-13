data modify storage ris:generator Item.components.minecraft:tool.rules append value {"blocks":"#minecraft:mineable/shovel","correct_for_drops":true}
data modify storage ris:generator Item.components.minecraft:tool.rules[-1].speed set from storage ris:generator components[{id:"tool_shovel"}].speed

item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Tool - Shovel","color":"gray","italic":false}]}