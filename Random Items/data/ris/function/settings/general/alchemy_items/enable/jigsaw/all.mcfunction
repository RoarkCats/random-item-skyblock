#playsound block.enchantment_table.use master @s ~ ~ ~ 8 1
playsound block.grindstone.use master @s ~ ~ ~ 8 1.1

scoreboard players set jigsaw/structure ris.alchemy_item_settings 1
scoreboard players set jigsaw/minecart ris.alchemy_item_settings 1
scoreboard players set jigsaw/command ris.alchemy_item_settings 1
scoreboard players set jigsaw/chain ris.alchemy_item_settings 1
scoreboard players set jigsaw/repeat ris.alchemy_item_settings 1

title @s actionbar {"text":"Enabled All Jigsaw Items Individually","color":"dark_green"}


data modify storage ris:random menu set value "settings/alchemy_items/jigsaw"
function ris:msgs/_refresh_menu with storage ris:random