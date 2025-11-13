playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1
playsound item.dye.use master @s ~ ~ ~ 8 1

function ris:settings/general/retag_old_tags/retag

title @s actionbar {"text":"Retagged Old Loaded Entities","color":"yellow"}


data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random