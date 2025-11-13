playsound block.beacon.activate master @s ~ ~ ~ 8 1.2

scoreboard players set item_giver ris.settings 1

title @s actionbar {"text":"Resumed Random Item Giver","color":"dark_green"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random