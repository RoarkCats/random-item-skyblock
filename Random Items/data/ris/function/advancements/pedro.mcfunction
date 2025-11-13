scoreboard players reset @s ris.pedro
execute if entity @s[advancements={ris:ris/curious_creatures/pedro=true}] run return 0

data merge entity @n[type=panda,tag=!ris.spawnable_old] {CustomName:'"Pedro"'}

advancement grant @s only ris:ris/curious_creatures/pedro