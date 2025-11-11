# if you don't have the tag, it's given
execute if entity @s[tag=!ris.non_receiver] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 10 1
execute if entity @s[tag=!ris.non_receiver] run tellraw @s {"text":"You will no longer receive items.","color":"red"}
execute if entity @s[tag=!ris.non_receiver] run tag @s add ris.temp
execute if entity @s[tag=!ris.non_receiver] run tag @s add ris.non_receiver

# if you have the tag, it's removed
execute if entity @s[tag=ris.non_receiver,tag=!ris.temp] run playsound entity.experience_orb.pickup master @s ~ ~ ~ 10 0
execute if entity @s[tag=ris.non_receiver,tag=!ris.temp] run tellraw @s {"text":"You will now receive items again!","color":"green"}
execute if entity @s[tag=ris.non_receiver,tag=!ris.temp] run tag @s remove ris.non_receiver

tag @s remove ris.temp