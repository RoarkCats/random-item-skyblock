# Run by /alchemy/_recipe/recipes as/at item
# Notable tags: this (@s), that, ris.recipe (this or that)

execute if score double/command ris.alchemy_item_settings matches 1 if entity @s[tag=ris.command_block] if entity @n[type=item,tag=that,tag=ris.command_block] run return 0
execute if score double/chain ris.alchemy_item_settings matches 1 if entity @s[tag=ris.chain_command_block] if entity @n[type=item,tag=that,tag=ris.chain_command_block] run return 1
execute if score double/repeat ris.alchemy_item_settings matches 1 if entity @s[tag=ris.repeating_command_block] if entity @n[type=item,tag=that,tag=ris.repeating_command_block] run return 2
execute if score double/minecart ris.alchemy_item_settings matches 1 if entity @s[tag=ris.command_block_minecart] if entity @n[type=item,tag=that,tag=ris.command_block_minecart] run return 3
execute if score double/structure ris.alchemy_item_settings matches 1 if entity @s[tag=ris.structure_block] if entity @n[type=item,tag=that,tag=ris.structure_block] run return 4
execute if score double/jigsaw ris.alchemy_item_settings matches 1 if entity @s[tag=ris.jigsaw] if entity @n[type=item,tag=that,tag=ris.jigsaw] run return 5
execute if score double/debug ris.alchemy_item_settings matches 1 if entity @s[tag=ris.debug_stick] if entity @n[type=item,tag=that,tag=ris.debug_stick] run return 6
execute if score double/knowledge ris.alchemy_item_settings matches 1 if entity @s[tag=ris.knowledge_book] if entity @n[type=item,tag=that,tag=ris.knowledge_book] run return 7

execute if score command/chain ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.command_block] if entity @n[type=item,tag=ris.recipe,tag=ris.chain_command_block] run return 8
execute if score command/repeat ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.command_block] if entity @n[type=item,tag=ris.recipe,tag=ris.repeating_command_block] run return 9
execute if score command/chain_repeat ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.chain_command_block] if entity @n[type=item,tag=ris.recipe,tag=ris.repeating_command_block] run return 10

execute if score command/minecart ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.command_block_minecart] if entity @n[type=item,tag=ris.recipe,tag=ris.command_block] run return 11
execute if score command/chain_minecart ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.command_block_minecart] if entity @n[type=item,tag=ris.recipe,tag=ris.chain_command_block] run return 12
execute if score command/repeat_minecart ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.command_block_minecart] if entity @n[type=item,tag=ris.recipe,tag=ris.repeating_command_block] run return 13

execute if score structure/minecart ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.structure_block] if entity @n[type=item,tag=ris.recipe,tag=ris.command_block_minecart] run return 14
execute if score structure/command ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.structure_block] if entity @n[type=item,tag=ris.recipe,tag=ris.command_block] run return 15
execute if score structure/chain ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.structure_block] if entity @n[type=item,tag=ris.recipe,tag=ris.chain_command_block] run return 16
execute if score structure/repeat ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.structure_block] if entity @n[type=item,tag=ris.recipe,tag=ris.repeating_command_block] run return 17

execute if score jigsaw/structure ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.jigsaw] if entity @n[type=item,tag=ris.recipe,tag=ris.structure_block] run return 18
execute if score jigsaw/minecart ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.jigsaw] if entity @n[type=item,tag=ris.recipe,tag=ris.command_block_minecart] run return 19
execute if score jigsaw/command ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.jigsaw] if entity @n[type=item,tag=ris.recipe,tag=ris.command_block] run return 20
execute if score jigsaw/chain ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.jigsaw] if entity @n[type=item,tag=ris.recipe,tag=ris.chain_command_block] run return 21
execute if score jigsaw/repeat ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.jigsaw] if entity @n[type=item,tag=ris.recipe,tag=ris.repeating_command_block] run return 22

execute if score debug/jigsaw ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.debug_stick] if entity @n[type=item,tag=ris.recipe,tag=ris.jigsaw] run return 23
execute if score debug/structure ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.debug_stick] if entity @n[type=item,tag=ris.recipe,tag=ris.structure_block] run return 24
execute if score debug/minecart ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.debug_stick] if entity @n[type=item,tag=ris.recipe,tag=ris.command_block_minecart] run return 25
execute if score debug/command ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.debug_stick] if entity @n[type=item,tag=ris.recipe,tag=ris.command_block] run return 26
execute if score debug/chain ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.debug_stick] if entity @n[type=item,tag=ris.recipe,tag=ris.chain_command_block] run return 27
execute if score debug/repeat ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.debug_stick] if entity @n[type=item,tag=ris.recipe,tag=ris.repeating_command_block] run return 28

execute if score knowledge/debug ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.knowledge_book] if entity @n[type=item,tag=ris.recipe,tag=ris.debug_stick] run return 29
execute if score knowledge/jigsaw ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.knowledge_book] if entity @n[type=item,tag=ris.recipe,tag=ris.jigsaw] run return 30
execute if score knowledge/structure ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.knowledge_book] if entity @n[type=item,tag=ris.recipe,tag=ris.structure_block] run return 31
execute if score knowledge/minecart ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.knowledge_book] if entity @n[type=item,tag=ris.recipe,tag=ris.command_block_minecart] run return 32
execute if score knowledge/command ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.knowledge_book] if entity @n[type=item,tag=ris.recipe,tag=ris.command_block] run return 33
execute if score knowledge/chain ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.knowledge_book] if entity @n[type=item,tag=ris.recipe,tag=ris.chain_command_block] run return 34
execute if score knowledge/repeat ris.alchemy_item_settings matches 1 if entity @n[type=item,tag=ris.recipe,tag=ris.knowledge_book] if entity @n[type=item,tag=ris.recipe,tag=ris.repeating_command_block] run return 35

return -1