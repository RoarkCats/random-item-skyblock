execute if entity @s[advancements={ris:ris/curious_creatures/cats_spot=false}] as @n[type=cat,tag=!ris.spawnable_old] run function ris:advancements/cats/spot
execute if entity @s[advancements={ris:ris/curious_creatures/cats_moro=false}] as @n[type=cat,tag=!ris.spawnable_old] run function ris:advancements/cats/moro

scoreboard players reset @s ris.cats