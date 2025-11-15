execute if score shulker_dupe ris.settings matches 1 run advancement grant @p[distance=..16,gamemode=!spectator] only ris:alchemy/transmutation/1_shulker_2_shulker
execute if score shulker_dupe ris.settings matches 1 run return run data merge entity @s {Item:{count:4}}
# else
execute store result score rng ris.rng run random value 0..2
execute store result entity @s Item.count int 1 run scoreboard players get rng ris.rng
execute if score rng ris.rng matches 0 run tag @s add ris.dead

execute if score rng ris.rng matches 2.. run advancement grant @p[distance=..16,gamemode=!spectator] only ris:alchemy/transmutation/1_shulker_2_shulker

# easter egg
execute if score rng ris.rng matches 2.. run playsound gsfx:gambling_win block @a ~ ~ ~ 1 1
execute if score rng ris.rng matches ..1 run playsound gsfx:gambling_lose block @a ~ ~ ~ 1 1