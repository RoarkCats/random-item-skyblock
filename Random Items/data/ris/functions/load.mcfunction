#Welcome Messages
tellraw @a {"text":"--------------------","color":"green"}

tellraw @a ["",{"text":"Welcome to Random Item Skyblock v2.0!","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Made by Ziplaw, RoarkCats, and PhoenixSC","color":"aqua"}]}}}]

tellraw @a ["",{"text":"<Roark9> To choose whether you want everyone to receive the "},{"text":"[same items]","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set sameItems item_timer 0"},"hoverEvent":{"action":"show_text","value":["",{"text":"Enable Same Items","color":"aqua"}]}},{"text":" or "},{"text":"[different items]","color":"aqua","clickEvent":{"action":"run_command","value":"/scoreboard players set sameItems item_timer 1"},"hoverEvent":{"action":"show_text","value":["",{"text":"Enable Different Items","color":"aqua"}]}},{"text":" click here"}]

tellraw @a ["",{"text":"<Ziplaw> To disable the \"Next Item\" bar click "},{"text":"[here]","color":"red","clickEvent":{"action":"run_command","value":"/bossbar set minecraft:rdtimer visible false"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Disable bar","color":"red"}]}}},{"text":" or ","color":"none"},{"text":"[here]","color":"green","clickEvent":{"action":"run_command","value":"/bossbar set minecraft:rdtimer visible true"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enable bar","color":"green"}]}}}]

tellraw @a ["",{"text":"<Ziplaw> If you don't want to receive items, click "},{"text":"[here]","color":"red","clickEvent":{"action":"run_command","value":"/tag @s add non_receiver"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Disable Items","color":"red"}]}}},{"text":" or ","color":"none"},{"text":"[here]","color":"green","clickEvent":{"action":"run_command","value":"/tag @s remove non_receiver"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enable Items","color":"green"}]}}}]

tellraw @a ["",{"text":"<Roark9> The item delay is currently set to 30 seconds","color":"white"}]

tellraw @a ["",{"text":"<Roark9> You can change the delay by executing this command:","color":"white"},{"text":"\n"},{"text":"/scoreboard players set delay rdtimer <<delay in ticks>>","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay rdtimer replace me with seconds x 20 (ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}}]

tellraw @a ["",{"text":"<PhoenixSC> Have fun!","color":"white"}]

tellraw @a {"text":"--------------------","color":"green"}


#Imports
scoreboard objectives add item_timer dummy
scoreboard objectives add rdtimer dummy "Timer"
scoreboard objectives add rdreceive trigger
scoreboard objectives add rdbar trigger
execute unless score run rdtimer matches 1.. run scoreboard players set delay rdtimer 600
scoreboard players set run rdtimer 1
execute unless score sameItems item_timer matches -1.. run scoreboard players set sameItems item_timer 1

bossbar add rdtimer "Next Item"
bossbar set minecraft:rdtimer color green

advancement grant @a only ris:root
function ris:advancement_scores