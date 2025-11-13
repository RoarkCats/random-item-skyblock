data modify entity @s Item.components.minecraft:consumable.on_consume_effects append from storage ris:generator components[{id:"consumable_teleport"}].effect
data modify entity @s Item.components.minecraft:consumable.consume_seconds set from storage ris:generator components[{id:"consumable_teleport"}].time
data modify entity @s Item.components.minecraft:use_cooldown.seconds set from storage ris:generator components[{id:"consumable_teleport"}].cooldown

item modify entity @s contents {"function":"set_lore","entity":"this","mode":"append","lore":[[{"text":"Consumable - Teleport ↔ ","color":"gray","italic":false},{"nbt":"components[{id:consumable_teleport}].effect.diameter","storage":"ris:generator"}]]}