# Remove the "executed commands from function" output when running the function, smoother buttons in message basically
gamerule sendCommandFeedback false
schedule function ris:msgs/reset_feedback 1t


scoreboard players set #20 ris.timer 20
scoreboard players operation #display_sec ris.timer = delay ris.timer
scoreboard players operation #display_sec ris.timer /= #20 ris.timer


tellraw @a {"text":"                              \n","underlined":true,"color":"green"}

tellraw @a [{"text":"Welcome to Random Item Skyblock v2.5!","color":"gold","bold":true,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Made by RoarkCats, Ziplaw, and PhoenixSC","color":"gold"}]}}}]

tellraw @a ["<Ziplaw> If you want to change the settings, click ",{"text":"[here]","color":"gray","clickEvent":{"action":"run_command","value":"/function ris:msgs/settings"},"hoverEvent":{"action":"show_text","value":["",{"text":"Settings","color":"gray"}]}}]

execute unless score item_giver ris.settings matches 0 run tellraw @a ["<RoarkCats> The item delay is currently set to ",{"score":{"name":"#display_sec","objective":"ris.timer"},"color":"yellow"},{"text":" seconds (","color":"yellow"},{"score":{"name":"delay","objective":"ris.timer"},"color":"yellow"},{"text":" ticks)","color":"yellow"},". In order to alter this, click or run the command:\n",{"text":"/scoreboard players set delay ris.timer ","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay ris.timer (replace me with ticks, 1 second = 20 ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}},{"text":"(replace me with ticks, 1 second = 20 ticks)","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay ris.timer (replace me with ticks, 1 second = 20 ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}}]
# Alternative message encase the item giver is stopped
execute if score item_giver ris.settings matches 0 run tellraw @a ["<RoarkCats> The item delay is currently ",{"text":"stopped","color":"red"}," and set to ",{"score":{"name":"#display_sec","objective":"ris.timer"},"color":"yellow"},{"text":" seconds (","color":"yellow"},{"score":{"name":"delay","objective":"ris.timer"},"color":"yellow"},{"text":" ticks)","color":"yellow"},". In order to alter this, click or run the command:\n",{"text":"/scoreboard players set delay ris.timer ","color":"aqua","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay ris.timer (replace me with ticks, 1 second = 20 ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}},{"text":"(replace me with ticks, 1 second = 20 ticks)","color":"yellow","clickEvent":{"action":"suggest_command","value":"/scoreboard players set delay ris.timer (replace me with ticks, 1 second = 20 ticks)"},"hoverEvent":{"action":"show_text","value":["",{"text":"Change Random Item Delay","color":"aqua"}]}}]

tellraw @a ["<Ziplaw> To individually disable or re-enable your flow of items, click or run ",{"text":"/trigger ris.receive_items","color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger ris.receive_items"},"hoverEvent":{"action":"show_text","value":["",{"text":"Toggle Personal Item Flow","color":"aqua"}]}}]

tellraw @a ["<RoarkCats> We also have ",{"text":"[skywars]","color":"gray","clickEvent":{"action":"run_command","value":"/function ris:msgs/skywars"},"hoverEvent":{"action":"show_text","value":["",{"text":"Skywars","color":"gray"}]}},", if you and some friends would like to give it a try"]

tellraw @a "<PhoenixSC> Have fun!"

tellraw @a {"text":"                              \n","underlined":true,"color":"green"}