data modify storage ris:random menu set value "welcome_wrapper"
function ris:msgs/_refresh_menu with storage ris:random

playsound item.book.page_turn master @s[tag=!ris.refresh_settings_menu] ~ ~ ~ 8 1.2


tellraw @s [{"text":"","color":"green"},{"text":"         ","underlined":true},{"text":" ","strikethrough":true}," Settings ",{"text":" ","strikethrough":true},{"text":"         \n","underlined":true}]

tellraw @s ["",{"text":" [General Settings]","color":"dark_green","shadow_color":[0,0,0,0.8],"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/general"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"General Settings","color":"dark_green"}]}}}]

tellraw @s ["",{"text":" [Special Item Settings]","color":"dark_aqua","shadow_color":[0,0,0,0.8],"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/special"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Special Item Settings","color":"dark_aqua"}]}}}]

tellraw @s ["",{"text":" [Alchemy Item Settings]","color":"gold","shadow_color":[0,0,0,0.8],"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_1"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Alchemy Item Settings","color":"gold"}]}}}]

tellraw @s ""

tellraw @s ["",{"text":" [Restore Defaults]","color":"dark_red","hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Restore Default Settings","color":"dark_red"}]}},"clickEvent":{"action":"run_command","value":"/tellraw @s [{\"text\":\"Are you sure you would like to reset all settings to their default values?  \",\"color\":\"red\"},{\"text\":\"[Yes]\",\"color\":\"dark_red\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":{\"text\":\"Restore Default Settings\",\"color\":\"dark_red\"}},\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/function ris:settings/_reset_defaults\"}},\" \",{\"text\":\"[No]\",\"color\":\"gray\",\"hoverEvent\":{\"action\":\"show_text\",\"contents\":{\"text\":\"I gotchu bro\",\"color\":\"gray\"}}}]"}}]

tellraw @s {"text":"                                \n","underlined":true,"color":"green"}


# Selected button shadow colors:
# red - "shadow_color":[1,0.6,0.6,0.8]
# green - "shadow_color":[0.7,1,0.7,0.8]
# gold/yellow - "shadow_color":[1,0.9,0.6,0.8]
# aqua - "shadow_color":[0.6,0.8,1,0.8]