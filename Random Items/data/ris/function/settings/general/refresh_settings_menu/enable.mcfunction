playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set refresh_settings_menu ris.settings 1

title @s actionbar {"text":"Enabled Refresh Settings Menu","color":"green"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random