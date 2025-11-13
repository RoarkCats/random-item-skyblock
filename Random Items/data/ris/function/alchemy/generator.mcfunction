scoreboard players operation #temp ris.generator = generator ris.generator
scoreboard players operation #temp ris.generator %= @s ris.generator
execute unless score #temp ris.generator matches 0 run return 0

execute if block ~ ~-0.5 ~ repeating_command_block{powered:1b} run return run function ris:custom_items/repeat/off

execute if score command/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.stack_generator] run return run function ris:alchemy/command/repeat/stack_generator
execute if score double/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.component_generator] run return run function ris:alchemy/double/repeat/component_generator
execute if score command/repeat_minecart ris.alchemy_item_settings matches 1 if entity @s[tag=ris.loot_generator] run return run function ris:alchemy/command/repeat_minecart/loot_generator
execute if score structure/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.structure_generator] run return run tag @s add ris.generate
execute if score jigsaw/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.feature_generator] run return run tag @s add ris.generate
execute if score debug/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.block_miner_generator] run return run function ris:alchemy/debug/repeat/block_miner_generator
execute if score knowledge/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.knowledge_generator] run return run function ris:alchemy/knowledge/repeat/knowledge_generator