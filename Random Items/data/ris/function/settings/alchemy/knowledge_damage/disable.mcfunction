playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set knowledge_damage ris.settings 0

title @s actionbar {"text":"Disabled Knowledge Damage","color":"red"}


data modify storage ris:random menu set value "settings/alchemy_2"
function ris:msgs/_refresh_menu with storage ris:random