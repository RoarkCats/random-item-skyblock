tag @s remove ris.blank_item
tag @s add ris.spawned_item
execute if score rng ris.rng matches 65.. run scoreboard players remove rng ris.rng 64

# Set Count
execute if score rng ris.rng matches 64.. run data merge entity @s {Item:{count:64}}
execute if score rng ris.rng matches 1..63 store result entity @s Item.count int 1 run scoreboard players get rng ris.rng

# Adjust if custom item
execute unless items entity @s contents *[custom_data~{ris:{custom_item:1b}}] run return 1
execute if score cmd_special_items ris.settings matches 0..63 store result entity @s Item.count int 1 run scoreboard players get cmd_special_items ris.settings

# Adjust if last custom item
execute if score rng ris.rng matches 64.. run return 1
execute if score cmd_special_items ris.settings matches 0..63 run scoreboard players operation rng ris.rng *= cmd_special_items ris.settings
execute if score cmd_special_items ris.settings matches 0..63 run scoreboard players operation rng ris.rng /= #64 ris.timer
execute store result entity @s Item.count int 1 run scoreboard players get rng ris.rng