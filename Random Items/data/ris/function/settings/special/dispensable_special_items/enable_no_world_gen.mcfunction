playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.9

scoreboard players set dispensable_special_items ris.settings 3

title @s actionbar {"text":"Enabled Dispensable Special Items (Non-World Gen)","color":"gold"}


data modify storage ris:random menu set value "settings/special"
function ris:msgs/_refresh_menu with storage ris:random