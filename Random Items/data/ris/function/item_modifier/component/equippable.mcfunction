function ris:item_modifier/component/durability

execute store result score rng ris.rng run random value 0..6
execute if score rng ris.rng matches 0 run data modify storage ris:generator Item.components.minecraft:equippable.slot set value "head"
execute if score rng ris.rng matches 1 run data modify storage ris:generator Item.components.minecraft:equippable.slot set value "chest"
execute if score rng ris.rng matches 2 run data modify storage ris:generator Item.components.minecraft:equippable.slot set value "legs"
execute if score rng ris.rng matches 3 run data modify storage ris:generator Item.components.minecraft:equippable.slot set value "feet"
execute if score rng ris.rng matches 4 run data modify storage ris:generator Item.components.minecraft:equippable.slot set value "body"
execute if score rng ris.rng matches 5 run data modify storage ris:generator Item.components.minecraft:equippable.slot set value "offhand"
execute if score rng ris.rng matches 6 run data modify storage ris:generator Item.components.minecraft:equippable.slot set value "mainhand"

execute store result score rng1 ris.rng run random value 1..9
execute if score rng ris.rng matches 4 store result score rng1 ris.rng run random value 0..5
execute if score rng ris.rng matches 0 if predicate {condition:random_chance,chance:0.5} run scoreboard players set rng1 ris.rng 1
execute if score rng ris.rng matches 0 if score rng1 ris.rng matches 1 run data modify storage ris:generator components[{id:"equippable"}] merge value {hat:1b}
# 1-9 def, 0-5 for 'body' used by dogs/horses/llamas, 50% to clear head since head shows item already
execute if score rng1 ris.rng matches 0 run data modify storage ris:generator Item.components.minecraft:equippable.asset_id set value "armadillo_scute"
execute if score rng1 ris.rng matches 1
execute if score rng1 ris.rng matches 2 run data modify storage ris:generator Item.components.minecraft:equippable.asset_id set value "leather"
execute if score rng1 ris.rng matches 3 run data modify storage ris:generator Item.components.minecraft:equippable.asset_id set value "iron"
execute if score rng1 ris.rng matches 4 run data modify storage ris:generator Item.components.minecraft:equippable.asset_id set value "gold"
execute if score rng1 ris.rng matches 5 run data modify storage ris:generator Item.components.minecraft:equippable.asset_id set value "diamond"
execute if score rng1 ris.rng matches 6 run data modify storage ris:generator Item.components.minecraft:equippable.asset_id set value "chainmail"
execute if score rng1 ris.rng matches 7 run data modify storage ris:generator Item.components.minecraft:equippable.asset_id set value "netherite"
execute if score rng1 ris.rng matches 8 run data modify storage ris:generator Item.components.minecraft:equippable.asset_id set value "elytra"
execute if score rng1 ris.rng matches 9 run data modify storage ris:generator Item.components.minecraft:equippable.asset_id set value "turtle_scute"
# equip sounds set from material
execute if score rng1 ris.rng matches 2 run data modify storage ris:generator Item.components.minecraft:equippable.equip_sound set value "item.armor.equip_leather"
execute if score rng1 ris.rng matches 3 run data modify storage ris:generator Item.components.minecraft:equippable.equip_sound set value "item.armor.equip_iron"
execute if score rng1 ris.rng matches 4 run data modify storage ris:generator Item.components.minecraft:equippable.equip_sound set value "item.armor.equip_gold"
execute if score rng1 ris.rng matches 5 run data modify storage ris:generator Item.components.minecraft:equippable.equip_sound set value "item.armor.equip_diamond"
execute if score rng1 ris.rng matches 6 run data modify storage ris:generator Item.components.minecraft:equippable.equip_sound set value "item.armor.equip_chain"
execute if score rng1 ris.rng matches 7 run data modify storage ris:generator Item.components.minecraft:equippable.equip_sound set value "item.armor.equip_netherite"
execute if score rng1 ris.rng matches 8 run data modify storage ris:generator Item.components.minecraft:equippable.equip_sound set value "item.armor.equip_elytra"
execute if score rng1 ris.rng matches 9 run data modify storage ris:generator Item.components.minecraft:equippable.equip_sound set value "item.armor.equip_turtle"

