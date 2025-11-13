# run as @a from ris:main

scoreboard players remove @s[scores={ris.sweaty_palms=1..}] ris.sweaty_palms 1

execute if score @s ris.time_since_death matches 1 run tag @s[tag=ris.a_dance_with_death] remove ris.a_dance_with_death

execute if score @s ris.pedro matches 1.. at @s run function ris:advancements/pedro
execute if score @s ris.cats matches 1.. at @s run function ris:advancements/cats/spawn

scoreboard players reset @s[scores={ris.mined_ender_chest=0}] ris.mined_ender_chest
scoreboard players remove @s[scores={ris.mined_ender_chest=1..}] ris.mined_ender_chest 1

# Storage Solution & Container Chaos, +Safe Keeping ----
scoreboard players operation @s ris.containers += @s ris.open_barrel
scoreboard players operation @s ris.containers += @s ris.open_chest
scoreboard players operation @s ris.containers += @s ris.open_trapped_chest
scoreboard players operation @s ris.containers += @s ris.open_ender_chest
scoreboard players operation @s ris.containers += @s ris.open_shulker_box

execute if score @s[advancements={ris:ris/storage_solution/safe_keeping=false}] ris.open_ender_chest matches 1.. run advancement grant @s only ris:ris/storage_solution/safe_keeping

scoreboard players reset @s ris.open_barrel
scoreboard players reset @s ris.open_chest
scoreboard players reset @s ris.open_trapped_chest
scoreboard players reset @s ris.open_ender_chest
scoreboard players reset @s ris.open_shulker_box
# ---- ---- ---- ---- ---- ---- ---- ----

scoreboard players remove @s[scores={ris.drop_item=1..}] ris.drop_item 1

# item pickup range is 1.425 xz, -0.7~2.3 y
execute if entity @s[advancements={ris:special/customized/commander/stack_overflow=false}] at @s positioned ~-1.5 ~-0.9 ~-1.5 if entity @e[type=item,dx=2,dy=2.4,dz=2,tag=ris.stacked_unstackable] run advancement grant @s only ris:special/customized/commander/stack_overflow

# function ris:advancements/_speedometer