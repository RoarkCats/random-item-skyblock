## Alchemy Main ##
# run from main every tick if enabled

# Generators
execute as @e[tag=ris.alchemy_generator] at @s unless block ~ ~-0.5 ~ repeating_command_block run kill @s
execute if score time ris.timer >= delay ris.timer unless score item_giver ris.settings matches 0 unless score repeating_command_block ris.special_item_settings matches 0 as @e[tag=ris.alchemy_generator] at @s run function ris:alchemy/generator

# Crafting visuals
execute as @e[type=ominous_item_spawner,tag=ris.alchemy_craft] at @s run tp @s ~ ~.005 ~



# Multipliers
execute if score double/chain ris.alchemy_item_settings matches 1 as @e[tag=ris.super_multiplier] at @s run function ris:alchemy/double/chain/super_multiplier
execute if score command/chain ris.alchemy_item_settings matches 1 as @e[tag=ris.stack_gambler] at @s run function ris:alchemy/command/chain/gambler
execute if score command/chain_repeat ris.alchemy_item_settings matches 1 as @e[tag=ris.component_gambler] at @s run function ris:alchemy/command/chain_repeat/component_gambler
execute if score debug/chain ris.alchemy_item_settings matches 1 as @e[tag=ris.void_multiplier] at @s run function ris:alchemy/debug/chain/void_multiplier
execute if score knowledge/chain ris.alchemy_item_settings matches 1 as @e[tag=ris.knowledge_multiplier] at @s run function ris:alchemy/knowledge/chain/knowledge_multiplier

# Structure/Feature Generators
execute if score structure/repeat ris.alchemy_item_settings matches 1 as @n[tag=ris.generate,tag=ris.structure_generator] at @s run function ris:alchemy/structure/repeat/structure_generator
execute if score jigsaw/repeat ris.alchemy_item_settings matches 1 as @n[tag=ris.generate,tag=ris.feature_generator] at @s run function ris:alchemy/jigsaw/repeat/feature_generator

# Vein Miners
execute if score debug/repeat ris.alchemy_item_settings matches 1 as @e[type=marker,tag=ris.vein] at @s run function ris:alchemy/debug/jigsaw/tick_n