##Command blocks & Other Special Items
#Command Block - 64 of any item
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:command_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/command_block

#Chain Command Block - Muliplies any item by 16
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:chain_command_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/chain/chain
execute at @e[tag=RISmulti] run particle minecraft:dragon_breath ~ ~ ~ .1 .2 .1 0 8
execute as @e[tag=RISmulti] at @s unless block ~ ~-1 ~ chain_command_block run kill @s

execute if score opCmd risSettings matches 0 if score shulkerDup risSettings matches 0 at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{}}}},nbt=!{Item:{id:"minecraft:command_block"}},nbt=!{Item:{id:"minecraft:repeating_command_block"}},nbt=!{Item:{id:"minecraft:command_block_minecart"}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt=!{Item:{id:"minecraft:structure_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run function ris:custom-items/chain/dup

execute if score opCmd risSettings matches 0 if score shulkerDup risSettings matches 1 at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{Items:[{id:"minecraft:chain_command_block"}]}}}},nbt=!{Item:{id:"minecraft:command_block"}},nbt=!{Item:{id:"minecraft:repeating_command_block"}},nbt=!{Item:{id:"minecraft:command_block_minecart"}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt=!{Item:{id:"minecraft:structure_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run function ris:custom-items/chain/dup

execute if score opCmd risSettings matches 1 if score shulkerDup risSettings matches 0 at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{}}}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run function ris:custom-items/chain/dup

execute if score opCmd risSettings matches 1 if score shulkerDup risSettings matches 1 at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{Items:[{id:"minecraft:chain_command_block"}]}}}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run function ris:custom-items/chain/dup


#Repeating Command Block - Item Generator
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:repeating_command_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/repeat/repeat
execute as @e[tag=RISgen] at @s unless block ~ ~-1 ~ repeating_command_block run kill @s

execute if score give item_timer >= give_item item_timer run scoreboard players add generator item_timer 1
execute if score generator item_timer matches 2.. if score sameItems risSettings matches 0 run function ris:custom-items/repeat/sameitem
execute if score generator item_timer matches 2.. if score sameItems risSettings matches 1 run function ris:custom-items/repeat/difitem

scoreboard players set generated item_timer 0
execute as @e[tag=RISgen,limit=1,tag=!generated] run scoreboard players set generated item_timer 1
execute if score generated item_timer matches 0 run tag @e[tag=RISgen] remove generated
execute if score generated item_timer matches 0 run tag @e[tag=RISgen] remove sameGen
execute if score generated item_timer matches 0 if score generator item_timer matches 2.. run scoreboard players set generator item_timer 0


#Command Block Minecart - 
execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run playsound minecraft:block.chest.open master @a ~ ~ ~ 2

execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/chestloot
execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/chestloot
execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/chestloot
execute if score opCmd risSettings matches 1 as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/chestloot
execute if score opCmd risSettings matches 1 as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/chestloot

execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run kill @s

#Structure Blocks - Random Structure
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run playsound minecraft:block.anvil.land master @a ~ ~ ~ 2
execute as @e[tag=!spawned,type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:custom-items/structures


#Debug Stick - Removes Unbreakable Blocks
execute if score debugItems risSettings matches 0 as @e[tag=!spawned,type=item,nbt={PickupDelay:0s,Item:{id:"minecraft:debug_stick",Count:1b}}] at @s if block ~ ~-.1 ~ #ris-debug-break run function ris:custom-items/debug/block-break
execute if score debugItems risSettings matches 1 as @e[tag=!spawned,type=item,nbt={PickupDelay:0s,Item:{id:"minecraft:debug_stick",Count:1b}}] at @s if block ~ ~-.1 ~ #ris-debug-break run function ris:custom-items/debug/block-mine