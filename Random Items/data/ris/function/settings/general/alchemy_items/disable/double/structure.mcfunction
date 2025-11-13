playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set double/structure ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled Giga Structure","color":"red"}


data modify storage ris:random menu set value "settings/alchemy_items/double"
function ris:msgs/_refresh_menu with storage ris:random