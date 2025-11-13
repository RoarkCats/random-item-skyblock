playsound block.grindstone.use master @s ~ ~ ~ 8 0.9

scoreboard players set jigsaw/structure ris.alchemy_item_settings 0
scoreboard players set jigsaw/minecart ris.alchemy_item_settings 0
scoreboard players set jigsaw/command ris.alchemy_item_settings 0
scoreboard players set jigsaw/chain ris.alchemy_item_settings 0
scoreboard players set jigsaw/repeat ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled All Jigsaw Items Individually","color":"dark_red"}


data modify storage ris:random menu set value "settings/alchemy_items/jigsaw"
function ris:msgs/_refresh_menu with storage ris:random