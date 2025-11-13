# run at multiplier as item


# Checks
execute if items entity @s contents *[!count=1] run return run function ris:custom_items/chain/fail

execute if entity @s[tag=ris.transmuted,tag=!ris.schematic] run return run function ris:advancements/nice_try
execute if entity @s[tag=ris.chain_command_block] run return run function ris:advancements/nice_try
execute if items entity @s contents #bundles[!bundle_contents=[]] run return run function ris:custom_items/chain/fail

execute if score written_book_dupe ris.settings matches 0 if items entity @s contents written_book run return run function ris:custom_items/chain/fail
execute if score written_book_dupe ris.settings matches 0 if items entity @s[tag=ris.contains_items] contents *[container~{items:{contains:[{items:"written_book"}]}}] run return run function ris:custom_items/chain/fail

execute if score special_item_dupe ris.settings matches 0 if items entity @s contents #ris:dupe_blacklist run return run function ris:advancements/nice_try
execute if score special_item_dupe ris.settings matches 0 if items entity @s[tag=ris.contains_items] contents *[container~{items:{contains:[{items:"#ris:dupe_blacklist"}]}}] run return run function ris:advancements/nice_try
execute if score special_item_dupe ris.settings matches 1 if items entity @s[tag=ris.contains_items] contents *[container~{items:{contains:[{items:"chain_command_block"}]}}] run return run function ris:advancements/nice_try
execute if entity @s[tag=ris.contains_items,predicate=ris:contains_transmuted] run return run function ris:advancements/nice_try

execute if items entity @s contents *[custom_data~{ris:{converts_to_special:1b}}] run return run function ris:advancements/nice_try

execute if entity @s[tag=ris.contains_items,predicate=ris:filled_bundles_container] run function ris:custom_items/chain/drop_container_bundles


# Dupe
playsound block.beacon.power_select block @a ~ ~ ~ 1 1
playsound block.chorus_flower.grow block @a ~ ~ ~ 1 1
playsound block.chorus_flower.grow block @a ~ ~ ~ 1 1.2
playsound entity.shulker.shoot block @a ~ ~ ~ 1 0.5
#playsound block.shulker_box.open block @a ~ ~ ~ 1 1.2

execute unless entity @s[tag=ris.contains_items] run function ris:alchemy/double/chain/dupe_item
execute if entity @s[tag=ris.contains_items] run function ris:alchemy/double/chain/dupe_container

execute if entity @s[tag=ris.dead] run function ris:alchemy/break

tag @s add ris.spawned_item
function ris:custom_items/tag_item

setblock ~ ~-0.5 ~ air