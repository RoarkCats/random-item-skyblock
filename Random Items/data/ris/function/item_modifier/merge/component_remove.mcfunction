# removes untransferred components from original item
# technically should be in the commit step but this is where we know what's being lost

# $say DEBUG - $(component) removed!
particle sculk_soul ~ ~-0.25 ~ 0.3 0.2 0.3 0 1 force
playsound block.mangrove_roots.break block @a ~ ~ ~ 0.8 1.3

$data remove entity @s Item.components."minecraft:$(component)"

execute if data storage ris:generator {component:"consumable_converts"} run data remove entity @s Item.components."minecraft:consumable"
execute if data storage ris:generator {component:"consumable_converts"} run data remove entity @s Item.components."minecraft:use_remainder"
execute if data storage ris:generator {component:"consumable_effect"} run data remove entity @s Item.components."minecraft:consumable"
execute if data storage ris:generator {component:"consumable_food"} run data remove entity @s Item.components."minecraft:consumable"
execute if data storage ris:generator {component:"consumable_food"} run data remove entity @s Item.components."minecraft:food"
execute if data storage ris:generator {component:"consumable_teleport"} run data remove entity @s Item.components."minecraft:consumable"
execute if data storage ris:generator {component:"consumable_teleport"} run data remove entity @s Item.components."minecraft:use_cooldown"
execute if data storage ris:generator {component:"item_name"} run data remove entity @s Item.components."minecraft:custom_name"
execute if data storage ris:generator {component:"tool_axe"} run data remove entity @s Item.components."minecraft:tool"
execute if data storage ris:generator {component:"tool_hoe"} run data remove entity @s Item.components."minecraft:tool"
execute if data storage ris:generator {component:"tool_pickaxe"} run data remove entity @s Item.components."minecraft:tool"
execute if data storage ris:generator {component:"tool_shears"} run data remove entity @s Item.components."minecraft:tool"
execute if data storage ris:generator {component:"tool_shovel"} run data remove entity @s Item.components."minecraft:tool"
execute if data storage ris:generator {component:"tool_sword"} run data remove entity @s Item.components."minecraft:tool"

# These are covered completely by the dynamic data remove above
#
# execute if data storage ris:generator {component:"death_protection"} run 
# execute if data storage ris:generator {component:"equippable"} run 
# execute if data storage ris:generator {component:"item_model"} run 
# execute if data storage ris:generator {component:"enchantment_glint_override"} run 
# execute if data storage ris:generator {component:"enchantments"} run 
# execute if data storage ris:generator {component:"damage_resistant"} run 
# execute if data storage ris:generator {component:"hide_additional_tooltip"} run 
# execute if data storage ris:generator {component:"hide_tooltip"} run 
# execute if data storage ris:generator {component:"jukebox_playable"} run 
# execute if data storage ris:generator {component:"unbreakable"} run 