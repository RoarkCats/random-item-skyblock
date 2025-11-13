playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set debug/repeat ris.alchemy_item_settings 0

title @s actionbar {"text":"Disabled Block Miner","color":"red"}


data modify storage ris:random menu set value "settings/alchemy_items/debug"
function ris:msgs/_refresh_menu with storage ris:random