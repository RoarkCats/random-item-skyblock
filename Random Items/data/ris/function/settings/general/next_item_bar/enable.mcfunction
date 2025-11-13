playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

bossbar set ris:rdtimer visible true

title @s actionbar {"text":"Enabled Next Item Bar","color":"green"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random