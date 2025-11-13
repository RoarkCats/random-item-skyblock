# run by custom_items/tag_item as/at new dispensed/dropped/crafted item
tag @s add ris.ejected_item

scoreboard players set #mode ris.timer 0
execute if score dispensable_cauldrons ris.settings matches 1 if items entity @s contents #ris:cauldron_dispensable if block ~ ~ ~ #cauldrons run scoreboard players set #mode ris.timer 1
execute if score #mode ris.timer matches 1 if items entity @s contents potion unless items entity @s contents *[potion_contents=water] run scoreboard players set #mode ris.timer 0
execute if score #mode ris.timer matches 0 if items entity @s contents #ris:custom_items run function ris:dispensable/is_special_item
execute if score #mode ris.timer matches 0 run return fail

# DISPENSER CHECKS
execute store result score #temp ris.timer run data get entity @s Pos[1] 1000
scoreboard players operation #temp ris.timer %= #1000 ris.timer
execute if score #temp ris.timer matches ..380 positioned ~ ~-1 ~ run return run function ris:dispensable/dispenser_found
execute if score #temp ris.timer matches 700.. positioned ~ ~1 ~ run return run function ris:dispensable/dispenser_found

execute if function ris:dispensable/dispenser_not_found run return 1
# dispenser_not_found used as simplier check first instead of just as a backup for performance
execute store result storage ris:random pos.x double 0.01 run data get entity @s Motion[0] -10000
execute store result storage ris:random pos.z double 0.01 run data get entity @s Motion[2] -10000
return run function ris:dispensable/rotate with storage ris:random pos
# 0.69% Error Rate



## !! LOCATIONAL !!

# execute store result score #temp2 ris.timer run data get entity @s Motion[0] 1000
# execute store result score #temp3 ris.timer run data get entity @s Motion[2] 1000
# execute if score #mode ris.timer matches 1 run return run function ris:dispensable/side_checks_cauldron
# execute if score #mode ris.timer matches 2 run return run function ris:dispensable/side_checks_other
# function ris:dispensable/dispenser_not_found

# Detection Accuracy (Error %, batch size 217k) : (old-ish)
# Up : 0%
# Down : 0%
# Sides : 0.0014% (0.375% if non-cauldron block)

# NOTES: y-pos for up disp: 0.133-0.335 (blocks above disp)
# NOTES: y-pos for dn disp: 0.733-0.750 (0.250-0.267 blocks below disp)
# NOTES: y-pos for sd disp: 0.401-0.605 (blocks next to disp)
# w/ block
# NOTES: y-pos for up disp: 0.122-0.314 (blocks above disp)
# NOTES: y-pos for dn disp: 0.717-0.872 (0.128-0.283 blocks below disp)
# NOTES: y-pos for sd disp: 0.387-0.605 (blocks next to disp)

# SIDES:: x-range, z-range (motion*10000)
# South: -985..969, 1132..3842
# North: -977..966, -1097..-3827
# West:  -3846..-1055, -987..999
# East:  1065..3863, -982..994
# w/ block
# South: -2940..-984, 785..2890
# North: -2940..-984, -2955..-780
# West:  -2894..-775, -2939..-981
# East:  822..2851, -2940..-982