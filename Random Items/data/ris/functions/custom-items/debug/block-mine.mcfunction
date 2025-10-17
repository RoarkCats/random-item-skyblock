execute if block ~ ~-.1 ~ bedrock run summon item ~ ~ ~ {Tags:["spawned"],Item:{id:"minecraft:bedrock",Count:1b},PickupDelay:11s}
execute if block ~ ~-.1 ~ barrier run summon item ~ ~ ~ {Tags:["spawned"],Item:{id:"minecraft:barrier",Count:1b},PickupDelay:11s}
execute if block ~ ~-.1 ~ command_block run summon item ~ ~ ~ {Tags:["spawned"],Item:{id:"minecraft:command_block",Count:1b,tag:{display:{Lore:['{"text":"Drops a stack of a random item when dropped","color":"red","italic":false}']}}},PickupDelay:11s}
execute if block ~ ~-.1 ~ repeating_command_block run summon item ~ ~ ~ {Tags:["spawned"],Item:{id:"minecraft:repeating_command_block",Count:1b,tag:{display:{Lore:['{"text":"Creates a random item generator when dropped","color":"red","italic":false}']}}},PickupDelay:11s}
execute if block ~ ~-.1 ~ chain_command_block run summon item ~ ~ ~ {Tags:["spawned"],Item:{id:"minecraft:chain_command_block",Count:1b,tag:{display:{Lore:['{"text":"Creates an item multiplier when dropped","color":"red","italic":false}']}}},PickupDelay:11s}
execute if block ~ ~-.1 ~ end_portal_frame run summon item ~ ~ ~ {Tags:["spawned"],Item:{id:"minecraft:end_portal_frame",Count:1b},PickupDelay:11s}
execute if block ~ ~-.1 ~ structure_block run summon item ~ ~ ~ {Tags:["spawned"],Item:{id:"minecraft:structure_block",Count:1b,tag:{display:{Lore:['{"text":"Generates a random structure when dropped","color":"red","italic":false}','{"text":"► This may destroy blocks in a 48","color":"red","bold":true,"italic":false}','{"text":"block range of your positive xyz ◄","color":"red","bold":true,"italic":false}']}}},PickupDelay:11s}
execute if block ~ ~-.1 ~ jigsaw run summon item ~ ~ ~ {Tags:["spawned"],Item:{id:"minecraft:jigsaw",Count:1b},PickupDelay:11s}
setblock ~ ~-.1 ~ air
particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force
playsound minecraft:block.anvil.break master @a ~ ~ ~ 2
kill @s

