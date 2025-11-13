fill ~ ~ ~ ~47 ~ ~47 air replace #ris:structure_jigsaw

scoreboard players remove #clear_spawned_blocks ris.rng 1
execute if score #clear_spawned_blocks ris.rng matches 1.. positioned ~ ~1 ~ if predicate ris:y_range_structure run function ris:custom_items/structure/clear_spawned_blocks