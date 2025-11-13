# run as/at ris.transmuted item activating by custom_items/item

$execute if score $(function) ris.alchemy_item_settings matches 0 run return run tag @s add ris.transmuted_ignore

$function ris:alchemy/$(function)