execute store result score rng ris.rng run random value 0..41
# Max: 5
execute if score rng ris.rng matches 0 run data modify storage ris:generator Item.enchant.id set value "minecraft:bane_of_arthropods"
execute if score rng ris.rng matches 1 run data modify storage ris:generator Item.enchant.id set value "minecraft:density"
execute if score rng ris.rng matches 2 run data modify storage ris:generator Item.enchant.id set value "minecraft:efficiency"
execute if score rng ris.rng matches 3 run data modify storage ris:generator Item.enchant.id set value "minecraft:impaling"
execute if score rng ris.rng matches 4 run data modify storage ris:generator Item.enchant.id set value "minecraft:power"
execute if score rng ris.rng matches 5 run data modify storage ris:generator Item.enchant.id set value "minecraft:sharpness"
execute if score rng ris.rng matches 6 run data modify storage ris:generator Item.enchant.id set value "minecraft:smite"
# Max: 4
execute if score rng ris.rng matches 7 run data modify storage ris:generator Item.enchant.id set value "minecraft:blast_protection"
execute if score rng ris.rng matches 8 run data modify storage ris:generator Item.enchant.id set value "minecraft:breach"
execute if score rng ris.rng matches 9 run data modify storage ris:generator Item.enchant.id set value "minecraft:feather_falling"
execute if score rng ris.rng matches 10 run data modify storage ris:generator Item.enchant.id set value "minecraft:fire_protection"
execute if score rng ris.rng matches 11 run data modify storage ris:generator Item.enchant.id set value "minecraft:piercing"
execute if score rng ris.rng matches 12 run data modify storage ris:generator Item.enchant.id set value "minecraft:projectile_protection"
execute if score rng ris.rng matches 13 run data modify storage ris:generator Item.enchant.id set value "minecraft:protection"
# Max: 3
execute if score rng ris.rng matches 14 run data modify storage ris:generator Item.enchant.id set value "minecraft:depth_strider"
execute if score rng ris.rng matches 15 run data modify storage ris:generator Item.enchant.id set value "minecraft:fortune"
execute if score rng ris.rng matches 16 run data modify storage ris:generator Item.enchant.id set value "minecraft:looting"
execute if score rng ris.rng matches 17 run data modify storage ris:generator Item.enchant.id set value "minecraft:loyalty"
execute if score rng ris.rng matches 18 run data modify storage ris:generator Item.enchant.id set value "minecraft:luck_of_the_sea"
execute if score rng ris.rng matches 19 run data modify storage ris:generator Item.enchant.id set value "minecraft:lure"
execute if score rng ris.rng matches 20 run data modify storage ris:generator Item.enchant.id set value "minecraft:quick_charge"
execute if score rng ris.rng matches 21 run data modify storage ris:generator Item.enchant.id set value "minecraft:respiration"
execute if score rng ris.rng matches 22 run data modify storage ris:generator Item.enchant.id set value "minecraft:riptide"
execute if score rng ris.rng matches 23 run data modify storage ris:generator Item.enchant.id set value "minecraft:soul_speed"
execute if score rng ris.rng matches 24 run data modify storage ris:generator Item.enchant.id set value "minecraft:sweeping_edge"
execute if score rng ris.rng matches 25 run data modify storage ris:generator Item.enchant.id set value "minecraft:swift_sneak"
execute if score rng ris.rng matches 26 run data modify storage ris:generator Item.enchant.id set value "minecraft:thorns"
execute if score rng ris.rng matches 27 run data modify storage ris:generator Item.enchant.id set value "minecraft:unbreaking"
execute if score rng ris.rng matches 28 run data modify storage ris:generator Item.enchant.id set value "minecraft:wind_burst"
# Max: 2
execute if score rng ris.rng matches 29 run data modify storage ris:generator Item.enchant.id set value "minecraft:fire_aspect"
execute if score rng ris.rng matches 30 run data modify storage ris:generator Item.enchant.id set value "minecraft:frost_walker"
execute if score rng ris.rng matches 31 run data modify storage ris:generator Item.enchant.id set value "minecraft:knockback"
execute if score rng ris.rng matches 32 run data modify storage ris:generator Item.enchant.id set value "minecraft:punch"
# Max: 1
execute if score rng ris.rng matches 33 run data modify storage ris:generator Item.enchant.id set value "minecraft:aqua_affinity"
execute if score rng ris.rng matches 34 run data modify storage ris:generator Item.enchant.id set value "minecraft:binding_curse"
execute if score rng ris.rng matches 35 run data modify storage ris:generator Item.enchant.id set value "minecraft:channeling"
execute if score rng ris.rng matches 36 run data modify storage ris:generator Item.enchant.id set value "minecraft:flame"
execute if score rng ris.rng matches 37 run data modify storage ris:generator Item.enchant.id set value "minecraft:infinity"
execute if score rng ris.rng matches 38 run data modify storage ris:generator Item.enchant.id set value "minecraft:mending"
execute if score rng ris.rng matches 39 run data modify storage ris:generator Item.enchant.id set value "minecraft:multishot"
execute if score rng ris.rng matches 40 run data modify storage ris:generator Item.enchant.id set value "minecraft:silk_touch"
execute if score rng ris.rng matches 41 run data modify storage ris:generator Item.enchant.id set value "minecraft:vanishing_curse"


execute if score rng ris.rng matches 0..6 run scoreboard players set in ris.rng 5
execute if score rng ris.rng matches 7..13 run scoreboard players set in ris.rng 4
execute if score rng ris.rng matches 14..28 run scoreboard players set in ris.rng 3
execute if score rng ris.rng matches 29..32 run scoreboard players set in ris.rng 2
execute if score rng ris.rng matches 33..41 run scoreboard players set in ris.rng 1
execute store result score rng ris.rng run random value 1..1000
scoreboard players operation rng ris.rng %= in ris.rng
scoreboard players add rng ris.rng 1
execute store result storage ris:generator Item.enchant.level int 1 run scoreboard players get rng ris.rng


function ris:item_modifier/component/enchantments_append with storage ris:generator Item.enchant