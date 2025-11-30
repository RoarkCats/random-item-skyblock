data modify storage ris:random menu set value "settings"
function ris:msgs/_refresh_menu with storage ris:random

playsound item.book.page_turn master @s[tag=!ris.refresh_settings_menu] ~ ~ ~ 8 1.2


tellraw @s [{"text":"","color":"dark_aqua"},{"text":" ","underlined":true},{"text":" ","strikethrough":true}," Special Item Settings ",{"text":" ","strikethrough":true},{"text":" \n","underlined":true}]

function ris:settings/special/generator_names/msg
function ris:settings/special/dispensable_special_items/msg
function ris:settings/special/disp_special_item_delay/msg
function ris:settings/special/destroy_range/msg
function ris:settings/special/shulker_dupe/msg
function ris:settings/special/written_book_dupe/msg
function ris:settings/special/special_item_dupe/msg
function ris:settings/special/unstackable_dupe_count/msg
function ris:settings/special/cmd_special_items/msg
function ris:settings/special/trader_special_items/msg
function ris:settings/special/debug_drops_chance/msg

tellraw @s {"text":"                                \n","underlined":true,"color":"dark_aqua"}