# only run as blank_item from ../knowledge/chain/multiply_trades when a stack is being sold (stack trader) 
data modify entity @s Item set from storage ris:random trades[0].buy
execute unless items entity @s contents *[max_stack_size=64] unless items entity @s contents #bundles store result entity @s Item.components.minecraft:max_stack_size int 1 run function ris:alchemy/knowledge/command/get_new_stack_size
item modify entity @s contents {"function":"set_count","count":64}
execute if items entity @s contents *[custom_data~{ris:{custom_item:1b}}] run item modify entity @s contents {function:"set_count",count:{type:"score",target:{type:"fixed",name:"cmd_special_items"},score:"ris.settings"}}

data modify storage ris:random trades[0].buy set from storage ris:random trades[0].sell
data remove storage ris:random trades[0].buy.components.minecraft:max_stack_size
data modify storage ris:random trades[0].buy.count set value 1

data modify storage ris:random trades[0].sell set from entity @s Item