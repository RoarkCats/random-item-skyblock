data remove storage ris:generator Item
data merge storage ris:generator {Item:{components:{"minecraft:death_protection":{death_effects:[{type:"apply_effects",effects:[]}]}}}}

data modify storage ris:generator Item.components.minecraft:death_protection.death_effects[-1].effects set from storage ris:generator components[{id:"death_protection"}].effects

item modify entity @s contents {"function":"set_lore","entity":"this","mode":"append","lore":[[{"text":"Death Protection - ","color":"gray","italic":false},{"nbt":"Item.components.minecraft:death_protection.death_effects[-1].effects[].txt","storage":"ris:generator","separator":"","interpret":true}]]}
data remove storage ris:generator Item.components.minecraft:death_protection.death_effects[-1].effects[].txt

execute store success score #temp ris.timer run data remove storage ris:generator Item.components.minecraft:death_protection.death_effects[-1].effects[{id:"milk"}]
execute if score #temp ris.timer matches 1 run data modify storage ris:generator Item.components.minecraft:death_protection.death_effects prepend value {type:"clear_all_effects"}

execute store success score #temp ris.timer run data remove storage ris:generator Item.components.minecraft:death_protection.death_effects[-1].effects[{id:"teleport"}]
execute if score #temp ris.timer matches 1 run data modify storage ris:generator Item.components.minecraft:death_protection.death_effects[{type:"teleport_randomly"}].diameter set from storage ris:generator components[{id:"death_protection"}].effects[{id:"teleport"}].diameter

data modify entity @s Item merge from storage ris:generator Item