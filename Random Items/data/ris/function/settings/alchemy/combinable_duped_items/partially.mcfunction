playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.9

scoreboard players set combinable_duped_items ris.settings 2

title @s actionbar {"text":"Enabled Partially Combinable Multiplied Items","color":"gold"}


data modify storage ris:random menu set value "settings/alchemy_1"
function ris:msgs/_refresh_menu with storage ris:random