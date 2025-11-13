playsound block.grindstone.use master @s ~ ~ ~ 8 0.9

scoreboard players set structure/minecart ris.alchemy_item_settings 0
scoreboard players set structure/command ris.alchemy_item_settings 0
scoreboard players set structure/chain ris.alchemy_item_settings 0
scoreboard players set structure/repeat ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled All Structure Items Individually","color":"dark_red"}


data modify storage ris:random menu set value "settings/alchemy_items/structure"
function ris:msgs/_refresh_menu with storage ris:random