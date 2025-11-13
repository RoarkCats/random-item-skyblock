# bamboo insta-mine seems to be hardcoded in? threw it in with cobweb as a special case, almost as fast
data modify storage ris:generator Item.components.minecraft:tool.rules append value {"blocks":["minecraft:cobweb","minecraft:bamboo"],"correct_for_drops":true}
data modify storage ris:generator Item.components.minecraft:tool.rules[-1].speed set from storage ris:generator components[{id:"tool_sword"}].speed
data modify storage ris:generator Item.components.minecraft:tool.rules append value {"blocks":"#minecraft:sword_efficient"}
execute store result storage ris:generator Item.components.minecraft:tool.rules[-1].speed float 0.1 run data get storage ris:generator components[{id:"tool_sword"}].speed

item modify entity @s contents ris:weapon_commit

item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Tool - Sword","color":"gray","italic":false}]}