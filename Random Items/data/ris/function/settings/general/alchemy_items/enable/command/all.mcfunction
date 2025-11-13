#playsound block.enchantment_table.use master @s ~ ~ ~ 8 1
playsound block.grindstone.use master @s ~ ~ ~ 8 1.1

scoreboard players set command/chain ris.alchemy_item_settings 1
scoreboard players set command/repeat ris.alchemy_item_settings 1
scoreboard players set command/chain_repeat ris.alchemy_item_settings 1
scoreboard players set command/minecart ris.alchemy_item_settings 1
scoreboard players set command/chain_minecart ris.alchemy_item_settings 1
scoreboard players set command/repeat_minecart ris.alchemy_item_settings 1

title @s actionbar {"text":"Enabled All Command Items Individually","color":"dark_green"}


data modify storage ris:random menu set value "settings/alchemy_items/command"
function ris:msgs/_refresh_menu with storage ris:random