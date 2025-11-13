#playsound block.enchantment_table.use master @s ~ ~ ~ 8 1
playsound block.grindstone.use master @s ~ ~ ~ 8 1.1

scoreboard players set structure/minecart ris.alchemy_item_settings 1
scoreboard players set structure/command ris.alchemy_item_settings 1
scoreboard players set structure/chain ris.alchemy_item_settings 1
scoreboard players set structure/repeat ris.alchemy_item_settings 1

title @s actionbar {"text":"Enabled All Structure Items Individually","color":"dark_green"}


data modify storage ris:random menu set value "settings/alchemy_items/structure"
function ris:msgs/_refresh_menu with storage ris:random