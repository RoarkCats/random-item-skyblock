execute if score trader_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1.. run loot replace entity @s contents loot ris:random_item

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].buy set from entity @s Item


item replace entity @s contents with jigsaw[rarity=rare,custom_data={ris:{custom_item:1b,transmuted:1b,function:"knowledge/jigsaw/jigsaw",feature:""}}]
execute store result score rng1 ris.rng run random value 0..137
execute store result entity @s Item.components.minecraft:custom_data.ris.feature int 1 run scoreboard players get rng1 ris.rng
function ris:alchemy/knowledge/jigsaw/get_feature_name
item modify entity @s contents [{"function":"set_lore","entity":"this","lore":[[{"text":"Feature: ","italic":false,"color":"gray"},{"nbt":"feature","storage":"ris:random"}]],"mode":"append"}]

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].sell set from entity @s Item



kill @s[type=item]