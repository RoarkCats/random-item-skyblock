scoreboard players set @s ris.destroy_range_preview 0

scoreboard players set #temp ris.timer 0
execute if entity @s[tag=ris.no_destroy_range] run scoreboard players set #temp ris.timer 1

# if you don't have the tag, it's given
execute if score #temp ris.timer matches 0 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0
execute if score #temp ris.timer matches 0 run title @s actionbar {"text":"Destroy range preview individually disabled.","color":"red"}
execute if score #temp ris.timer matches 0 run tag @s add ris.no_destroy_range

# if you have the tag, it's removed
execute if score #temp ris.timer matches 1 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 1
execute if score #temp ris.timer matches 1 run title @s actionbar {"text":"Destroy range preview individually enabled!","color":"green"}
execute if score #temp ris.timer matches 1 run tag @s remove ris.no_destroy_range