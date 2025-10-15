##Roark's Additions
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4] add p1
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4] add p2
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4] add p3
tag @r[tag=!p1,tag=!p2,tag=!p3,tag=!p4] add p4

## Imports
scoreboard objectives add item_timer dummy

# set custom time here (min. = 0; the lower the value, the faster the give timer):
scoreboard players set give_item item_timer 600

scoreboard players add give item_timer 1
execute if score give item_timer >= give_item item_timer run scoreboard players set give item_timer 0
forceload add 0 0
setblock 0 255 0 chest
execute store result score rng item_timer run loot insert 0 255 0 loot scripts:rng

## Random items
execute as @a[tag=p1] if score give item_timer matches 0 run schedule function scripts:p1 1
execute as @a[tag=p2] if score give item_timer matches 0 run schedule function scripts:p2 2
execute as @a[tag=p3] if score give item_timer matches 0 run schedule function scripts:p3 3
execute as @a[tag=p4] if score give item_timer matches 0 run schedule function scripts:p4 4