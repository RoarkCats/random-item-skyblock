execute if score debug_items ris.settings matches 0 if block ~ ~-0.1 ~ #ris:debug_breakable run function ris:custom_items/debug/block-break
execute if score debug_items ris.settings matches 1 if block ~ ~-0.1 ~ #ris:debug_breakable run function ris:custom_items/debug/block-mine
execute if score debug_items ris.settings matches 2 if block ~ ~-0.1 ~ #ris:debug_breakable run function ris:custom_items/debug/5050

execute on origin run advancement grant @s only ris:unbreakable_broken