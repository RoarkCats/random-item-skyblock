scoreboard players remove @s[scores={ris.sweaty_palms=1..}] ris.sweaty_palms 1

execute if score @s ris.time_since_death matches 1 run tag @s[tag=ris.a_dance_with_death] remove ris.a_dance_with_death

execute as @a[scores={ris.use_bundle=1..}] at @s run function ris:advancements/bundle

execute as @a[scores={ris.pedro=1..},advancements={ris:pedro=false}] at @s run function ris:advancements/pedro

scoreboard players reset @a[scores={ris.mined_ender_chest=0}] ris.mined_ender_chest
scoreboard players remove @a[scores={ris.mined_ender_chest=1..}] ris.mined_ender_chest 1

# Storage Solution & Container Chaos, +Safe Keeping ----
scoreboard players operation @s ris.containers += @s ris.open_barrel
scoreboard players operation @s ris.containers += @s ris.open_chest
scoreboard players operation @s ris.containers += @s ris.open_trapped_chest
scoreboard players operation @s ris.containers += @s ris.open_ender_chest
scoreboard players operation @s ris.containers += @s ris.open_shulker_box

execute if score @s[advancements={ris:safe_keeping=false}] ris.open_ender_chest matches 1.. run advancement grant @s only ris:safe_keeping

scoreboard players reset @s ris.open_barrel
scoreboard players reset @s ris.open_chest
scoreboard players reset @s ris.open_trapped_chest
scoreboard players reset @s ris.open_ender_chest
scoreboard players reset @s ris.open_shulker_box
# ---- ---- ---- ---- ---- ---- ---- ----