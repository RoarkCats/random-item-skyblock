scoreboard players operation #temp ris.generator = generator ris.generator
scoreboard players operation #temp ris.generator %= @s ris.generator
execute unless score #temp ris.generator matches 0 run return run function ris:custom_items/repeat/delay_particle

# Checks
tag @s remove ris.gen_off
execute if block ~ ~-0.5 ~ repeating_command_block{powered:1b} run return run function ris:custom_items/repeat/off

execute unless entity @s[tag=ris.block_miner_generator] positioned ~ ~0.4 ~ run function ris:custom_items/repeat/lazy_load_prot
execute if entity @s[tag=!ris.block_miner_generator,tag=ris.gen_unloaded] run return 0

# Generate
execute if score command/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.stack_generator] run return run function ris:alchemy/command/repeat/stack_generator
execute if score double/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.component_generator] run return run function ris:alchemy/double/repeat/component_generator
execute if score command/repeat_minecart ris.alchemy_item_settings matches 1 if entity @s[tag=ris.loot_generator] run return run function ris:alchemy/command/repeat_minecart/loot_generator
execute if score structure/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.structure_generator] run return run tag @s add ris.generate
execute if score jigsaw/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.feature_generator] run return run tag @s add ris.generate
execute if score debug/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.block_miner_generator] run return run function ris:alchemy/debug/repeat/block_miner_generator
execute if score knowledge/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.knowledge_generator] run return run function ris:alchemy/knowledge/repeat/knowledge_generator