playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set same_items ris.settings 0

title @s actionbar {"text":"Enabled Different Random Items","color":"gold"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random