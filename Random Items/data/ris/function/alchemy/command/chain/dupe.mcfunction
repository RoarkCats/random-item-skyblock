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

execute if entity @s[tag=ris.contains_items,predicate=ris:filled_bundles_container] run function ris:custom_items/chain/drop_container_bundles


# Dupe
playsound block.amethyst_cluster.break block @a ~ ~ ~ 1 1

execute if entity @s[tag=ris.components] run function ris:item_modifier/_util/pre_dupe
execute store result score rng ris.rng run random value 0..99
scoreboard players operation rng1 ris.rng = rng ris.rng
execute unless items entity @s contents #bundles unless entity @s[tag=ris.contains_items] store result entity @s Item.components.minecraft:max_stack_size int 1 run scoreboard players get rng ris.rng
execute if score unstackable_dupe_count ris.settings matches 1..15 if items entity @s contents #ris:unstackable run scoreboard players operation rng ris.rng *= unstackable_dupe_count ris.settings
execute if score unstackable_dupe_count ris.settings matches 1..15 if items entity @s contents #ris:unstackable run scoreboard players operation rng ris.rng /= #16 ris.timer
execute unless entity @s[tag=!ris.schematic,tag=!ris.components] run scoreboard players operation rng ris.rng /= #8 ris.timer
execute unless entity @s[tag=!ris.contains_items] run scoreboard players operation rng ris.rng /= #16 ris.timer
execute store result entity @s Item.count int 1 run scoreboard players get rng ris.rng
execute if score rng ris.rng matches 0 run tag @s add ris.dead

execute if score rng1 ris.rng matches 65.. run advancement grant @p[distance=..16] only ris:alchemy/transmutation/bigger_stacks
execute if score rng1 ris.rng matches 80.. run playsound gsfx:gambling_win block @a ~ ~ ~ 1 1
execute if score rng1 ris.rng matches ..79 run playsound gsfx:gambling_lose block @a ~ ~ ~ 1 1

execute if entity @s[tag=ris.dead] run function ris:alchemy/break

tag @s add ris.spawned_item
function ris:custom_items/tag_item

setblock ~ ~-0.5 ~ air