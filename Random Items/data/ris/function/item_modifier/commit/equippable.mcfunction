data modify entity @s Item.components.minecraft:equippable merge from storage ris:generator components[{id:"equippable"}].nbt

data modify storage ris:generator Item.temp set from storage ris:generator components[{id:"equippable"}].nbt.slot
execute if data storage ris:generator {Item:{temp:"head"}} run item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Equippable - Head","color":"gray","italic":false}]}
execute if data storage ris:generator {Item:{temp:"chest"}} run item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Equippable - Chest","color":"gray","italic":false}]}
execute if data storage ris:generator {Item:{temp:"legs"}} run item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Equippable - Legs","color":"gray","italic":false}]}
execute if data storage ris:generator {Item:{temp:"feet"}} run item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Equippable - Feet","color":"gray","italic":false}]}
execute if data storage ris:generator {Item:{temp:"body"}} run item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Equippable - Body (Tamed)","color":"gray","italic":false}]}
execute if data storage ris:generator {Item:{temp:"offhand"}} run item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Equippable - Offhand","color":"gray","italic":false}]}
execute if data storage ris:generator {Item:{temp:"mainhand"}} run item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Equippable - Mainhand","color":"gray","italic":false}]}