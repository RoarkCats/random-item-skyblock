tellraw @a {"text":"--------------------","color":"green"}

tellraw @a ["",{"text":"Welcome to Random Item Skyblock v2.2!","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Made by Ziplaw, RoarkCats, and PhoenixSC","color":"gold"}]}}}]

tellraw @a ["",{"text":"<Ziplaw> If you want to change the settings, click "},{"text":"[here]","color":"gray","clickEvent":{"action":"run_command","value":"/function ris:msgs/settings"},"hoverEvent":{"action":"show_text","value":["",{"text":"Settings","color":"gray"}]}}]

tellraw @a ["",{"text":"<Roark9> The item delay is currently set to 30 seconds, to alter this, run the command:","color":"white"},{"text":"\n"},{"text":"/scoreboard players set delay rdtimer <<delay in ticks>>","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay rdtimer replace me with seconds x 20 (ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}}]

tellraw @a ["",{"text":"<Roark9> We also have "},{"text":"[skywars]","color":"gray","clickEvent":{"action":"run_command","value":"/function ris:msgs/skywars"},"hoverEvent":{"action":"show_text","value":["",{"text":"Skywars","color":"gray"}]}},{"text":", if you and some friends would like to try it"}]

tellraw @a ["",{"text":"<PhoenixSC> Have fun!","color":"white"}]

tellraw @a {"text":"--------------------","color":"green"}