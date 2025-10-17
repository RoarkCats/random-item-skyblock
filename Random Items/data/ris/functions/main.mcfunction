#Triggers
scoreboard players enable @a receive_items
execute as @a[scores={receive_items=1..}] at @s run function ris:receive_trigger
scoreboard players set @a receive_items 0

# Item Giver
execute if score sameItems risSettings matches 1 if score give item_timer >= give_item item_timer run loot give @a[tag=!non_receiver] loot ris:random_item
execute if score sameItems risSettings matches 0 if score give item_timer >= give_item item_timer as @a run loot give @s[tag=!non_receiver] loot ris:random_item


# Timer Shit
execute if score give item_timer >= give_item item_timer run scoreboard players set give item_timer 0
execute if score delay rdtimer matches ..9 run scoreboard players set delay rdtimer 10
execute store result score give_item item_timer run scoreboard players get delay rdtimer
execute unless score delay rdtimer matches 0 run scoreboard players add give item_timer 1


#Functions
execute if score specialItems risSettings matches 1 run function ris:custom-items/items
function ris:advance/triggers
function ris:horse-fix
function ris:itembar
function ris:player_head_name_fix

execute if score inGame risSkywars matches 1 run function ris:skywars/run
execute as @e[tag=ris-firework] at @s run function ris:skywars/firework
function ris:skywars/setup-armorstands