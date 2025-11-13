data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random

playsound item.book.page_turn master @s[tag=!ris.refresh_settings_menu] ~ ~ ~ 8 1.2


tellraw @s [{"text":"","color":"yellow"},{"text":"      ","underlined":true},{"text":" ","strikethrough":true}," Alchemy Items ",{"text":" ","strikethrough":true},{"text":"      \n","underlined":true}]

tellraw @s [" ",{"text":"[◀]","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Previous Page","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_items/debug"}},{"text":"  Knowledge Items  ","color":"yellow"},{"text":"[▶]","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"text":"Next Page","color":"dark_gray"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_items/double"}}]

tellraw @s ""

tellraw @s ["",{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/disable/knowledge/all"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Disable All Knowledge Items Individually","color":"dark_red"}]}}}," ",{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/enable/knowledge/all"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enable All Knowledge Items Individually","color":"dark_green"}]}}},{"text":" All Knowledge Items","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"Toggle all Knowledge Alchemy Items individually","color":"gray"}}}]

tellraw @s ""

function ris:settings/general/alchemy_items/msg/knowledge/debug
function ris:settings/general/alchemy_items/msg/knowledge/jigsaw
function ris:settings/general/alchemy_items/msg/knowledge/structure
function ris:settings/general/alchemy_items/msg/knowledge/minecart
function ris:settings/general/alchemy_items/msg/knowledge/command
function ris:settings/general/alchemy_items/msg/knowledge/chain
function ris:settings/general/alchemy_items/msg/knowledge/repeat

tellraw @s {"text":"                                \n","underlined":true,"color":"yellow"}