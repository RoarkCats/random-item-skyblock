tellraw @a {"text":"--------------------","color":"green"}

tellraw @a [{"text":"Welcome to Random Item Skyblock v2.4!","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Made by Ziplaw, RoarkCats, and PhoenixSC","color":"gold"}]}}}]

tellraw @a ["<Ziplaw> If you want to change the settings, click ",{"text":"[here]","color":"gray","clickEvent":{"action":"run_command","value":"/function ris:msgs/settings"},"hoverEvent":{"action":"show_text","value":["",{"text":"Settings","color":"gray"}]}}]

tellraw @a ["<RoarkCats> The item delay is currently set to 30 seconds, to alter this, run the command:\n",{"text":"/scoreboard players set delay rdtimer ","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay rdtimer (replace me with seconds x 20 aka ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}},{"text":"(replace me with seconds x 20 aka ticks)","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay rdtimer (replace me with seconds x 20 aka ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}}]

tellraw @a ["<Ziplaw> To disable or re-enable your flow of items, run ",{"text":"/trigger receive_items","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger receive_items"},"hoverEvent":{"action":"show_text","value":["",{"text":"Toggle Personal Item Flow","color":"aqua"}]}}]

tellraw @a ["<RoarkCats> We also have ",{"text":"[skywars]","color":"gray","clickEvent":{"action":"run_command","value":"/function ris:msgs/skywars"},"hoverEvent":{"action":"show_text","value":["",{"text":"Skywars","color":"gray"}]}},", if you and some friends would like to give it a try"]

tellraw @a "<PhoenixSC> Have fun!"

tellraw @a {"text":"--------------------","color":"green"}