playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

bossbar set ris:rdtimer visible false

title @s actionbar {"text":"Disabled Next Item Bar","color":"red"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random