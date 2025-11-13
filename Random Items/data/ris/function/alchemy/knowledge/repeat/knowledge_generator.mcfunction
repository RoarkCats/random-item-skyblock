# run from alchemy/generator as/at @e[tag=ris.knowledge_generator]

execute positioned ~ ~.5 ~ align xyz as @n[type=wandering_trader,tag=ris.trader,dx=0] at @s run return run function ris:alchemy/knowledge/repeat/trader
# no trader present effects
particle totem_of_undying ~ ~.7 ~ 0 0 0 0.1 4