execute if block ~ ~-.1 ~ bedrock run summon item ~ ~ ~ {Item:{id:"minecraft:bedrock",Count:1b},PickupDelay:40s}
execute if block ~ ~-.1 ~ barrier run summon item ~ ~ ~ {Item:{id:"minecraft:barrier",Count:1b},PickupDelay:40s}
execute if block ~ ~-.1 ~ command_block run summon item ~ ~ ~ {Item:{id:"minecraft:command_block",Count:1b,tag:{display:{Lore:['{"text":"Receive a stack of a random block by dropping me","color":"red","italic":false}']}}},PickupDelay:40s}
execute if block ~ ~-.1 ~ repeating_command_block run summon item ~ ~ ~ {Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{display:{Lore:['{"text":"Create a random item generator by dropping me","color":"red","italic":false}']}}},PickupDelay:40s}
execute if block ~ ~-.1 ~ chain_command_block run summon item ~ ~ ~ {Item:{id:"minecraft:chain_command_block",Count:1b,tag:{display:{Lore:['{"text":"Create an item multiplier by dropping me","color":"red","italic":false}']}}},PickupDelay:40s}
execute if block ~ ~-.1 ~ end_portal_frame run summon item ~ ~ ~ {Item:{id:"minecraft:end_portal_frame",Count:1b},PickupDelay:40s}
execute if block ~ ~-.1 ~ structure_block run summon item ~ ~ ~ {Item:{id:"minecraft:structure_block",Count:1b,tag:{display:{Lore:['{"text":"Generate a random structure by dropping me","color":"red","italic":false}','{"text":"► This may destroy blocks in a 32","color":"red","bold":true,"italic":false}','{"text":"block range of your positive xyz ◄","color":"red","bold":true,"italic":false}']}}},PickupDelay:40s}
execute if block ~ ~-.1 ~ jigsaw run summon item ~ ~ ~ {Item:{id:"minecraft:jigsaw",Count:1b},PickupDelay:40s}
setblock ~ ~-.1 ~ air
particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force
playsound minecraft:block.anvil.break master @a ~ ~ ~ 2
kill @s