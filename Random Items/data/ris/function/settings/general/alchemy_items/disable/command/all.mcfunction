playsound block.grindstone.use master @s ~ ~ ~ 8 0.9

scoreboard players set command/chain ris.alchemy_item_settings 0
scoreboard players set command/repeat ris.alchemy_item_settings 0
scoreboard players set command/chain_repeat ris.alchemy_item_settings 0
scoreboard players set command/minecart ris.alchemy_item_settings 0
scoreboard players set command/chain_minecart ris.alchemy_item_settings 0
scoreboard players set command/repeat_minecart ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled All Command Items Individually","color":"dark_red"}


data modify storage ris:random menu set value "settings/alchemy_items/command"
function ris:msgs/_refresh_menu with storage ris:random