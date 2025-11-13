data modify storage ris:generator Item.components.minecraft:tool.rules append value {"blocks":"#minecraft:mineable/hoe","correct_for_drops":true}
data modify storage ris:generator Item.components.minecraft:tool.rules[-1].speed set from storage ris:generator components[{id:"tool_hoe"}].speed

item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Tool - Hoe","color":"gray","italic":false}]}