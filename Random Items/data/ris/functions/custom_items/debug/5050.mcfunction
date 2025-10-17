scoreboard players set in ris.rng 0
scoreboard players set in1 ris.rng 1
function ris:rng/range_lcg

execute if score out ris.rng matches 0 run function ris:custom_items/debug/block-break
execute if score out ris.rng matches 1 run function ris:custom_items/debug/block-mine