scoreboard players set rng1 ris.rng 0
execute if predicate {condition:random_chance,chance:0.1} store result score rng1 ris.rng run random value 1..50
execute unless score rng1 ris.rng matches 0 run data modify storage ris:generator components[{id:"equippable"}] merge value {overlay:1b}
execute if score rng1 ris.rng matches 0
execute if score rng1 ris.rng matches 1 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "misc/powder_snow_outline"
execute if score rng1 ris.rng matches 2 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "misc/pumpkinblur"
execute if score rng1 ris.rng matches 3 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "misc/shadow"
execute if score rng1 ris.rng matches 4 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "misc/spyglass_scope"
execute if score rng1 ris.rng matches 5 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "misc/underwater"
execute if score rng1 ris.rng matches 6 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "misc/white"
execute if score rng1 ris.rng matches 7 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "map/decorations/targety_x"
execute if score rng1 ris.rng matches 8 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "mob_effect/darkness"
execute if score rng1 ris.rng matches 9 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "mob_effect/water_breathing"
execute if score rng1 ris.rng matches 10 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "particle/enchanted_hit"
execute if score rng1 ris.rng matches 11 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "particle/flash"
execute if score rng1 ris.rng matches 12 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "particle/gust_3"
execute if score rng1 ris.rng matches 13 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "particle/gust_9"
execute if score rng1 ris.rng matches 14 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "particle/vibration"
execute if score rng1 ris.rng matches 15 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "gui/title/mojangstudios"
execute if score rng1 ris.rng matches 16 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "environment/clouds"
execute if score rng1 ris.rng matches 17 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "environment/snow"
execute if score rng1 ris.rng matches 18 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "environment/rain"
execute if score rng1 ris.rng matches 19 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "entity/spider_eyes"
execute if score rng1 ris.rng matches 20 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/ice"
execute if score rng1 ris.rng matches 21 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/slime_block"
execute if score rng1 ris.rng matches 22 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/honey_block_bottom"
execute if score rng1 ris.rng matches 23 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/glass"
execute if score rng1 ris.rng matches 24 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/black_stained_glass"
execute if score rng1 ris.rng matches 25 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/blue_stained_glass"
execute if score rng1 ris.rng matches 26 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/brown_stained_glass"
execute if score rng1 ris.rng matches 27 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/cyan_stained_glass"
execute if score rng1 ris.rng matches 28 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/gray_stained_glass"
execute if score rng1 ris.rng matches 29 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/green_stained_glass"
execute if score rng1 ris.rng matches 30 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/light_blue_stained_glass"
execute if score rng1 ris.rng matches 31 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/light_gray_stained_glass"
execute if score rng1 ris.rng matches 32 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/lime_stained_glass"
execute if score rng1 ris.rng matches 33 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/magenta_stained_glass"
execute if score rng1 ris.rng matches 34 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/orange_stained_glass"
execute if score rng1 ris.rng matches 35 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/pink_stained_glass"
execute if score rng1 ris.rng matches 36 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/purple_stained_glass"
execute if score rng1 ris.rng matches 37 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/red_stained_glass"
execute if score rng1 ris.rng matches 38 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/white_stained_glass"
execute if score rng1 ris.rng matches 39 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/yellow_stained_glass"
execute if score rng1 ris.rng matches 40 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/glow_lichen"
execute if score rng1 ris.rng matches 41 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/cobweb"
execute if score rng1 ris.rng matches 42 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/nether_sprouts"
execute if score rng1 ris.rng matches 43 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/cave_vines"
execute if score rng1 ris.rng matches 44 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/iron_bars"
execute if score rng1 ris.rng matches 45 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/sugar_cane"
execute if score rng1 ris.rng matches 46 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/nether_portal"
execute if score rng1 ris.rng matches 47 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/water_overlay"
execute if score rng1 ris.rng matches 48 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/mangrove_trapdoor"
execute if score rng1 ris.rng matches 49 store result score rng1 ris.rng run random value 100..103
execute if score rng1 ris.rng matches 50 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "item/barrier"
# there's no real order or reason to what's included, just what I liked after trying most things in the game
execute if score rng1 ris.rng matches 100 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/copper_grate"
execute if score rng1 ris.rng matches 101 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/exposed_copper_grate"
execute if score rng1 ris.rng matches 102 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/weathered_copper_grate"
execute if score rng1 ris.rng matches 103 run data modify storage ris:generator Item.components.minecraft:equippable.camera_overlay set value "block/oxidized_copper_grate"

data modify storage ris:generator components[{id:"equippable",has_durability:1b}].nbt merge from storage ris:generator Item.components.minecraft:equippable