#Welcome Messages
tellraw @a ["",{"text":"Welcome to Random Item Skyblock!","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Made by Ziplaw, RoarkCats, and PhoenixSC","color":"aqua"}]}}}]

tellraw @a ["",{"text":"<Ziplaw> To disable the \"Next Item\" bar click "},{"text":"[here]","color":"red","clickEvent":{"action":"run_command","value":"/bossbar set minecraft:rdtimer visible false"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Disable bar","color":"red"}]}}},{"text":" or ","color":"none"},{"text":"[here]","color":"green","clickEvent":{"action":"run_command","value":"/bossbar set minecraft:rdtimer visible true"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enable bar","color":"green"}]}}}]

tellraw @a ["",{"text":"<RoarkCats> The item delay is currently set to 30 seconds","color":"white"}]
tellraw @a ["",{"text":"<RoarkCats> You can change the delay by executing this command:","color":"white"},{"text":"   /scoreboard players set delay rdtimer <<delay in ticks>>","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay rdtimer replace me with seconds x 20 (ticks)"}}]

tellraw @a ["",{"text":"<PhoenixSC> Have fun!","color":"white"}]

#Imports
forceload add 0 0
scoreboard objectives add item_timer dummy
scoreboard objectives add rdtimer dummy "Timer"
execute unless score run rdtimer matches 1.. run scoreboard players set delay rdtimer 600
scoreboard players set run rdtimer 1

bossbar add rdtimer "Next Item"
bossbar set minecraft:rdtimer color green

advancement grant @a only ris:root
function ris:advancement_scores