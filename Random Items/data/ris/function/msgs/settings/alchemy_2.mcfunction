data modify storage ris:random menu set value "settings"
function ris:msgs/_refresh_menu with storage ris:random

playsound item.book.page_turn master @s[tag=!ris.refresh_settings_menu] ~ ~ ~ 8 1.2


tellraw @s [{"text":"","color":"gold"},{"text":" ","underlined":true},{"text":" ","strikethrough":true}," Alchemy Item Settings ",{"text":" ","strikethrough":true},{"text":" \n","underlined":true}]

tellraw @s ["  ",{"text":"[◀]","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Previous Page","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_1"}},{"text":"  Page 2  ","color":"yellow"},{"text":"[▶]","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"text":"Next Page","color":"dark_gray"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_1"}}]

tellraw @s ""

function ris:settings/alchemy/schematic_block_limit/msg
function ris:settings/alchemy/structure_gen_integrity/msg
function ris:settings/alchemy/vein_miner_block_limit/msg
function ris:settings/alchemy/inverse_vein_miner_range/msg
function ris:settings/alchemy/block_miner_range/msg
function ris:settings/alchemy/trade_multiply_chance/msg
function ris:settings/alchemy/trade_reroll_chance/msg
function ris:settings/alchemy/knowledge_damage/msg

tellraw @s {"text":"                                \n","underlined":true,"color":"gold"}