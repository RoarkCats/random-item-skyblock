# run as blank_item from ../knowledge/chain/multiply_trades, at trader
particle totem_of_undying ~ ~1.5 ~ 0.2 0.4 0.2 0.3 3

data modify storage ris:random trades[0].priceMultiplier set value 1f

execute store result score rng1 ris.rng run random value 1..100
execute if score rng1 ris.rng > trade_multiply_chance ris.settings run data modify entity @s Item set from storage ris:random trades[0].buy
execute if score rng1 ris.rng <= trade_multiply_chance ris.settings run data modify entity @s Item set from storage ris:random trades[0].sell

execute unless items entity @s contents *[count=1] run return run function ris:alchemy/knowledge/chain/half_price
execute if items entity @s contents *[count=1] run data modify entity @s Item.count set value 16
execute if score shulker_dupe ris.settings matches 0 if items entity @s contents *[container_loot] run data modify entity @s Item.count set value 4
execute if score special_item_dupe ris.settings matches 0 if items entity @s contents *[custom_data~{ris:{custom_item:1b}}] run data modify entity @s Item.count set value 4
execute if items entity @s contents *[max_stack_size=1] unless items entity @s contents #bundles run data modify entity @s Item.components.minecraft:max_stack_size set value 16

execute if score rng1 ris.rng > trade_multiply_chance ris.settings run data modify storage ris:random trades[0].buy set from entity @s Item
execute if score rng1 ris.rng <= trade_multiply_chance ris.settings run return run data modify storage ris:random trades[0].sell set from entity @s Item

# multiply second buy item (if multiplying buy items and exists)
execute unless data storage ris:random trades[0].buyB run return 1
data modify entity @s Item set from storage ris:random trades[0].buyB

execute if items entity @s contents *[count=1] run data modify entity @s Item.count set value 16
execute if score shulker_dupe ris.settings matches 0 if items entity @s contents *[container_loot] run data modify entity @s Item.count set value 4
execute if score special_item_dupe ris.settings matches 0 if items entity @s contents *[custom_data~{ris:{custom_item:1b}}] run data modify entity @s Item.count set value 4
execute if items entity @s contents *[max_stack_size=1] unless items entity @s contents #bundles run data modify entity @s Item.components.minecraft:max_stack_size set value 16

data modify storage ris:random trades[0].buyB set from entity @s Item