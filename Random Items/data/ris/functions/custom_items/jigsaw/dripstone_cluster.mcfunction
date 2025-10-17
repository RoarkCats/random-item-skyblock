scoreboard players operation #out ris.rng = out ris.rng


scoreboard players set in ris.rng 0
scoreboard players set in1 ris.rng 2
function ris:rng/range_lcg

# If both ceiling and floor will spawn, randomize again to choose ceiling position
execute if score out ris.rng matches 2 run scoreboard players set in ris.rng 2
execute if score out ris.rng matches 2 run scoreboard players set in1 ris.rng 4
execute if score out ris.rng matches 2 run function ris:rng/range_lcg

execute if score out ris.rng matches 0 run fill ~-8 ~1 ~-8 ~8 ~1 ~8 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 1.. run fill ~-8 ~-1 ~-8 ~8 ~-1 ~8 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 2 run fill ~-8 ~3 ~-8 ~8 ~3 ~8 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 3 run fill ~-8 ~7 ~-8 ~8 ~7 ~8 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 4 run fill ~-8 ~11 ~-8 ~8 ~11 ~8 stone replace #ris:jigsaw_replaceable

execute store success score #success ris.rng run place feature dripstone_cluster

execute if score out ris.rng matches 0 run fill ~-8 ~1 ~-8 ~8 ~1 ~8 air replace stone
execute if score out ris.rng matches 1.. run fill ~-8 ~-1 ~-8 ~8 ~-1 ~8 air replace stone
execute if score out ris.rng matches 2 run fill ~-8 ~3 ~-8 ~8 ~3 ~8 air replace stone
execute if score out ris.rng matches 3 run fill ~-8 ~7 ~-8 ~8 ~7 ~8 air replace stone
execute if score out ris.rng matches 4 run fill ~-8 ~11 ~-8 ~8 ~11 ~8 air replace stone


scoreboard players operation out ris.rng = #out ris.rng