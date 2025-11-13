playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set dispensable_cauldrons ris.settings 1

title @s actionbar {"text":"Enabled Dispensable Cauldrons","color":"green"}


data modify storage ris:random menu set value "settings/alchemy_1"
function ris:msgs/_refresh_menu with storage ris:random