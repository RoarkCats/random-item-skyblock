execute if score trader_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1.. run loot replace entity @s contents loot ris:random_item

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].buy set from entity @s Item

execute if score trader_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1.. run loot replace entity @s contents loot ris:random_item

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].buyB set from entity @s Item


execute if score trader_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1.. run loot replace entity @s contents loot ris:random_item

execute unless items entity @s contents *[max_stack_size=64] unless items entity @s contents #bundles store result entity @s Item.components.minecraft:max_stack_size int 1 run function ris:alchemy/knowledge/command/get_new_stack_size
item modify entity @s contents {"function":"set_count","count":64}
execute if items entity @s contents *[custom_data~{ris:{custom_item:1b}}] run item modify entity @s contents {function:"set_count",count:{type:"score",target:{type:"fixed",name:"cmd_special_items"},score:"ris.settings"}}

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].sell set from entity @s Item

execute if score trader_special_items ris.settings matches 2 if items entity @s contents *[custom_data~{ris:{custom_item:1b}}] store result entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].maxUses int 1 run scoreboard players get cmd_special_items ris.settings




kill @s[type=item]