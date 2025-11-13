playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set loot_box_shulkers ris.settings 0

title @s actionbar {"text":"Disabled Loot Box Shulkers","color":"red"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random