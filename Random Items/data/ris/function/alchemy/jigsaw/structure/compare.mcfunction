$execute at @e[type=marker,tag=ris.block_shift,distance=0.1..20] if blocks ~ ~ ~ ~ ~ ~ $(x) $(y) $(z) all run return run data modify entity @s data.id set from entity @n[type=marker,tag=ris.block_shift] data.id

scoreboard players add #id ris.rng 1