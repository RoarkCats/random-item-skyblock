data modify storage ris:random menu set value "settings/general"
function ris:msgs/_refresh_menu with storage ris:random

playsound item.book.page_turn master @s[tag=!ris.refresh_settings_menu] ~ ~ ~ 8 1.2


tellraw @s [{"text":"","color":"yellow"},{"text":"      ","underlined":true},{"text":" ","strikethrough":true}," Alchemy Items ",{"text":" ","strikethrough":true},{"text":"      \n","underlined":true}]

tellraw @s [" ",{"text":"[◀]","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Previous Page","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_items/command"}},{"text":"  Structure Items  ","color":"yellow"},{"text":"[▶]","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Next Page","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_items/jigsaw"}}]

tellraw @s ""

tellraw @s ["",{"text":"[❌]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/disable/structure/all"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Disable All Structure Items Individually","color":"dark_red"}]}}}," ",{"text":"[✔]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function ris:settings/general/alchemy_items/enable/structure/all"},"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"Enable All Structure Items Individually","color":"dark_green"}]}}},{"text":" All Structure Items","color":"gray","hoverEvent":{"action":"show_text","value":{"text":"Toggle all Structure Alchemy Items individually","color":"gray"}}}]

tellraw @s ""

function ris:settings/general/alchemy_items/msg/structure/minecart
function ris:settings/general/alchemy_items/msg/structure/command
function ris:settings/general/alchemy_items/msg/structure/chain
function ris:settings/general/alchemy_items/msg/structure/repeat

tellraw @s {"text":"                                \n","underlined":true,"color":"yellow"}