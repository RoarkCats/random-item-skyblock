# Remove the "executed commands from function" output when running the function, smoother buttons in message basically
gamerule sendCommandFeedback false
schedule function ris:msgs/reset_feedback 1t


#playsound block.enchantment_table.use master @s ~ ~ ~ 8 1
playsound block.grindstone.use master @s ~ ~ ~ 8 1.1

scoreboard players set command_block ris.special_item_settings 1
scoreboard players set chain_command_block ris.special_item_settings 1
scoreboard players set repeating_command_block ris.special_item_settings 1
scoreboard players set command_block_minecart ris.special_item_settings 1
scoreboard players set structure_block ris.special_item_settings 1
scoreboard players set jigsaw_block ris.special_item_settings 1
scoreboard players set debug_stick ris.special_item_settings 1
scoreboard players set knowledge_book ris.special_item_settings 1
scoreboard players set creator_heads ris.special_item_settings 1

title @s actionbar {"text":"Enabled All Special Items Individually","color":"dark_green"}