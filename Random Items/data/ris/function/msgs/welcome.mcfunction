# # Remove the "executed commands from function" output when running the function, smoother buttons in message basically
# gamerule sendCommandFeedback false
# schedule function ris:msgs/reset_feedback 1t

scoreboard players operation #display_sec ris.timer = delay ris.timer
scoreboard players operation #display_sec ris.timer /= #20 ris.timer


tellraw @s {"text":"                                \n","underlined":true,"color":"green"}

tellraw @s [{"text":"Welcome to Random Item Skyblock 3.0.0!","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Made by RoarkCats, Ziplaw, and PhoenixSC","color":"gold"}]}},"clickEvent":{"action":"open_url","value":"https://TODO.github_link"}}]

tellraw @s ["<RoarkCats> If you want to change the settings, click ",{"text":"[here]","color":"gray","shadow_color":[0,0,0,0.8],"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings"},"hoverEvent":{"action":"show_text","value":["",{"text":"Settings","color":"gray"}]}}]

execute unless score item_giver ris.settings matches 0 run tellraw @s ["<Ziplaw> The item giver time is currently set to ",{"score":{"name":"#display_sec","objective":"ris.timer"},"color":"yellow"},{"text":" seconds (","color":"yellow"},{"score":{"name":"delay","objective":"ris.timer"},"color":"yellow"},{"text":" ticks)","color":"yellow"},". To change the delay, click or run the command:\n",{"text":"[","color":"gray","shadow_color":[0,0,0,0.8]},{"text":"/scoreboard players set delay ris.timer ","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay ris.timer (replace me with ticks, 1 second = 20 ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}},{"score":{"name":"delay","objective":"ris.timer"},"color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay ris.timer (replace me with ticks, 1 second = 20 ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}},{"text":"]","color":"gray","shadow_color":[0,0,0,0.8]}]
# Alternate message in case the item giver is stopped
execute if score item_giver ris.settings matches 0 run tellraw @s ["<Ziplaw> The item giver is currently ",{"text":"stopped","color":"red"}," and its delay set to ",{"score":{"name":"#display_sec","objective":"ris.timer"},"color":"yellow"},{"text":" seconds (","color":"yellow"},{"score":{"name":"delay","objective":"ris.timer"},"color":"yellow"},{"text":" ticks)","color":"yellow"},". To change the delay, click or run the command:\n",{"text":"[","color":"gray","shadow_color":[0,0,0,0.8]},{"text":"/scoreboard players set delay ris.timer ","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay ris.timer (replace me with ticks, 1 second = 20 ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}},{"score":{"name":"delay","objective":"ris.timer"},"color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay ris.timer (replace me with ticks, 1 second = 20 ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}},{"text":"]","color":"gray","shadow_color":[0,0,0,0.8]}]

tellraw @s ["<RoarkCats> To individually disable or re-enable your flow of items, click or run ",{"text":"[","color":"gray","shadow_color":[0,0,0,0.8]},{"text":"/trigger ris.receive_items","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger ris.receive_items"},"hoverEvent":{"action":"show_text","value":["",{"text":"Toggle Personal Item Flow","color":"aqua"}]}},{"text":"]","color":"gray","shadow_color":[0,0,0,0.8]}]

tellraw @s ["<Ziplaw> We also have custom ",{"text":"[skywars]","color":"gray","shadow_color":[0,0,0,0.8],"clickEvent":{"action":"run_command","value":"/function ris:msgs/skywars"},"hoverEvent":{"action":"show_text","value":["",{"text":"Skywars","color":"gray"}]}}," for fun with friends"]

tellraw @s ["<PhoenixSC> Have fun! Please report any bugs ",{"text":"[here]","color":"gray","shadow_color":[0,0,0,0.8],"clickEvent":{"action":"open_url","value":"https://TODO.github_new_issue_link"},"hoverEvent":{"action":"show_text","value":["",{"text":"Report Bugs & Suggestions","color":"gray"}]}}]

tellraw @s {"text":"                                \n","underlined":true,"color":"green"}