playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set special_item_dupe ris.settings 0

title @s actionbar {"text":"Disabled Multipliable Special Items","color":"red"}


data modify storage ris:random menu set value "settings/special"
function ris:msgs/_refresh_menu with storage ris:random