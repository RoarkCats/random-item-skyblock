playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1

scoreboard players set dragon_spawn_egg_prot ris.settings 1

title @s actionbar {"text":"Enabled Dragon Spawn Egg Protection","color":"green"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random