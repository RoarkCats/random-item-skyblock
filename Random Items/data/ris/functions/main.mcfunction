#Triggers
scoreboard players enable @a rdreceive
execute as @a[scores={rdreceive=1..}] at @s run function ris:receive_trigger
scoreboard players set @a rdreceive 0

##Roark's Additions
execute if score sameItems risSettings matches 0 run function ris:sameitem
execute if score sameItems risSettings matches 1 run function ris:difitem


scoreboard players set given item_timer 0
execute as @r[tag=!given] run scoreboard players set given item_timer 1
execute if score given item_timer matches 0 run tag @a remove given
execute if score given item_timer matches 0 run tag @a remove sameGive


#set custom time here (min. = 0; the lower the value, the faster the give timer):
#scoreboard players set give_item item_timer 2
execute if score delay rdtimer matches ..9 run scoreboard players set delay rdtimer 10
execute store result score give_item item_timer run scoreboard players get delay rdtimer
execute unless score delay rdtimer matches 0 run scoreboard players add give item_timer 1
execute if score given item_timer matches 0 if score give item_timer > give_item item_timer run scoreboard players set give item_timer 0


#Functions
execute if score specialItems risSettings matches 1 run function ris:custom-items/items
execute if score inGame risSkywars matches 1 run function ris:skywars/run
execute as @e[tag=ris-firework] at @s run function ris:skywars/firework
function ris:skywars/setup-armorstands
function ris:advance/triggers
function ris:horse-fix
function ris:itembar