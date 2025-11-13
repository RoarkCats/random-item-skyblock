playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.9

scoreboard players set trader_special_items ris.settings 2

title @s actionbar {"text":"Enabled Limited Trader Special Items","color":"gold"}


data modify storage ris:random menu set value "settings/special"
function ris:msgs/_refresh_menu with storage ris:random