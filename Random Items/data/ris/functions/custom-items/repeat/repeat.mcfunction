setblock ~ ~ ~ repeating_command_block[facing=up]
execute if block ~ ~ ~ repeating_command_block align xyz positioned ~.5 ~1.35 ~.5 run summon armor_stand ~ ~ ~ {Tags:["RISgen"],DisabledSlots:4144959,Marker:1b,Invisible:1b,Small:1,CustomNameVisible:1b,CustomName:'{"text":"Item Generator"}'}
execute if block ~ ~ ~ repeating_command_block run kill @s[type=item]