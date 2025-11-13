playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set compendium_sync ris.settings 0

title @s actionbar {"text":"Disabled Shared Compendium Progress","color":"red"}


data modify storage ris:random menu set value "settings/alchemy_1"
function ris:msgs/_refresh_menu with storage ris:random