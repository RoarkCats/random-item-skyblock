playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set component_level_display ris.settings 1

title @s actionbar {"text":"Enabled Component Level Display","color":"green"}


data modify storage ris:random menu set value "settings/alchemy_1"
function ris:msgs/_refresh_menu with storage ris:random