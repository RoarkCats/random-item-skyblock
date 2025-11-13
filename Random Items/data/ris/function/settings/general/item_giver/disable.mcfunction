playsound block.beacon.deactivate master @s ~ ~ ~ 8 1.2

scoreboard players set item_giver ris.settings 0
scoreboard players set time ris.timer 1000000

title @s actionbar {"text":"Stopped Random Item Giver","color":"dark_red"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random