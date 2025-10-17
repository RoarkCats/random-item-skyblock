execute align xyz positioned ~0.5 ~-0.5 ~0.5 run function ris:custom_items/repeat/repeat

tp @r[tag=!ris.tp] ~ ~ ~
spawnpoint @p[tag=!ris.tp] ~ ~ ~

gamemode survival @p
clear @p
xp set @p 0 levels
xp set @p 0 points
effect give @p regeneration 1 255 true
effect give @p saturation 1 255 true

tag @p add ris.tp
tag @s add ris.p2