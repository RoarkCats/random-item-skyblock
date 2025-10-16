title @s actionbar {"text":"Game Started","color":"green","bold":true}
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 20
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 20

execute as @e[type=armor_stand,tag=ris-p1,tag=!ris-p2,sort=random] at @s run function ris:skywars/tp
execute at @e[type=armor_stand,tag=ris-m1,tag=!ris-m2] run setblock ~ ~-.5 ~ repeating_command_block[facing=up]
execute at @e[type=armor_stand,tag=ris-m1,tag=!ris-m2] align xyz run summon armor_stand ~.5 ~ ~.5 {Tags:["RISgen","ris-g"],DisabledSlots:4144959,NoGravity:1b,Invisible:1b,Small:1,CustomNameVisible:1b,CustomName:'{"text":"Item Generator"}'}

execute as @e[type=armor_stand,tag=ris-m1,tag=!ris-m2] run tag @s add ris-m2

scoreboard players set inGame risSkywars 1