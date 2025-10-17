scoreboard players set in risRNG 0
scoreboard players set in1 risRNG 1
function ris:rng/range_lcg

execute if score out risRNG matches 0 run function ris:custom-items/debug/block-break
execute if score out risRNG matches 1 run function ris:custom-items/debug/block-mine