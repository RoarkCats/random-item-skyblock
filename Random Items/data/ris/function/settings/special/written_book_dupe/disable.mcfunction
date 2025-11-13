playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set written_book_dupe ris.settings 0

title @s actionbar {"text":"Disabled Written Book Multiplication","color":"red"}


data modify storage ris:random menu set value "settings/special"
function ris:msgs/_refresh_menu with storage ris:random