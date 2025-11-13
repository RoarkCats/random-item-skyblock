playsound block.grindstone.use master @s ~ ~ ~ 8 0.9

scoreboard players set debug/jigsaw ris.alchemy_item_settings 0
scoreboard players set debug/structure ris.alchemy_item_settings 0
scoreboard players set debug/minecart ris.alchemy_item_settings 0
scoreboard players set debug/command ris.alchemy_item_settings 0
scoreboard players set debug/chain ris.alchemy_item_settings 0
scoreboard players set debug/repeat ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled All Debug Items Individually","color":"dark_red"}


data modify storage ris:random menu set value "settings/alchemy_items/debug"
function ris:msgs/_refresh_menu with storage ris:random