# Run once a second as all players
scoreboard players set #temp ris.timer 0
execute if entity @s[advancements={ris:customized=false}] run scoreboard players set #temp ris.timer -1
execute if entity @s[advancements={ris:skull_enthusiast={player_head=false}}] run scoreboard players set #temp ris.timer -2

execute if score #temp ris.timer matches -2..-1 store result score #temp1 ris.timer run clear @s player_head{custom_item:1b} 0
execute if score #temp ris.timer matches -2 store result score #temp ris.timer run clear @s player_head 0

scoreboard players operation #temp ris.timer -= #temp1 ris.timer
execute if score #temp ris.timer matches 1.. run advancement grant @s only ris:skull_enthusiast player_head
execute if score #temp1 ris.timer matches 1.. run advancement grant @s only ris:customized player_head