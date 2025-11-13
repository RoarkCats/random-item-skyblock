tag @s remove ris.blank_item

loot replace entity @s contents loot ris:loot/all
#loot replace entity @s contents loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:loot_table","value":"ris:loot/all","functions":[{"function":"minecraft:limit_count","limit":1}]}]}]}

execute unless items entity @s contents * run function ris:alchemy/command/repeat_minecart/new_item
# generates nothing sometimes, "Dropped 0 [Air]" (result 1) or "Dropped 0 items" (result 0), only wait to detect and fix