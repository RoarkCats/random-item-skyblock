execute store result score rng ris.rng run random value 0..1
execute if score rng ris.rng matches 0 run function ris:custom_items/debug/block-break
execute if score rng ris.rng matches 1 run function ris:custom_items/debug/block-mine