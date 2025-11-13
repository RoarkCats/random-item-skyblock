playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set sherd_modifiers ris.settings 1

title @s actionbar {"text":"Enabled Sherd Modifiers","color":"green"}


data modify storage ris:random menu set value "settings/alchemy_1"
function ris:msgs/_refresh_menu with storage ris:random