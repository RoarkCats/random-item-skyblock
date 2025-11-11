# Remove the "executed commands from function" output when running the function, smoother buttons in message basically
gamerule sendCommandFeedback false
schedule function ris:msgs/reset_feedback 1t


playsound block.beacon.deactivate master @s ~ ~ ~ 8 1.2

scoreboard players set item_giver ris.settings 0

title @s actionbar {"text":"Stopped Random Item Giver","color":"dark_red"}