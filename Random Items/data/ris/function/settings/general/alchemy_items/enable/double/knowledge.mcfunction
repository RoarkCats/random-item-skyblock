playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set double/knowledge ris.alchemy_item_settings 1

title @s actionbar {"text":"Enabled Super Knowledge Book","color":"green"}


data modify storage ris:random menu set value "settings/alchemy_items/double"
function ris:msgs/_refresh_menu with storage ris:random