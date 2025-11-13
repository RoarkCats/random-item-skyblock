playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set dispensable_special_items ris.settings 1

title @s actionbar {"text":"Enabled Dispensable Special Items","color":"green"}


data modify storage ris:random menu set value "settings/special"
function ris:msgs/_refresh_menu with storage ris:random