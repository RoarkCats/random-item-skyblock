scoreboard players set @s ris.receive_items 0

scoreboard players set #temp ris.timer 0
execute if entity @s[tag=ris.non_receiver] run scoreboard players set #temp ris.timer 1

# if you don't have the tag, it's given
execute if score #temp ris.timer matches 0 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0
execute if score #temp ris.timer matches 0 run title @s actionbar {"text":"You will no longer receive items.","color":"red"}
execute if score #temp ris.timer matches 0 run tag @s add ris.non_receiver

# if you have the tag, it's removed
execute if score #temp ris.timer matches 1 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1
execute if score #temp ris.timer matches 1 run title @s actionbar {"text":"You will now receive items again!","color":"green"}
execute if score #temp ris.timer matches 1 run tag @s remove ris.non_receiver