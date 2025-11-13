$data modify entity @s Item.components.minecraft:enchantments.levels.$(id) set value $(level)


data modify storage ris:generator Item.enchants append from storage ris:generator components[{id:"enchantments"}].enchants[0]
data remove storage ris:generator components[{id:"enchantments"}].enchants[0]

execute if data storage ris:generator components[{id:"enchantments"}].enchants[0] run return run function ris:item_modifier/commit/enchantments with storage ris:generator components[{id:"enchantments"}].enchants[0]

data modify storage ris:generator components[{id:"enchantments"}].enchants set from storage ris:generator Item.enchants
data remove storage ris:generator Item