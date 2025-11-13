data modify storage ris:random menu set value "settings"
function ris:msgs/_refresh_menu with storage ris:random

playsound item.book.page_turn master @s[tag=!ris.refresh_settings_menu] ~ ~ ~ 8 1.2


# this line has 1 extra space, doesn't line up perfectly but looks better than unsymtrical
tellraw @s [{"text":"","color":"dark_green"},{"text":"    ","underlined":true},{"text":" ","strikethrough":true}," General Settings ",{"text":" ","strikethrough":true},{"text":"    \n","underlined":true}]

function ris:settings/general/item_giver/msg
function ris:settings/general/next_item_bar/msg
function ris:settings/general/same_items/msg
function ris:settings/general/special_items/msg
function ris:settings/general/alchemy_items/msg
function ris:settings/general/loot_box_shulkers/msg
function ris:settings/general/void_totems/msg
function ris:settings/general/dragon_spawn_egg_prot/msg
function ris:settings/general/refresh_settings_menu/msg
function ris:settings/general/retag_old_tags/msg

tellraw @s {"text":"                                \n","underlined":true,"color":"dark_green"}