playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set command/repeat ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled Stack Generator","color":"red"}


data modify storage ris:random menu set value "settings/alchemy_items/command"
function ris:msgs/_refresh_menu with storage ris:random