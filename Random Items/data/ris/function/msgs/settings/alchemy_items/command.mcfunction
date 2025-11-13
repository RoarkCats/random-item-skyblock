data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random

playsound item.book.page_turn master @s[tag=!ris.refresh_settings_menu] ~ ~ ~ 8 1.2


tellraw @s [{"text":"","color":"yellow"},{"text":"      ","underlined":true},{"text":" ","strikethrough":true}," Alchemy Items ",{"text":" ","strikethrough":true},{"text":"      \n","underlined":true}]

tellraw @s [" ",{"text":"[◀]","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Previous Page","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_items/double"}},{"text":"  Command Items  ","color":"yellow"},{"text":"[▶]","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Next Page","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_items/structure"}}]

tellraw @s ""

tellraw @s ["",{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/disable/command/all"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Disable All Command Items Individually","color":"dark_red"}]}}}," ",{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/enable/command/all"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enable All Command Items Individually","color":"dark_green"}]}}},{"text":" All Command Items","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"Toggle all Command Alchemy Items individually","color":"gray"}}}]

tellraw @s ""

function ris:settings/general/alchemy_items/msg/command/chain
function ris:settings/general/alchemy_items/msg/command/repeat
function ris:settings/general/alchemy_items/msg/command/chain_repeat
function ris:settings/general/alchemy_items/msg/command/minecart
function ris:settings/general/alchemy_items/msg/command/chain_minecart
function ris:settings/general/alchemy_items/msg/command/repeat_minecart

tellraw @s {"text":"                                \n","underlined":true,"color":"yellow"}