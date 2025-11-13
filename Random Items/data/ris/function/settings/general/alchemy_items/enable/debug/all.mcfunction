#playsound block.enchantment_table.use master @s ~ ~ ~ 8 1
playsound block.grindstone.use master @s ~ ~ ~ 8 1.1

scoreboard players set debug/jigsaw ris.alchemy_item_settings 1
scoreboard players set debug/structure ris.alchemy_item_settings 1
scoreboard players set debug/minecart ris.alchemy_item_settings 1
scoreboard players set debug/command ris.alchemy_item_settings 1
scoreboard players set debug/chain ris.alchemy_item_settings 1
scoreboard players set debug/repeat ris.alchemy_item_settings 1

title @s actionbar {"text":"Enabled All Debug Items Individually","color":"dark_green"}


data modify storage ris:random menu set value "settings/alchemy_items/debug"
function ris:msgs/_refresh_menu with storage ris:random