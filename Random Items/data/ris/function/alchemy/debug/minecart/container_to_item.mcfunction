tag @s remove ris.blank_item

# set container item
loot replace entity @s contents mine ~ ~ ~ stone[minecraft:enchantments={levels:{silk_touch:1}}]
execute unless items entity @s contents #shulker_boxes run item modify entity @s contents {function:"set_lore", mode:"append", lore:[{"text":"Contains items","color":"gray","italic":false}]}

# copy other components
data modify entity @s Item.components."minecraft:lock" set from block ~ ~ ~ lock
data modify entity @s Item.components."minecraft:custom_name" set from block ~ ~ ~ CustomName
data modify entity @s Item.components."minecraft:container_loot".loot_table set from block ~ ~ ~ LootTable
execute if block ~ ~ ~ chiseled_bookshelf run function ris:alchemy/debug/minecart/chiseled_bookshelf

# fill container items
execute if data block ~ ~ ~ item run data modify entity @s Item.components."minecraft:container"[{slot:0}].item set from block ~ ~ ~ item
execute if data block ~ ~ ~ Items run function ris:alchemy/debug/minecart/items

setblock ~ ~ ~ air