# include tool type.? doesnt matter for diamond/netherite, and will still be slower, technically on all tools but only affects pickaxes
# data modify storage ris:generator Item.components.minecraft:tool.rules append value {"correct_for_drops":false}
# execute store result score rng ris.rng run random value 0..5
# execute if score rng ris.rng matches 0 run data modify storage ris:generator Item.components.minecraft:tool.rules[0].blocks set value "#minecraft:incorrect_for_netherite_tool"
# execute if score rng ris.rng matches 1 run data modify storage ris:generator Item.components.minecraft:tool.rules[0].blocks set value "#minecraft:incorrect_for_diamond_tool"
# execute if score rng ris.rng matches 2 run data modify storage ris:generator Item.components.minecraft:tool.rules[0].blocks set value "#minecraft:incorrect_for_iron_tool"
# execute if score rng ris.rng matches 3 run data modify storage ris:generator Item.components.minecraft:tool.rules[0].blocks set value "#minecraft:incorrect_for_gold_tool"
# execute if score rng ris.rng matches 4 run data modify storage ris:generator Item.components.minecraft:tool.rules[0].blocks set value "#minecraft:incorrect_for_stone_tool"
# execute if score rng ris.rng matches 5 run data modify storage ris:generator Item.components.minecraft:tool.rules[0].blocks set value "#minecraft:incorrect_for_wooden_tool"

data modify storage ris:generator Item.components.minecraft:tool.rules append value {"blocks":"#minecraft:mineable/pickaxe","correct_for_drops":true}
data modify storage ris:generator Item.components.minecraft:tool.rules[-1].speed set from storage ris:generator components[{id:"tool_pickaxe"}].speed

item modify entity @s contents {"function":"set_lore","mode":"append","lore":[{"text":"Tool - Pickaxe","color":"gray","italic":false}]}