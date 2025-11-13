playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set debug/command ris.alchemy_item_settings 1

title @s actionbar {"text":"Enabled Command Miner","color":"green"}


data modify storage ris:random menu set value "settings/alchemy_items/debug"
function ris:msgs/_refresh_menu with storage ris:random