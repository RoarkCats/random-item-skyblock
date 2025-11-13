scoreboard players set #success ris.rng 0
execute as @n[type=wandering_trader,tag=ris.trader,distance=..1.5] at @s run function ris:alchemy/knowledge/debug/reroll
execute if score #success ris.rng matches 0 run return 0

particle crit ~ ~0.5 ~ 0 0 0 0 1
playsound block.amethyst_cluster.break neutral @a ~ ~ ~ 1 1.4
kill @s[type=item]