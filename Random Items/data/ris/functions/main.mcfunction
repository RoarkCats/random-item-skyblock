##Bossbars
bossbar set minecraft:rdtimer players @a
execute store result bossbar minecraft:rdtimer max run scoreboard players get give_item item_timer
execute store result bossbar minecraft:rdtimer value run scoreboard players get give item_timer
execute if score give_item item_timer matches ..99 run bossbar set minecraft:rdtimer visible false


##Roark's Additions
setblock 0 255 0 chest
execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give

execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give

execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give

execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give

execute store result score rng item_timer run loot insert 0 255 0 loot ris:rng
execute if score give item_timer >= give_item item_timer as @r[tag=!given] run function ris:give
setblock 0 255 0 air

scoreboard players set given item_timer 0
execute as @r[tag=!given] run scoreboard players set given item_timer 1
execute if score given item_timer matches 0 run tag @a remove given


#set custom time here (min. = 0; the lower the value, the faster the give timer):
#scoreboard players set give_item item_timer 2
execute store result score give_item item_timer run scoreboard players get delay rdtimer
scoreboard players add give item_timer 1
execute if score given item_timer matches 0 if score give item_timer > give_item item_timer run scoreboard players set give item_timer 0

function ris:advancement_triggers