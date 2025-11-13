playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set refresh_settings_menu ris.settings 0

title @s actionbar {"text":"Disabled Refresh Settings Menu","color":"red"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random