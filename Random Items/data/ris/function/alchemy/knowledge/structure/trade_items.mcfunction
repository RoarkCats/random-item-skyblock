execute if score trader_special_items ris.settings matches 0 run loot replace entity @s contents loot ris:random_item_trader
execute if score trader_special_items ris.settings matches 1.. run loot replace entity @s contents loot ris:random_item

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].buy set from entity @s Item


scoreboard players operation #temp ris.timer = rng ris.rng
function ris:custom_items/structure/get_structure
scoreboard players operation rng ris.rng = #temp ris.timer
item replace entity @s contents with structure_block[rarity=rare,custom_data={ris:{custom_item:1b,transmuted:1b,function:"knowledge/structure/structure",structure:""}}]
data modify entity @s Item.components.minecraft:custom_data.ris.structure set from storage ris:random structure
item modify entity @s contents [{"function":"set_lore","entity":"this","lore":[[{"text":"Structure: ","italic":false,"color":"gray"},{"nbt":"structure","storage":"ris:random"}]],"mode":"append"}]

data modify entity @n[type=wandering_trader,tag=ris.trader] Offers.Recipes[-1].sell set from entity @s Item



kill @s[type=item]