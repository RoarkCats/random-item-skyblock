# commit `ris:generator components` to @s[type=item], translating from custom data to components

data remove entity @s Item.components.minecraft:attribute_modifiers
item modify entity @s contents ris:attribute_commit
data remove entity @s Item.components.minecraft:attribute_modifiers.modifiers[{amount:0.0}]
execute store result storage ris:random id int 1 run random value 0..999999
function ris:item_modifier/commit/attribute_id with storage ris:random


item modify entity @s contents {function:"set_lore",lore:[],mode:"replace_all"}
execute if data storage ris:generator components[{id:"lore"}] run data modify entity @s Item.components.minecraft:lore set from storage ris:generator components[{id:"lore"}].lore
# slight issue: overwrites new lore (added after first combined/generated)

data modify storage ris:generator Item.levels append from storage ris:generator components[{id:"level"}].levels[].level
execute store result score count ris.rng if data storage ris:generator Item.levels[]
scoreboard players set #level ris.rng 0
function ris:item_modifier/commit/level

# copy ris.components originally top of file but last minute modifications made in `commit/level` should be on item and its not modified earlier in the function so ok
data modify entity @s Item.components.minecraft:custom_data.ris.components set from storage ris:generator components


scoreboard players set #max_stack_size ris.rng 0
execute if data storage ris:generator components[{id:"durability"}] run function ris:item_modifier/commit/durability

execute if data storage ris:generator components[{id:"consumable_converts"}] run function ris:item_modifier/commit/consumable_converts
execute if data storage ris:generator components[{id:"consumable_effect"}] run function ris:item_modifier/commit/consumable_effect
execute if data storage ris:generator components[{id:"consumable_food"}] run function ris:item_modifier/commit/consumable_food
execute if data storage ris:generator components[{id:"consumable_teleport"}] run function ris:item_modifier/commit/consumable_teleport
execute if data storage ris:generator components[{id:"death_protection"}] run function ris:item_modifier/commit/death_protection
execute if data storage ris:generator components[{id:"equippable"}] run function ris:item_modifier/commit/equippable
execute if data storage ris:generator components[{id:"glider"}] run function ris:item_modifier/commit/glider
execute if data storage ris:generator components[{id:"item_model"}] run function ris:item_modifier/commit/item_model
execute if data storage ris:generator components[{id:"item_name"}] run function ris:item_modifier/commit/item_name
execute if data storage ris:generator components[{id:"enchantment_glint_override"}] run item modify entity @s contents ris:component/enchantment_glint_override
execute if data storage ris:generator components[{id:"enchantments"}] run function ris:item_modifier/commit/enchantments with storage ris:generator components[{id:"enchantments"}].enchants[0]
execute if data storage ris:generator components[{id:"damage_resistant"}] run item modify entity @s contents ris:component/damage_resistant
execute if data storage ris:generator components[{id:"hide_additional_tooltip"}] run item modify entity @s contents ris:component/hide_additional_tooltip
execute if data storage ris:generator components[{id:"hide_tooltip"}] run item modify entity @s contents ris:component/hide_tooltip
execute if data storage ris:generator components[{id:"jukebox_playable"}] run function ris:item_modifier/commit/jukebox_playable
execute if data storage ris:generator components[{has_durability:1b}] run function ris:item_modifier/commit/tools
execute if data storage ris:generator components[{id:"unbreakable"}] run item modify entity @s contents ris:component/unbreakable

execute unless score #max_stack_size ris.rng matches 0 store result entity @s Item.components.minecraft:max_stack_size int 1 run scoreboard players get #max_stack_size ris.rng
# need to do this stupid work-around because "set_components" item modifiers don't work period when the item is illegal -,- (durability without max_stack_size 1)


function ris:alchemy/command/chain_repeat/tag_item