scoreboard players reset * ris.settings
scoreboard players reset * ris.special_item_settings
scoreboard players reset * ris.alchemy_item_settings

function ris:settings/_load_defaults


playsound entity.creaking.unfreeze master @s ~ ~ ~ 8 1
playsound entity.creaking.sway master @s ~ ~ ~ 8 1
playsound item.dye.use master @s ~ ~ ~ 8 1
playsound entity.generic.splash master @s ~ ~ ~ 8 1.1

title @s actionbar {"text":"Restored Default Settings","color":"dark_red"}


data modify storage ris:random menu set value "settings"
function ris:msgs/_refresh_menu with storage ris:random