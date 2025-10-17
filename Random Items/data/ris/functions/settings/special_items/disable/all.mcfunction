# Remove the "executed commands from function" output when running the function, smoother buttons in message basically
gamerule sendCommandFeedback false
schedule function ris:msgs/reset_feedback 1t


playsound block.grindstone.use master @s ~ ~ ~ 8 0.9

scoreboard players set command_block ris.special_item_settings 0
scoreboard players set chain_command_block ris.special_item_settings 0
scoreboard players set repeating_command_block ris.special_item_settings 0
scoreboard players set command_block_minecart ris.special_item_settings 0
scoreboard players set structure_block ris.special_item_settings 0
scoreboard players set jigsaw_block ris.special_item_settings 0
scoreboard players set debug_stick ris.special_item_settings 0
scoreboard players set knowledge_book ris.special_item_settings 0
scoreboard players set creator_heads ris.special_item_settings 0

title @s actionbar {"text":"Disabled All Special Items Individually","color":"dark_red"}