playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set shulker_dupe ris.settings 0

title @s actionbar {"text":"Disabled Shulker Box Multiplication","color":"red"}


data modify storage ris:random menu set value "settings/special"
function ris:msgs/_refresh_menu with storage ris:random