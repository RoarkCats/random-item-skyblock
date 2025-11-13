# run by custom_items/trader/trades as new wandering_trader (trade already added, editing it)
summon item ~ ~ ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
loot replace entity @n[type=item,tag=ris.blank_item] contents loot ris:alchemy/hint
data modify entity @s Offers.Recipes[-1].sell set from entity @n[type=item,tag=ris.blank_item] Item
kill @n[type=item,tag=ris.blank_item]