tag @s add ris.tagged_item

# broken item frame and block fix, allay item throwing fix
tag @s[nbt={Age:0s,PickupDelay:10s}] add ris.spawned_item
# cancel rest if generally spawned, also label normal_item super-tag
tag @s[tag=ris.spawned_item] add ris.normal_item
execute if entity @s[tag=ris.spawned_item] run return 0


execute if data entity @s Thrower run tag @s add ris.hand_dropped

tag @s[nbt={Item:{id:"minecraft:command_block",count:1}}] add ris.command_block
tag @s[nbt={Item:{id:"minecraft:chain_command_block",count:1}}] add ris.chain_command_block
tag @s[nbt={Item:{id:"minecraft:repeating_command_block",count:1}}] add ris.repeating_command_block
tag @s[nbt={Item:{id:"minecraft:structure_block",count:1}}] add ris.structure_block
tag @s[nbt={Item:{id:"minecraft:jigsaw",count:1}}] add ris.jigsaw
tag @s[nbt={Item:{id:"minecraft:debug_stick",count:1}}] add ris.debug_stick
tag @s[nbt={Item:{id:"minecraft:knowledge_book",count:1}}] add ris.knowledge_book

tag @s[nbt=!{Item:{count:1}}] add ris.normal_item

# if not tagged above, is normal_item
tag @s[tag=!ris.command_block,tag=!ris.chain_command_block,tag=!ris.repeating_command_block,tag=!ris.structure_block,tag=!ris.jigsaw,tag=!ris.debug_stick,tag=!ris.knowledge_book] add ris.normal_item