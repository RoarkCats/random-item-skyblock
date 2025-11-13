execute unless score cmd_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item
execute if score cmd_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item_trader
tag @s remove ris.blank_item

data merge entity @s {Item:{count:64}}

execute unless items entity @s contents *[custom_data~{ris:{custom_item:1b}}] run return 1
execute if score cmd_special_items ris.settings matches 0..63 store result entity @s Item.count int 1 run scoreboard players get cmd_special_items ris.settings