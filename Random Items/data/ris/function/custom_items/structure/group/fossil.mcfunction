#16 included, outer weight of 12
execute store result score rng1 ris.rng run random value 0..15

execute if score rng1 ris.rng matches 0 run place template fossil/skull_1
execute if score rng1 ris.rng matches 1 run place template fossil/skull_2
execute if score rng1 ris.rng matches 2 run place template fossil/skull_3
execute if score rng1 ris.rng matches 3 run place template fossil/skull_4
execute if score rng1 ris.rng matches 4 run place template fossil/skull_1_coal
execute if score rng1 ris.rng matches 5 run place template fossil/skull_2_coal
execute if score rng1 ris.rng matches 6 run place template fossil/skull_3_coal
execute if score rng1 ris.rng matches 7 run place template fossil/skull_4_coal
execute if score rng1 ris.rng matches 8 run place template fossil/spine_1
execute if score rng1 ris.rng matches 9 run place template fossil/spine_2
execute if score rng1 ris.rng matches 10 run place template fossil/spine_3
execute if score rng1 ris.rng matches 11 run place template fossil/spine_4
execute if score rng1 ris.rng matches 12 run place template fossil/spine_1_coal
execute if score rng1 ris.rng matches 13 run place template fossil/spine_2_coal
execute if score rng1 ris.rng matches 14 run place template fossil/spine_3_coal
execute if score rng1 ris.rng matches 15 run place template fossil/spine_4_coal