data remove storage ris:generator Item
data merge storage ris:generator {Item:{components:{"minecraft:consumable":{animation:"drink",sound:"entity.generic.drink",on_consume_effects:[{type:"apply_effects",effects:[]}]}}}}
data modify storage ris:generator Item.components.minecraft:consumable.consume_seconds set from storage ris:generator components[{id:"consumable_effect"}].time

data modify storage ris:generator Item.components.minecraft:consumable.on_consume_effects[-1].effects set from storage ris:generator components[{id:"consumable_effect"}].effects

execute store success score #temp ris.timer run data remove storage ris:generator Item.components.minecraft:consumable.on_consume_effects[-1].effects[{id:"milk"}]
execute if score #temp ris.timer matches 1 run data modify storage ris:generator Item.components.minecraft:consumable.on_consume_effects prepend value {type:"clear_all_effects"}

item modify entity @s contents {"function":"set_lore","entity":"this","mode":"append","lore":[[{"text":"Drink - 🧪 ","color":"gray","italic":false},{"nbt":"components[{id:consumable_effect}].effects[].txt","storage":"ris:generator","interpret":true}]]}
data remove storage ris:generator Item.components.minecraft:consumable.on_consume_effects[-1].effects[].txt

data modify entity @s Item merge from storage ris:generator Item