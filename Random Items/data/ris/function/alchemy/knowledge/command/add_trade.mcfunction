data modify entity @s Offers.Recipes append value {rewardExp:0b,maxUses:2147483647,buy:{id:"minecraft:stone"},sell:{id:"minecraft:stone"}}

summon item ~ ~ ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
execute as @n[type=item,tag=ris.blank_item] run function ris:alchemy/knowledge/command/trade_items