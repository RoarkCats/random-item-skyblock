playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set alchemy_items ris.settings 0

title @s actionbar {"text":"Disabled Alchemy Items","color":"red"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random