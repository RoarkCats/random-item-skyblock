execute store result score rng1 ris.rng run random value 0..2

# If both ceiling and floor will spawn, randomize again to choose ceiling position
execute if score rng1 ris.rng matches 2 store result score rng1 ris.rng run random value 2..4

execute if score rng1 ris.rng matches 0 run fill ~-8 ~1 ~-8 ~8 ~1 ~8 stone replace #ris:jigsaw_replaceable
execute if score rng1 ris.rng matches 1.. run fill ~-8 ~-1 ~-8 ~8 ~-1 ~8 stone replace #ris:jigsaw_replaceable
execute if score rng1 ris.rng matches 2 run fill ~-8 ~3 ~-8 ~8 ~3 ~8 stone replace #ris:jigsaw_replaceable
execute if score rng1 ris.rng matches 3 run fill ~-8 ~7 ~-8 ~8 ~7 ~8 stone replace #ris:jigsaw_replaceable
execute if score rng1 ris.rng matches 4 run fill ~-8 ~11 ~-8 ~8 ~11 ~8 stone replace #ris:jigsaw_replaceable

execute store success score #success ris.rng run place feature dripstone_cluster

execute if score rng1 ris.rng matches 0 run fill ~-8 ~1 ~-8 ~8 ~1 ~8 air replace stone
execute if score rng1 ris.rng matches 1.. run fill ~-8 ~-1 ~-8 ~8 ~-1 ~8 air replace stone
execute if score rng1 ris.rng matches 2 run fill ~-8 ~3 ~-8 ~8 ~3 ~8 air replace stone
execute if score rng1 ris.rng matches 3 run fill ~-8 ~7 ~-8 ~8 ~7 ~8 air replace stone
execute if score rng1 ris.rng matches 4 run fill ~-8 ~11 ~-8 ~8 ~11 ~8 air replace stone