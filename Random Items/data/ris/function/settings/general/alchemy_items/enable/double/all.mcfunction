#playsound block.enchantment_table.use master @s ~ ~ ~ 8 1
playsound block.grindstone.use master @s ~ ~ ~ 8 1.1

scoreboard players set double/command ris.alchemy_item_settings 1
scoreboard players set double/chain ris.alchemy_item_settings 1
scoreboard players set double/repeat ris.alchemy_item_settings 1
scoreboard players set double/minecart ris.alchemy_item_settings 1
scoreboard players set double/structure ris.alchemy_item_settings 1
scoreboard players set double/jigsaw ris.alchemy_item_settings 1
scoreboard players set double/debug ris.alchemy_item_settings 1
scoreboard players set double/knowledge ris.alchemy_item_settings 1

title @s actionbar {"text":"Enabled All Double Items Individually","color":"dark_green"}


data modify storage ris:random menu set value "settings/alchemy_items/double"
function ris:msgs/_refresh_menu with storage ris:random