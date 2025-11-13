execute if entity @s[tag=ris.tagged_item,tag=ris.schematic] run function ris:advancements/standardized_blueprints
# will only trigger if tag_item rerun by dupe function
tag @s add ris.tagged_item

tag @s[nbt={Age:0s,PickupDelay:10s}] add ris.spawned_item
tag @s[nbt={Age:0s,PickupDelay:0s}] add ris.spawned_item
execute if entity @s[nbt={Age:1s,PickupDelay:0s}] run function ris:dispensable/item
execute if data entity @s Item.components.minecraft:max_stack_size run tag @s add ris.custom_stack
execute if items entity @s contents *[container~{items:{contains:[{}]}}|container_loot] run tag @s add ris.contains_items
execute if items entity @s contents *[max_stack_size=1,count~{min:2}] run tag @s add ris.stacked_unstackable

execute if entity @s[tag=ris.spawned_item] run return run tag @s add ris.normal_item
execute unless items entity @s contents *[count=1] run return run tag @s add ris.normal_item
execute if items entity @s contents paper[custom_data~{ris:{transmuted:1b}}] run return run function ris:alchemy/jigsaw/chain/tag_item
execute if data entity @s Item.components.minecraft:custom_data.ris.components run function ris:alchemy/command/chain_repeat/tag_item
execute if items entity @s contents written_book[custom_data~{ris:{transmuted:1b}}] run return run function ris:alchemy/book/tag_item
execute unless items entity @s contents #ris:custom_items run return run tag @s add ris.normal_item

# execute if data entity @s Thrower run tag @s add ris.hand_dropped

execute if items entity @s contents repeating_command_block[custom_data~{ris:{function:"debug/repeat"}}] run function ris:alchemy/debug/repeat/get_dir
execute if items entity @s contents *[custom_data~{ris:{transmuted:1b}}] run tag @s add ris.transmuted
execute if entity @s[tag=ris.transmuted] run return 0

execute if items entity @s contents command_block run tag @s add ris.command_block
execute if items entity @s contents chain_command_block run tag @s add ris.chain_command_block
execute if items entity @s contents repeating_command_block run tag @s add ris.repeating_command_block
execute if items entity @s contents command_block_minecart run tag @s add ris.command_block_minecart
execute if items entity @s contents structure_block run tag @s add ris.structure_block
execute if items entity @s contents jigsaw run tag @s add ris.jigsaw
execute if items entity @s contents debug_stick run tag @s add ris.debug_stick
execute if items entity @s contents knowledge_book run tag @s add ris.knowledge_book

return 0


# tellraw @a [{"nbt":"Item.id","entity":"@s"}," {PickupDelay: ",{"nbt":"PickupDelay","entity":"@s"},", Age: ",{"nbt":"Age","entity":"@s"},"}"]
#
# player drop/kill : {Age:0s,PickupDelay:40s}
# some non-player block drops, loot spawn : {Age:1s,PickupDelay:9s}
# blocks drops, mob drops, item frame, jukebox, allay : {Age:0s,PickupDelay:10s}
# ominious item spawner, container items, vault/spawner loot : {Age:0s,PickupDelay:0s}
# dispenser/dropper, crafter : {Age:1s,PickupDelay:0s}
# give command : {Age:5999s,32767s}