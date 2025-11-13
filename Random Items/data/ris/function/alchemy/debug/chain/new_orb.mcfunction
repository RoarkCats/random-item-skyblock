execute store result entity @s Value int 1 run scoreboard players get #value ris.rng
# random motion
execute store result entity @s Motion[0] double 0.001 run random value -100..100
execute store result entity @s Motion[1] double 0.001 run random value 0..200
execute store result entity @s Motion[2] double 0.001 run random value -100..100