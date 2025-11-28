execute as @a[advancements={ris:special/customized/skull_enthusiast={player_head=false}}] run function ris:advancements/player_head_checks

execute as @a[advancements={ris:ris/liquid_at_last/cobblestone_generator=false}] at @s run function ris:advancements/cobblestone_generator
execute as @e[type=marker,tag=ris.cobble_gen] at @s unless entity @a[advancements={ris:ris/liquid_at_last/cobblestone_generator=false},distance=..8] run kill @s

execute as @e[type=#ris:chest_boat,tag=ris.air_lift] at @s run function ris:advancements/air_lift

scoreboard players remove @a[scores={ris.bundle_use=1..}] ris.bundle_use 1

execute as @a run function ris:advancements/scale

scoreboard players remove @a[scores={ris.mined_snow=10..}] ris.mined_snow 10



schedule function ris:advancements/main_20 20t