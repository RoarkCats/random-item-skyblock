# Remove the "executed commands from function" output when running the function, smoother buttons in message basically
gamerule sendCommandFeedback false
schedule function ris:msgs/reset_feedback 1t


playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

scoreboard players set void_totems ris.settings 0

title @s actionbar {"text":"Disabled Void Totems","color":"red"}