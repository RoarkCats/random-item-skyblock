execute if block ~ ~-0.1 ~ bedrock run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:bedrock",count:1},PickupDelay:11s}
execute if block ~ ~-0.1 ~ barrier run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:barrier",count:1},PickupDelay:11s}
execute if block ~ ~-0.1 ~ command_block run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:command_block",count:1,components:{custom_data:{custom_item:1b},lore:['{"text":"Drops a stack of a random item when dropped","color":"red","italic":false}']}},PickupDelay:11s}
execute if block ~ ~-0.1 ~ repeating_command_block run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:repeating_command_block",count:1,components:{custom_data:{custom_item:1b},lore:['{"text":"Creates a Random Item Generator when dropped","color":"red","italic":false}']}},PickupDelay:11s}
execute if block ~ ~-0.1 ~ chain_command_block run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:chain_command_block",count:1,components:{custom_data:{custom_item:1b},lore:['{"text":"Creates an Item Multiplier when dropped","color":"red","italic":false}']}},PickupDelay:11s}
execute if block ~ ~-0.1 ~ end_portal_frame run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:end_portal_frame",count:1},PickupDelay:11s}
execute if block ~ ~-0.1 ~ structure_block run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:structure_block",count:1,components:{custom_data:{custom_item:1b},lore:['{"text":"Generates a random structure when dropped","color":"red","italic":false}','{"text":"► This may destroy blocks in a 48","color":"red","bold":true,"italic":false}','{"text":"  block range in your positive xyz ◄","color":"red","bold":true,"italic":false}']}},PickupDelay:11s}
execute if block ~ ~-0.1 ~ jigsaw run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:jigsaw",count:1,components:{custom_data:{custom_item:1b},lore:['{"text":"Generates a random feature when dropped","color":"red","italic":false}','{"text":"► This may destroy blocks in a 32*","color":"red","bold":true,"italic":false}','{"text":"  block range in any direction ◄","color":"red","bold":true,"italic":false}']}},PickupDelay:11s}
execute if block ~ ~-0.1 ~ reinforced_deepslate run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:reinforced_deepslate",count:1},PickupDelay:11s}
execute if block ~ ~-0.1 ~ trial_spawner run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:trial_spawner",count:1},PickupDelay:11s}
execute if block ~ ~-0.1 ~ vault run summon item ~ ~ ~ {Tags:["ris.spawned_item"],Item:{id:"minecraft:vault",count:1},PickupDelay:11s}

setblock ~ ~-0.1 ~ air
particle explosion ~ ~ ~ 0 0 0 0 0 force
playsound block.anvil.break block @a ~ ~ ~ 2
kill @s[type=item]