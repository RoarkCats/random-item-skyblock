fill ~-4 ~-2 ~-4 ~4 ~4 ~4 stone replace #ris:jigsaw_replaceable

# set entrance direction near player (else -z/north)
scoreboard players set #entrance_chosen ris.rng 0
execute if score #entrance_chosen ris.rng matches 0 positioned ~4 ~ ~ if entity @p[distance=..5,gamemode=!spectator] store success score #entrance_chosen ris.rng run fill ~ ~ ~ ~-4 ~1 ~ air replace stone
execute if score #entrance_chosen ris.rng matches 0 positioned ~-4 ~ ~ if entity @p[distance=..5,gamemode=!spectator] store success score #entrance_chosen ris.rng run fill ~ ~ ~ ~4 ~1 ~ air replace stone
execute if score #entrance_chosen ris.rng matches 0 positioned ~ ~ ~4 if entity @p[distance=..5,gamemode=!spectator] store success score #entrance_chosen ris.rng run fill ~ ~ ~ ~ ~1 ~-4 air replace stone
execute if score #entrance_chosen ris.rng matches 0 positioned ~ ~ ~-4 run fill ~ ~ ~ ~ ~1 ~4 air replace stone

execute store success score #success ris.rng run place feature monster_room

fill ~-4 ~-2 ~-4 ~4 ~4 ~4 air replace stone
execute if score #success ris.rng matches 0 run return fail

# add cobblestone roof
execute if block ~3 ~ ~ cobblestone if block ~ ~ ~3 cobblestone run fill ~-3 ~4 ~-3 ~3 ~4 ~3 cobblestone replace #ris:jigsaw_replaceable
execute if block ~4 ~ ~ cobblestone if block ~ ~ ~3 cobblestone run fill ~-4 ~4 ~-3 ~4 ~4 ~3 cobblestone replace #ris:jigsaw_replaceable
execute if block ~3 ~ ~ cobblestone if block ~ ~ ~4 cobblestone run fill ~-3 ~4 ~-4 ~3 ~4 ~4 cobblestone replace #ris:jigsaw_replaceable
execute if block ~4 ~ ~ cobblestone if block ~ ~ ~4 cobblestone run fill ~-4 ~4 ~-4 ~4 ~4 ~4 cobblestone replace #ris:jigsaw_replaceable