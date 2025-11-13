playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set knowledge_damage ris.settings 1

title @s actionbar {"text":"Enabled Knowledge Damage","color":"green"}


data modify storage ris:random menu set value "settings/alchemy_2"
function ris:msgs/_refresh_menu with storage ris:random