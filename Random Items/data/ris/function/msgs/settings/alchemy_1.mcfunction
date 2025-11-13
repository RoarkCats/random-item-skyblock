data modify storage ris:random menu set value "settings"
function ris:msgs/_refresh_menu with storage ris:random

playsound item.book.page_turn master @s[tag=!ris.refresh_settings_menu] ~ ~ ~ 8 1.2


tellraw @s [{"text":"","color":"gold"},{"text":" ","underlined":true},{"text":" ","strikethrough":true}," Alchemy Item Settings ",{"text":" ","strikethrough":true},{"text":" \n","underlined":true}]

tellraw @s ["  ",{"text":"[◀]","color":"dark_gray","hoverEvent":{"action":"show_text","value":{"text":"Previous Page","color":"dark_gray"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_2"}},{"text":"  Page 1  ","color":"yellow"},{"text":"[▶]","color":"gold","hoverEvent":{"action":"show_text","value":{"text":"Next Page","color":"gold"}},"clickEvent":{"action":"run_command","value":"/function ris:msgs/settings/alchemy_2"}}]

tellraw @s ""

function ris:settings/alchemy/cauldron_water_use/msg
function ris:settings/alchemy/dispensable_cauldrons/msg
function ris:settings/alchemy/compendium_auto_revise/msg
function ris:settings/alchemy/compendium_sync/msg
function ris:settings/alchemy/sherd_modifiers/msg
function ris:settings/alchemy/combinable_duped_items/msg
function ris:settings/alchemy/component_level_display/msg
function ris:settings/alchemy/component_level_max/msg
function ris:settings/alchemy/component_merge_chance/msg

tellraw @s {"text":"                                \n","underlined":true,"color":"gold"}