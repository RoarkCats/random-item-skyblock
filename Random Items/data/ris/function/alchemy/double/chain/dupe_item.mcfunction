execute if entity @s[tag=ris.components] run function ris:item_modifier/_util/pre_dupe
data merge entity @s {Item:{count:32}}
execute if score unstackable_dupe_count ris.settings matches 1..15 if items entity @s contents #ris:unstackable store result entity @s Item.count int 2 run scoreboard players get unstackable_dupe_count ris.settings
execute unless entity @s[tag=!ris.schematic,tag=!ris.components] run data merge entity @s {Item:{count:8}}
execute store result score #temp ris.timer run data get entity @s Item.components.minecraft:max_stack_size
execute if score #temp ris.timer matches 0 store result score #temp ris.timer run function ris:alchemy/custom_stack_none
execute if score #temp ris.timer matches ..31 unless items entity @s contents #bundles run data merge entity @s {Item:{components:{"minecraft:max_stack_size":32}}}