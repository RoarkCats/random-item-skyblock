##Command blocks & Other Special Items
#Command Block - 64 of any item
execute as @e[type=item,nbt={Item:{id:"minecraft:command_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:cmdsumgive

#Chain Command Block - Muliplies any item by 16
execute as @e[type=item,nbt={Item:{id:"minecraft:chain_command_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:chain
execute at @e[tag=RISmulti] run particle minecraft:dragon_breath ~ ~ ~ .1 .3 .1 0 10
execute as @e[tag=RISmulti] at @s unless block ~ ~-1 ~ chain_command_block run kill @s

execute at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{}}}},nbt=!{Item:{id:"minecraft:command_block"}},nbt=!{Item:{id:"minecraft:repeating_command_block"}},nbt=!{Item:{id:"minecraft:command_block_minecart"}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 2 0.9
execute at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{}}}},nbt=!{Item:{id:"minecraft:command_block"}},nbt=!{Item:{id:"minecraft:repeating_command_block"}},nbt=!{Item:{id:"minecraft:command_block_minecart"}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run setblock ~ ~-1 ~ air
execute at @e[tag=RISmulti] as @e[type=item,distance=..0.5,nbt=!{Item:{tag:{BlockEntityTag:{}}}},nbt=!{Item:{id:"minecraft:command_block"}},nbt=!{Item:{id:"minecraft:repeating_command_block"}},nbt=!{Item:{id:"minecraft:command_block_minecart"}},nbt=!{Item:{id:"minecraft:chain_command_block"}},nbt={PickupDelay:0s,Item:{Count:1b}}] run data merge entity @s {Item: {Count: 16b}}


#Repeating Command Block - Item Generator
execute as @e[type=item,nbt={Item:{id:"minecraft:repeating_command_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:repeat
execute as @e[tag=RISgen] at @s unless block ~ ~-1 ~ repeating_command_block run kill @s

execute if score give item_timer >= give_item item_timer run scoreboard players add generator item_timer 1
execute as @e[tag=RISgen] at @s if score generator item_timer matches 2 run function ris:cmdsumspawn
execute as @e[tag=RISgen] at @s if score generator item_timer matches 2 run playsound minecraft:item.armor.equip_gold master @a ~ ~ ~ 2
execute as @e[tag=RISgen] at @s if score generator item_timer matches 2 run particle minecraft:enchant ~ ~.1 ~ 0.1 0 0.1 0 50 force
execute if score generator item_timer matches 2 run scoreboard players set generator item_timer 0

#Command Block Minecart - 
execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run playsound minecraft:block.chest.open master @a ~ ~ ~ 2

execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:chestloot
execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:chestloot
execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:chestloot

execute as @e[type=command_block_minecart] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run kill @s

#Structure Blocks - Random Structure
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run playsound minecraft:block.anvil.land master @a ~ ~ ~ 2
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_block",Count:1b},PickupDelay:0s}] at @s unless entity @e[tag=RISgen,distance=..0.5] unless entity @e[tag=RISmulti,distance=..0.5] run function ris:structures


#Debug Stick - Removes Unbreakable Blocks
execute as @e[type=item,nbt={PickupDelay:0s,Item:{id:"minecraft:debug_stick",Count:1b}}] at @s if block ~ ~-.1 ~ #ris-debug-break run function ris:block-break