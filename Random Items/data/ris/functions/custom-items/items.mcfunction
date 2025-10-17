##Command blocks & Other Special Items
#Command Block - 64 of any item
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:command_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.8] unless entity @e[tag=RISmulti,distance=..0.8] run function ris:custom-items/command_block

#Chain Command Block - Muliplies any item by 16
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:chain_command_block",Count:1b},PickupDelay:1s}] run tag @s add hand_dropped
execute as @e[tag=!hand_dropped,tag=!spawned,type=item,nbt={Item:{id:"minecraft:chain_command_block",Count:1b},PickupDelay:0s}] run tag @s add spawned

execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:chain_command_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.8] unless entity @e[tag=RISmulti,distance=..0.8] run function ris:custom-items/chain/chain
execute at @e[tag=RISmulti] run particle minecraft:dragon_breath ~ ~-0.1 ~ 0.15 0.15 0.15 0 4
execute as @e[tag=RISmulti] at @s unless block ~ ~-1 ~ chain_command_block run kill @s

execute if score opCmd risSettings matches 0 if score shulkerDup risSettings matches 0 at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{}}}},nbt=!{Item:{id:"minecraft:command_block"}},nbt=!{Item:{id:"minecraft:repeating_command_block"}},nbt=!{Item:{id:"minecraft:command_block_minecart"}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt=!{Item:{id:"minecraft:structure_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run function ris:custom-items/chain/dup

execute if score opCmd risSettings matches 0 if score shulkerDup risSettings matches 1 at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{Items:[{id:"minecraft:chain_command_block"}]}}}},nbt=!{Item:{tag:{BlockEntityTag:{Items:[{id:"minecraft:command_block"}]}}}},nbt=!{Item:{tag:{BlockEntityTag:{Items:[{id:"minecraft:repeating_command_block"}]}}}},nbt=!{Item:{tag:{BlockEntityTag:{Items:[{id:"minecraft:command_block_minecart"}]}}}},nbt=!{Item:{tag:{BlockEntityTag:{Items:[{id:"minecraft:structure_block"}]}}}},nbt=!{Item:{id:"minecraft:command_block"}},nbt=!{Item:{id:"minecraft:repeating_command_block"}},nbt=!{Item:{id:"minecraft:command_block_minecart"}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt=!{Item:{id:"minecraft:structure_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run function ris:custom-items/chain/dup

execute if score opCmd risSettings matches 1 if score shulkerDup risSettings matches 0 at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{}}}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run function ris:custom-items/chain/dup

execute if score opCmd risSettings matches 1 if score shulkerDup risSettings matches 1 at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{Items:[{id:"minecraft:chain_command_block"}]}}}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run function ris:custom-items/chain/dup


#Repeating Command Block - Item Generator
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:repeating_command_block",Count:1b},PickupDelay:1s}] run tag @s add hand_dropped
execute as @e[tag=!hand_dropped,tag=!spawned,type=item,nbt={Item:{id:"minecraft:repeating_command_block",Count:1b},PickupDelay:0s}] run tag @s add spawned

execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:repeating_command_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.8] unless entity @e[tag=RISmulti,distance=..0.8] run function ris:custom-items/repeat/repeat
execute as @e[tag=RISgen] at @s unless block ~ ~-1 ~ repeating_command_block run kill @s

execute if score give item_timer >= give_item item_timer run scoreboard players add generator item_timer 1

execute if score generator item_timer matches 2.. if score sameItems risSettings matches 1 run function ris:custom-items/repeat/same_item
execute if score generator item_timer matches 2.. if score sameItems risSettings matches 0 as @e[tag=RISgen] at @s unless block ~ ~-1 ~ repeating_command_block{powered:1b} run function ris:custom-items/repeat/dif_item

execute if score generator item_timer matches 2.. run scoreboard players set generator item_timer 0


#Command Block Minecart - 
execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run playsound minecraft:block.chest.open master @a ~ ~ ~ 2

execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run loot spawn ~ ~ ~ loot ris:chests
execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run loot spawn ~ ~ ~ loot ris:chests
execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run loot spawn ~ ~ ~ loot ris:chests
execute if score opCmd risSettings matches 1 as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run loot spawn ~ ~ ~ loot ris:chests
execute if score opCmd risSettings matches 1 as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run loot spawn ~ ~ ~ loot ris:chests

execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run kill @s

#Structure Blocks - Random Structure
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b},PickupDelay:1s}] run tag @s add hand_dropped
execute as @e[tag=!hand_dropped,tag=!spawned,type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b},PickupDelay:0s}] run tag @s add spawned

execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run playsound minecraft:block.anvil.land master @a ~ ~ ~ 2
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/structures


#Debug Stick - Removes Unbreakable Blocks
execute if score debugItems risSettings matches 0 as @e[tag=!spawned,type=item,nbt={PickupDelay:0s,Item:{id:"minecraft:debug_stick",Count:1b}}] at @s if block ~ ~-.1 ~ #ris:debug_break run function ris:custom-items/debug/block-break
execute if score debugItems risSettings matches 1 as @e[tag=!spawned,type=item,nbt={PickupDelay:0s,Item:{id:"minecraft:debug_stick",Count:1b}}] at @s if block ~ ~-.1 ~ #ris:debug_break run function ris:custom-items/debug/block-mine
execute if score debugItems risSettings matches 2 as @e[tag=!spawned,type=item,nbt={PickupDelay:0s,Item:{id:"minecraft:debug_stick",Count:1b}}] at @s if block ~ ~-.1 ~ #ris:debug_break run function ris:custom-items/debug/5050


#Written Book - Spawns the Random Item Trader
execute as @e[tag=!spawned,type=item,nbt={PickupDelay:0s,Item:{id:"minecraft:knowledge_book",Count:1b}}] at @s positioned ~ ~0.01 ~ run function ris:custom-items/random_item_trader