particle totem_of_undying ~ ~1.5 ~ 0.2 0.5 0.2 0.3 3
playsound entity.wandering_trader.yes neutral @a ~ ~ ~ 1 1.1
playsound block.amethyst_cluster.fall neutral @a ~ ~ ~ 1 1.1

execute if entity @s[tag=!ris.loot_trader,tag=!ris.stack_trader,tag=!ris.feature_trader,tag=!ris.structure_trader] run return run function ris:custom_items/trader/add_trade

execute if entity @s[tag=ris.loot_trader] run return run function ris:alchemy/knowledge/minecart/add_trade
execute if entity @s[tag=ris.stack_trader] run return run function ris:alchemy/knowledge/command/add_trade
execute if entity @s[tag=ris.feature_trader] run return run function ris:alchemy/knowledge/jigsaw/add_trade
execute if entity @s[tag=ris.structure_trader] run return run function ris:alchemy/knowledge/structure/add_trade