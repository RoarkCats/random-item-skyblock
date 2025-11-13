playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set same_items ris.settings 1

title @s actionbar {"text":"Enabled Same Random Items","color":"aqua"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random