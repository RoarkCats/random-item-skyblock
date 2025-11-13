playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set command_block_minecart ris.special_item_settings 0

title @s actionbar {"text":"Disabled Command Block Minecart","color":"red"}


data modify storage ris:random menu set value "settings/special_items"
function ris:msgs/_refresh_menu with storage ris:random