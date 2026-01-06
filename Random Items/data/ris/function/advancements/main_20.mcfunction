execute as @a[advancements={ris:special/customized/skull_enthusiast={player_head=false}}] run function ris:advancements/player_head_checks

execute as @a[advancements={ris:ris/liquid_at_last/cobblestone_generator=false}] at @s run function ris:advancements/cobblestone_generator
execute as @e[type=marker,tag=ris.cobble_gen] at @s unless entity @a[advancements={ris:ris/liquid_at_last/cobblestone_generator=false},distance=..8] run kill @s

execute as @e[type=#ris:chest_boat,tag=ris.air_lift] at @s run function ris:advancements/air_lift

scoreboard players remove @a[scores={ris.bundle_use=1..}] ris.bundle_use 1

execute as @a run function ris:advancements/scale

scoreboard players remove @a[scores={ris.mined_snow=10..}] ris.mined_snow 10

# playtime ratings notification (active playtime: 3h)
scoreboard players add @a ris.afk 1
scoreboard players set @a[predicate=ris:input] ris.afk 0
scoreboard players add @a[scores={ris.afk=..60}] ris.playtime 1
execute as @a[scores={ris.playtime=10800..},tag=!ris.ratings_msg,predicate=ris:input] run function ris:msgs/ratings


schedule function ris:advancements/main_20 20t