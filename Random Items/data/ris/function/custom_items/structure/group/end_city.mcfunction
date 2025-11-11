#20 included, outer weight of 16
execute store result score rng1 ris.rng run random value 0..20

execute if score rng1 ris.rng matches 0 run place template end_city/base_floor
execute if score rng1 ris.rng matches 1 run place template end_city/base_roof
execute if score rng1 ris.rng matches 2 run place template end_city/bridge_end
execute if score rng1 ris.rng matches 3 run place template end_city/bridge_gentle_stairs
execute if score rng1 ris.rng matches 4 run place template end_city/bridge_piece
execute if score rng1 ris.rng matches 5 run place template end_city/bridge_steep_stairs
execute if score rng1 ris.rng matches 6 run place template end_city/fat_tower_base
execute if score rng1 ris.rng matches 7 run place template end_city/fat_tower_middle
execute if score rng1 ris.rng matches 8 run place template end_city/fat_tower_top
execute if score rng1 ris.rng matches 9 run place template end_city/second_floor_1
execute if score rng1 ris.rng matches 10 run place template end_city/second_floor_2
execute if score rng1 ris.rng matches 11 run place template end_city/second_roof
execute if score rng1 ris.rng matches 12 run place template end_city/third_floor_1
execute if score rng1 ris.rng matches 13 run place template end_city/third_floor_2
execute if score rng1 ris.rng matches 14 run place template end_city/third_roof
execute if score rng1 ris.rng matches 15 run place template end_city/ship
execute if score rng1 ris.rng matches 16 run place template end_city/tower_base
execute if score rng1 ris.rng matches 17 run place template end_city/tower_floor
execute if score rng1 ris.rng matches 18 run place template end_city/tower_piece
execute if score rng1 ris.rng matches 19 run place template end_city/tower_top