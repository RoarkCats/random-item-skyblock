# run at multiplier as item


# Checks
execute if items entity @s contents *[!count=1] run return run function ris:custom_items/chain/fail

execute if entity @s[tag=ris.transmuted,tag=!ris.schematic] run return run function ris:advancements/nice_try
execute if entity @s[tag=ris.chain_command_block] run return run function ris:advancements/nice_try
execute if items entity @s contents #bundles[!bundle_contents=[]] run return run function ris:custom_items/chain/fail

execute if score written_book_dupe ris.settings matches 0 if items entity @s contents written_book run return run function ris:custom_items/chain/fail

execute if score special_item_dupe ris.settings matches 0 if items entity @s contents #ris:dupe_blacklist run return run function ris:advancements/nice_try

execute if score shulker_dupe ris.settings matches 0 if entity @s[tag=ris.contains_items] run return run function ris:custom_items/chain/fail
execute if score shulker_dupe ris.settings matches 1 if score written_book_dupe ris.settings matches 0 if items entity @s[tag=ris.contains_items] contents *[container~{items:{contains:[{items:"written_book"}]}}] run return run function ris:custom_items/chain/fail
execute if score shulker_dupe ris.settings matches 1 if score special_item_dupe ris.settings matches 0 if items entity @s[tag=ris.contains_items] contents *[container~{items:{contains:[{items:"#ris:dupe_blacklist"}]}}] run return run function ris:advancements/nice_try
execute if score shulker_dupe ris.settings matches 1 if score special_item_dupe ris.settings matches 1 if items entity @s[tag=ris.contains_items] contents *[container~{items:{contains:[{items:"chain_command_block"}]}}] run return run function ris:advancements/nice_try
execute if score shulker_dupe ris.settings matches 1 if entity @s[tag=ris.contains_items,predicate=ris:contains_transmuted] run return run function ris:advancements/nice_try

execute if items entity @s contents *[custom_data~{ris:{converts_to_special:1b}}] run return run function ris:advancements/nice_try

execute if entity @s[tag=ris.contains_items,predicate=ris:contains_nested_container] run function ris:custom_items/chain/drop_nested_containers


# Dupe
playsound block.beacon.power_select block @a ~ ~ ~ 1 0.9

execute if entity @s[tag=ris.components] run function ris:item_modifier/_util/pre_dupe
data merge entity @s {Item:{count:16}}
execute if score unstackable_dupe_count ris.settings matches 1..15 if items entity @s contents #ris:unstackable store result entity @s Item.count int 1 run scoreboard players get unstackable_dupe_count ris.settings
execute unless entity @s[tag=!ris.schematic,tag=!ris.components] run data merge entity @s {Item:{count:4}}
execute if score shulker_dupe ris.settings matches 1 if entity @s[tag=ris.contains_items] run data merge entity @s {Item:{count:2}}
execute store result score #temp ris.timer run data get entity @s Item.components.minecraft:max_stack_size
execute if score #temp ris.timer matches 0 store result score #temp ris.timer run function ris:alchemy/custom_stack_none
execute if score #temp ris.timer matches ..15 unless items entity @s contents #bundles unless entity @s[tag=ris.contains_items] run data merge entity @s {Item:{components:{"minecraft:max_stack_size":16}}}
execute if entity @s[tag=ris.contains_items,predicate=ris:contains_component_item] run function ris:custom_items/chain/lock_container_component_items

tag @s add ris.spawned_item
function ris:custom_items/tag_item

setblock ~ ~-0.5 ~ air