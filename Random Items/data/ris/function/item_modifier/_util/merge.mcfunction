# merge `ris:generator components` with `ris:generator components_merge`

# move all single components to components_merge (other than lore/durability)
execute store result score count ris.rng if data storage ris:generator components[]
function ris:item_modifier/merge/component with storage ris:generator components[0]
# (also merge double attributes and durability)

# merge remaining doubles that have mergeable traits
execute if data storage ris:generator components[{id:"consumable_converts"}] run function ris:item_modifier/merge/consumable_converts
execute if data storage ris:generator components[{id:"consumable_effect"}] run function ris:item_modifier/merge/consumable_effect
execute if data storage ris:generator components[{id:"consumable_food"}] run function ris:item_modifier/merge/consumable_food
execute if data storage ris:generator components[{id:"consumable_teleport"}] run function ris:item_modifier/merge/consumable_teleport
execute if data storage ris:generator components[{id:"death_protection"}] run function ris:item_modifier/merge/death_protection
execute if data storage ris:generator components[{id:"equippable"}] run function ris:item_modifier/merge/equippable
execute if data storage ris:generator components[{id:"enchantments"}] run function ris:item_modifier/merge/enchantments
execute if data storage ris:generator components[{has_durability:1b}] run function ris:item_modifier/merge/tools
# (also remove them from components_merge)
# tellraw @a ["DEBUG - ",{"nbt":"components_merge","storage":"ris:generator"}]
data remove storage ris:generator components_merge[{merged:1b}]

# move rest of the components back with % success rate
execute store result score count ris.rng if data storage ris:generator components_merge[]
execute if score count ris.rng matches 1.. run function ris:item_modifier/merge/component_dif

# remove if no longer supported
execute if data storage ris:generator components[{id:"durability"}] unless data storage ris:generator components[{has_durability:1b}] run data remove storage ris:generator components[{id:"durability"}]
# execute if data storage ris:generator components[{id:"glider"}] unless data storage ris:generator components[{id:"equippable"}] run data remove storage ris:generator components[{id:"glider"}]
# (glider now standalone)