scoreboard players operation #out ris.rng = out ris.rng


scoreboard players set in ris.rng 0
scoreboard players set in1 ris.rng 1
function ris:rng/range_lcg

execute if score out ris.rng matches 0 run fill ~-3 ~1 ~-3 ~3 ~1 ~3 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 1 run fill ~-9 ~1 ~-9 ~9 ~1 ~9 stone replace #ris:jigsaw_replaceable

scoreboard players set in ris.rng 0
execute if score out ris.rng matches 0 run scoreboard players set in ris.rng 3
scoreboard players set in1 ris.rng 5
function ris:rng/range_lcg

execute if score out ris.rng matches 0 run fill ~-3 ~-11 ~-3 ~3 ~-11 ~3 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 1 run fill ~-3 ~-20 ~-3 ~3 ~-20 ~3 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 2 run fill ~-3 ~-29 ~-3 ~3 ~-29 ~3 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 3 run fill ~-9 ~-11 ~-9 ~9 ~-11 ~9 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 4 run fill ~-9 ~-20 ~-9 ~9 ~-20 ~9 stone replace #ris:jigsaw_replaceable
execute if score out ris.rng matches 5 run fill ~-9 ~-29 ~-9 ~9 ~-29 ~9 stone replace #ris:jigsaw_replaceable

execute store success score #success ris.rng run place feature large_dripstone

fill ~-9 ~1 ~-9 ~9 ~1 ~9 air replace stone
execute if score out ris.rng matches 3.. run scoreboard players remove out ris.rng 3
execute if score out ris.rng matches 0 run fill ~-9 ~-11 ~-9 ~9 ~-11 ~9 air replace stone
execute if score out ris.rng matches 1 run fill ~-9 ~-20 ~-9 ~9 ~-20 ~9 air replace stone
execute if score out ris.rng matches 2 run fill ~-9 ~-29 ~-9 ~9 ~-29 ~9 air replace stone


scoreboard players operation out ris.rng = #out ris.rng