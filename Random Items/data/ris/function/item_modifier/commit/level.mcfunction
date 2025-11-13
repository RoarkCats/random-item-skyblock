execute store result score in ris.rng run data get storage ris:generator Item.levels[0]
scoreboard players operation #level ris.rng += in ris.rng
data remove storage ris:generator Item.levels[0]

scoreboard players remove count ris.rng 1
execute if score count ris.rng matches 1.. run return run function ris:item_modifier/commit/level

# gap widens by 2 each time (4-2=2, 9-5=4, 16-10=6, ...)
execute if score #level ris.rng matches ..1 run data modify storage ris:generator Item.level_txt set value ['{"text":"","color":"gold"}','{"text":"⭐⭐⭐⭐⭐","color":"dark_gray"}']
execute if score #level ris.rng matches 2..4 run data modify storage ris:generator Item.level_txt set value ['{"text":"⭐","color":"gold"}','{"text":"⭐⭐⭐⭐","color":"dark_gray"}']
execute if score #level ris.rng matches 5..9 run data modify storage ris:generator Item.level_txt set value ['{"text":"⭐⭐","color":"gold"}','{"text":"⭐⭐⭐","color":"dark_gray"}']
execute if score #level ris.rng matches 10..16 run data modify storage ris:generator Item.level_txt set value ['{"text":"⭐⭐⭐","color":"gold"}','{"text":"⭐⭐","color":"dark_gray"}']
execute if score #level ris.rng matches 17..25 run data modify storage ris:generator Item.level_txt set value ['{"text":"⭐⭐⭐⭐","color":"gold"}','{"text":"⭐","color":"dark_gray"}']
execute if score #level ris.rng matches 26.. run data modify storage ris:generator Item.level_txt set value ['{"text":"⭐⭐⭐⭐⭐","color":"gold"}','{"text":"","color":"dark_gray"}']

# execute if score component_level_max ris.settings matches 1.. if score #level ris.rng >= component_level_max ris.settings run data modify entity @s Item.components.minecraft:custom_data.ris.components[{id:"level"}].locked set value 1b
execute if score component_level_max ris.settings matches 1.. if score #level ris.rng >= component_level_max ris.settings run data modify storage ris:generator components[{id:"level"}].locked set value 1b
execute if data storage ris:generator components[{locked:1b}] run data modify storage ris:generator Item.level_txt append value '{"text":" 🔒","color":"yellow"}'

execute if score component_level_display ris.settings matches 1 run data modify storage ris:generator Item.level_txt append value '[{"text":" Level: ","color":"dark_green"},{"score":{"name":"#level","objective":"ris.rng"},"color":"green"}]'

item modify entity @s contents {function:"set_lore",entity:"this",lore:[{"nbt":"Item.level_txt[]","storage":"ris:generator","italic":false,"interpret":true,"separator":""}],mode:"append"}

# these are really hard to reach without dupe merging
# execute if score #level ris.rng matches 37..49 run item modify entity @s contents {function:"set_lore",lore:[[{"text":"⭐","color":"light_purple","italic":false},{"text":"⭐⭐⭐⭐","color":"gold"}]],mode:"append"}
# execute if score #level ris.rng matches 50..64 run item modify entity @s contents {function:"set_lore",lore:[[{"text":"⭐⭐","color":"light_purple","italic":false},{"text":"⭐⭐⭐","color":"gold"}]],mode:"append"}
# execute if score #level ris.rng matches 65..81 run item modify entity @s contents {function:"set_lore",lore:[[{"text":"⭐⭐⭐","color":"light_purple","italic":false},{"text":"⭐⭐","color":"gold"}]],mode:"append"}
# execute if score #level ris.rng matches 82..100 run item modify entity @s contents {function:"set_lore",lore:[[{"text":"⭐⭐⭐⭐","color":"light_purple","italic":false},{"text":"⭐","color":"gold"}]],mode:"append"}
# execute if score #level ris.rng matches 101.. run item modify entity @s contents {function:"set_lore",lore:[[{"text":"⭐⭐⭐⭐⭐","color":"light_purple","italic":false},{"text":"","color":"gold"}]],mode:"append"}

# ref:{level:x,stars:y,reached_level_100:z} used mainly for advancements or debug (commits to item outside function)
execute store result storage ris:generator components[{id:"level"}].ref.level int 1 run scoreboard players get #level ris.rng
execute if score #level ris.rng matches ..1 run data modify storage ris:generator components[{id:"level"}].ref.stars set value 0
execute if score #level ris.rng matches 2..4 run data modify storage ris:generator components[{id:"level"}].ref.stars set value 1
execute if score #level ris.rng matches 5..9 run data modify storage ris:generator components[{id:"level"}].ref.stars set value 2
execute if score #level ris.rng matches 10..16 run data modify storage ris:generator components[{id:"level"}].ref.stars set value 3
execute if score #level ris.rng matches 17..25 run data modify storage ris:generator components[{id:"level"}].ref.stars set value 4
execute if score #level ris.rng matches 26.. run data modify storage ris:generator components[{id:"level"}].ref.stars set value 5
execute store success storage ris:generator components[{id:"level"}].ref.reached_level_100 byte 1 if score #level ris.rng matches 100..