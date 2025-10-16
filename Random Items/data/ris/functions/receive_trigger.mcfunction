#if you don't have the tag non-receiver, you get it
execute if entity @s[tag=!non_receiver] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 1
execute if entity @s[tag=!non_receiver] run tellraw @s {"text":"You will no longer receive items.","color":"red"}
execute if entity @s[tag=!non_receiver] run tag @s add changed
execute if entity @s[tag=!non_receiver] run tag @s add non_receiver

#if you have the tag non-receiver, you get it removed
execute if entity @s[tag=non_receiver, tag=!changed] run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10 0
execute if entity @s[tag=non_receiver, tag=!changed] run tellraw @s {"text":"You will now receive items again!","color":"green"}
execute if entity @s[tag=non_receiver, tag=!changed] run tag @s remove non_receiver

tag @s remove changed


