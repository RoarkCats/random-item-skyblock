setblock ~ ~ ~ chain_command_block[facing=up]
execute if block ~ ~ ~ chain_command_block align xyz positioned ~.5 ~1.35 ~.5 run summon armor_stand ~ ~ ~ {Tags:["RISmulti"],DisabledSlots:4144959,Marker:1b,Invisible:1b,Glowing:0b,Small:1,CustomNameVisible:1b,CustomName:'{"text":"Item Multiplier"}'}
execute if block ~ ~ ~ chain_command_block run kill @s[type=item]