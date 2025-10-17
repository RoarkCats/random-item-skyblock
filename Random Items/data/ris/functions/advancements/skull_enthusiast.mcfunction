# Run once a second as all players

execute store result score #temp ris.timer run clear @s player_head 0
execute store result score #temp1 ris.timer run clear @s player_head{custom_item:1b} 0

scoreboard players operation #temp ris.timer -= #temp1 ris.timer
execute if score #temp ris.timer matches 1.. run advancement grant @s only ris:skull_enthusiast player_head