function ris:item_modifier/component/durability

execute store result score rng ris.rng run random value 100..200
execute store result storage ris:generator components[{id:"tool_sword",has_durability:1b}].speed float 0.1 run scoreboard players get rng ris.rng

item modify entity @s contents ris:weapon_values
data modify storage ris:generator components[{id:"tool_sword"}].attack_damage set from entity @s Item.components.minecraft:attribute_modifiers.modifiers[{id:"ris:rng",type:"minecraft:attack_damage"}].amount
data modify storage ris:generator components[{id:"tool_sword"}].attack_speed set from entity @s Item.components.minecraft:attribute_modifiers.modifiers[{id:"ris:rng",type:"minecraft:attack_speed"}].amount
data remove entity @s Item.components.minecraft:attribute_modifiers.modifiers[{id:"ris:rng"}]