playsound item.trident.hit master @a ~ ~ ~ 2 1
particle end_rod ~ ~0.2 ~ 0 0.1 0 0 8 force

execute align xyz run tp @s ~0.5 ~0.5 ~0.5

tag @s[type=marker] add ris.spawned_marker