scoreboard players operation #out ris.rng = out ris.rng


scoreboard players set in ris.rng 0
scoreboard players set in1 ris.rng 2
function ris:rng/range_lcg

fill ~1 ~1 ~1 ~-1 ~1 ~-1 basalt replace #ris:jigsaw_replaceable

execute if score out ris.rng matches 0 run fill ~1 ~-12 ~1 ~-1 ~-12 ~-1 basalt replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 1 run fill ~1 ~-24 ~1 ~-1 ~-24 ~-1 basalt replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 2 run fill ~1 ~-36 ~1 ~-1 ~-36 ~-1 basalt replace #ris:jigsaw_replaceable

execute store success score #success ris.rng run place feature basalt_pillar

execute if score #success ris.rng matches 0 if score out ris.rng matches 0 run fill ~1 ~-12 ~1 ~-1 ~-12 ~-1 air replace basalt
execute if score #success ris.rng matches 0 if score out ris.rng matches 1 run fill ~1 ~-24 ~1 ~-1 ~-24 ~-1 air replace basalt
execute if score #success ris.rng matches 0 if score out ris.rng matches 2 run fill ~1 ~-36 ~1 ~-1 ~-36 ~-1 air replace basalt


scoreboard players operation out ris.rng = #out ris.rng