execute align xyz if block ~.5 ~.5 ~.5 #ris:debug_breakable on origin run advancement grant @s only ris:special/customized/unbreakable_broken

execute if score debug_drops_chance ris.settings matches ..0 align xyz positioned ~.5 ~.5 ~.5 run return run function ris:custom_items/debug/block_break
execute if score debug_drops_chance ris.settings matches 100.. align xyz positioned ~.5 ~.5 ~.5 run return run function ris:custom_items/debug/block_mine

execute store result score rng ris.rng run random value 1..100
execute if score rng ris.rng <= debug_drops_chance ris.settings align xyz positioned ~.5 ~.5 ~.5 run function ris:custom_items/debug/block_mine
execute if score rng ris.rng > debug_drops_chance ris.settings align xyz positioned ~.5 ~.5 ~.5 run function ris:custom_items/debug/block_break