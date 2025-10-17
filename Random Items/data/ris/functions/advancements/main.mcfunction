scoreboard players remove @s[scores={ris.sweaty_palms=1..}] ris.sweaty_palms 1

execute if score @s ris.time_since_death matches 1 run tag @s[tag=ris.a_dance_with_death] remove ris.a_dance_with_death

execute as @a[scores={ris.use_bundle=1..}] at @s run function ris:advancements/bundle

# Storage Solution & Container Chaos ----
scoreboard players operation @s ris.containers += @s ris.open_barrel
scoreboard players operation @s ris.containers += @s ris.open_chest
scoreboard players operation @s ris.containers += @s ris.open_trapped_chest
scoreboard players operation @s ris.containers += @s ris.open_ender_chest
scoreboard players operation @s ris.containers += @s ris.open_shulker_box

scoreboard players reset @s ris.open_barrel
scoreboard players reset @s ris.open_chest
scoreboard players reset @s ris.open_trapped_chest
scoreboard players reset @s ris.open_ender_chest
scoreboard players reset @s ris.open_shulker_box
# ---- ---- ---- ---- ---- ---- ---- ----