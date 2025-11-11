# Remove the "executed commands from function" output when running the function, smoother buttons in message basically
gamerule sendCommandFeedback false
schedule function ris:msgs/reset_feedback 1t


playsound block.beacon.activate master @s ~ ~ ~ 8 1.2

scoreboard players set item_giver ris.settings 1

title @s actionbar {"text":"Resumed Random Item Giver","color":"dark_green"}