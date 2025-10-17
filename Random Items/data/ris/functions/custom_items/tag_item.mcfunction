execute if data entity @s Thrower run tag @s add ris.hand_dropped

# broken item frame and block fix, allay item throwing fix
tag @s[nbt={Age:0s,PickupDelay:10s}] add ris.spawned_item

tag @s[nbt={Item:{id:"minecraft:command_block",Count:1b}}] add ris.command_block
tag @s[nbt={Item:{id:"minecraft:chain_command_block",Count:1b}}] add ris.chain_command_block
tag @s[nbt={Item:{id:"minecraft:repeating_command_block",Count:1b}}] add ris.repeating_command_block
tag @s[nbt={Item:{id:"minecraft:structure_block",Count:1b}}] add ris.structure_block
tag @s[nbt={Item:{id:"minecraft:jigsaw",Count:1b}}] add ris.jigsaw
tag @s[nbt={Item:{id:"minecraft:debug_stick",Count:1b}}] add ris.debug_stick
tag @s[nbt={Item:{id:"minecraft:knowledge_book",Count:1b}}] add ris.knowledge_book

tag @s add ris.tagged_item