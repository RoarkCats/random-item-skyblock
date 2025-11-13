playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set combinable_duped_items ris.settings 1

title @s actionbar {"text":"Enabled Combinable Multiplied Items","color":"green"}


data modify storage ris:random menu set value "settings/alchemy_1"
function ris:msgs/_refresh_menu with storage ris:random