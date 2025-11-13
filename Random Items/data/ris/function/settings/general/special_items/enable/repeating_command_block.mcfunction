playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set repeating_command_block ris.special_item_settings 1

title @s actionbar {"text":"Enabled Repeating Command Block","color":"green"}


data modify storage ris:random menu set value "settings/special_items"
function ris:msgs/_refresh_menu with storage ris:random