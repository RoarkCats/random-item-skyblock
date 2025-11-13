playsound block.grindstone.use master @s ~ ~ ~ 8 0.9

scoreboard players set knowledge/debug ris.alchemy_item_settings 0
scoreboard players set knowledge/jigsaw ris.alchemy_item_settings 0
scoreboard players set knowledge/structure ris.alchemy_item_settings 0
scoreboard players set knowledge/minecart ris.alchemy_item_settings 0
scoreboard players set knowledge/command ris.alchemy_item_settings 0
scoreboard players set knowledge/chain ris.alchemy_item_settings 0
scoreboard players set knowledge/repeat ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled All Knowledge Items Individually","color":"dark_red"}


data modify storage ris:random menu set value "settings/alchemy_items/knowledge"
function ris:msgs/_refresh_menu with storage ris:random