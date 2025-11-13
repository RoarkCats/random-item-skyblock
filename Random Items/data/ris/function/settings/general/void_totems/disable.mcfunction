playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set void_totems ris.settings 0

title @s actionbar {"text":"Disabled Void Totems","color":"red"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random