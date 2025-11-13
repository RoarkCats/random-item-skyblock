playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set structure/chain ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled Clone Paste","color":"red"}


data modify storage ris:random menu set value "settings/alchemy_items/structure"
function ris:msgs/_refresh_menu with storage ris:random