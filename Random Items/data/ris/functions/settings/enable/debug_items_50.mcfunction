# Remove the "executed commands from function" output when running the function, smoother buttons in message basically
gamerule sendCommandFeedback false
schedule function ris:msgs/reset_feedback 1t


playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.9

scoreboard players set debug_items ris.settings 2

title @s actionbar {"text":"Enabled 50/50 Debug Stick Block Drops","color":"gold"}