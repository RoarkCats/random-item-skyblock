# tellraw @a {"nbt":"component","storage":"ris:generator"}


function ris:item_modifier/component/level with storage ris:generator

# Component stuff (can in theory just run ris:item_modifier/component/$(component) with macro, but idk how to then not run ris:item_modifier/attribute)  (no way to detect if a function exists without modifying it)

execute if data storage ris:generator {component:"consumable_converts"} run return run function ris:item_modifier/component/consumable_converts
execute if data storage ris:generator {component:"consumable_effect"} run return run function ris:item_modifier/component/consumable_effect
execute if data storage ris:generator {component:"consumable_food"} run return run function ris:item_modifier/component/consumable_food
execute if data storage ris:generator {component:"consumable_teleport"} run return run function ris:item_modifier/component/consumable_teleport
execute if data storage ris:generator {component:"death_protection"} run return run function ris:item_modifier/component/death_protection
execute if data storage ris:generator {component:"equippable"} run return run function ris:item_modifier/component/equippable
execute if data storage ris:generator {component:"glider"} run return run function ris:item_modifier/component/glider
execute if data storage ris:generator {component:"item_model"} run return run function ris:item_modifier/component/item_model
execute if data storage ris:generator {component:"item_name"} run return run function ris:item_modifier/component/item_name
execute if data storage ris:generator {component:"enchantment_glint_override"} run return run function ris:item_modifier/component/enchantment_glint_override
execute if data storage ris:generator {component:"enchantments"} run return run function ris:item_modifier/component/enchantments
execute if data storage ris:generator {component:"damage_resistant"} run return run function ris:item_modifier/component/damage_resistant
execute if data storage ris:generator {component:"hide_additional_tooltip"} run return run function ris:item_modifier/component/hide_additional_tooltip
execute if data storage ris:generator {component:"hide_tooltip"} run return run function ris:item_modifier/component/hide_tooltip
execute if data storage ris:generator {component:"jukebox_playable"} run return run function ris:item_modifier/component/jukebox_playable
execute if data storage ris:generator {component:"tool_axe"} run return run function ris:item_modifier/component/tool_axe
execute if data storage ris:generator {component:"tool_hoe"} run return run function ris:item_modifier/component/tool_hoe
execute if data storage ris:generator {component:"tool_pickaxe"} run return run function ris:item_modifier/component/tool_pickaxe
execute if data storage ris:generator {component:"tool_shears"} run return run function ris:item_modifier/component/tool_shears
execute if data storage ris:generator {component:"tool_shovel"} run return run function ris:item_modifier/component/tool_shovel
execute if data storage ris:generator {component:"tool_sword"} run return run function ris:item_modifier/component/tool_sword
execute if data storage ris:generator {component:"unbreakable"} run return run function ris:item_modifier/component/unbreakable

# Attribute stuff (returns earlier otherwise)

function ris:item_modifier/attribute with storage ris:generator