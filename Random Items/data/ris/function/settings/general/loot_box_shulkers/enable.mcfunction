playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set loot_box_shulkers ris.settings 1

title @s actionbar {"text":"Enabled Loot Box Shulkers","color":"green"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random