# Remove the "executed commands from function" output when running the function, smoother buttons in message basically
gamerule sendCommandFeedback false
schedule function ris:msgs/reset_feedback 1t


playsound entity.experience_orb.pickup master @s ~ ~ ~ 8 0.8

bossbar set ris:rdtimer visible false

title @s actionbar {"text":"Disabled Next Item Bar","color":"red"}