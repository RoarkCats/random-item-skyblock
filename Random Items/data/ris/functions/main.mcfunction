##Bossbars
bossbar set minecraft:rdtimer players @a
execute unless score delay rdtimer matches 0 run execute store result bossbar minecraft:rdtimer max run scoreboard players get give_item item_timer
execute unless score delay rdtimer matches 0 run execute store result bossbar minecraft:rdtimer value run scoreboard players get give item_timer
#execute unless score delay rdtimer matches 0 run execute if score give_item item_timer matches ..99 run bossbar set minecraft:rdtimer visible false

#Triggers
scoreboard players enable @a rdreceive
execute as @a[scores={rdreceive=1..}] at @s run function ris:receive_trigger
scoreboard players set @a rdreceive 0

##Roark's Additions
execute if score sameItems item_timer matches 0 run function ris:sameitem
execute if score sameItems item_timer matches 1 run function ris:difitem


scoreboard players set given item_timer 0
execute as @r[tag=!given] run scoreboard players set given item_timer 1
execute if score given item_timer matches 0 run tag @a remove given


#set custom time here (min. = 0; the lower the value, the faster the give timer):
#scoreboard players set give_item item_timer 2
execute store result score give_item item_timer run scoreboard players get delay rdtimer
execute unless score delay rdtimer matches 0 run scoreboard players add give item_timer 1
execute if score given item_timer matches 0 if score give item_timer > give_item item_timer run scoreboard players set give item_timer 0

function ris:advancement_triggers

#Skeleton & Zombie Horse Fix
execute as @e[type=skeleton_horse,tag=!modified] run data merge entity @s {Tame:1}
execute as @e[type=zombie_horse,tag=!modified] run data merge entity @s {Tame:1}
execute as @e[type=!player,tag=!modified] run tag @s add modified

#Small End Portal
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}}] at @s run function ris:easy_end_portal
execute as @a[nbt={Dimension:0}] at @s if block ~ ~-1 ~ end_gateway run setblock ~ ~-1 ~ bedrock

#Functions
function ris:cus-items