execute align xyz if block ~.5 ~.5 ~.5 #ris:debug_breakable on origin run advancement grant @s only ris:special/customized/unbreakable_broken

execute if score debug_items ris.settings matches 0 align xyz positioned ~.5 ~.5 ~.5 run function ris:custom_items/debug/block_break
execute if score debug_items ris.settings matches 1 align xyz positioned ~.5 ~.5 ~.5 run function ris:custom_items/debug/block_mine
execute if score debug_items ris.settings matches 2 align xyz positioned ~.5 ~.5 ~.5 run function ris:custom_items/debug/5050