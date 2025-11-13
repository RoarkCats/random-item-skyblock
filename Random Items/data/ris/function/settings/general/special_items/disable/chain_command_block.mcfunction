playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set chain_command_block ris.special_item_settings 0

title @s actionbar {"text":"Disabled Chain Command Block","color":"red"}


data modify storage ris:random menu set value "settings/special_items"
function ris:msgs/_refresh_menu with storage ris:random