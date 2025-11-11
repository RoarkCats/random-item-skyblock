tag @a[scores={ris.deaths=1..}] add ris.dead

execute as @a unless score @s ris.deaths matches 1.. at @s unless entity @a[distance=0.01..,tag=!ris.dead] run function ris:skywars/end

tag @a[tag=ris.dead] remove ris.dead