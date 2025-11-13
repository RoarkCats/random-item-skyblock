# Run by /alchemy/_recipe/recipes as/at item
# Notable tags: this (@s), that, ris.recipe (this or that)

execute align xyz run summon ominous_item_spawner ~0.5 ~0.75 ~0.5 {Tags:["ris.alchemy_craft","ris.new"],spawn_item_after_ticks:37,item:{id:"minecraft:stone",count:1}}
loot spawn ~ ~ ~ loot ris:alchemy/alchemy_recipe
data modify entity @n[type=ominous_item_spawner,tag=ris.new] item set from entity @n[type=item,tag=!ris.tagged_item,nbt={Age:0s}] Item
tag @n[type=ominous_item_spawner,tag=ris.new] remove ris.new
kill @n[type=item,tag=!ris.tagged_item,nbt={Age:0s}]

function ris:alchemy/empty_cauldron

execute align xyz run particle enchant ~0.5 ~0.75 ~0.5 .1 .1 .1 0.6 25

tag @n[type=item,tag=ris.recipe,limit=2] add ris.dead
kill @e[type=item,tag=ris.dead]

execute on origin run return run scoreboard players add @s ris.transmutations 1
advancement grant @p[distance=..16] only ris:alchemy/transmutation/redstone_alchemy


#0     Name: Super Command Block                 Combination: command_block, command_block                           Path: double/command
#1     Name: Super Chain Command Block           Combination: chain_command_block, chain_command_block               Path: double/chain
#2     Name: Super Repeating Command Block       Combination: repeating_command_block, repeating_command_block       Path: double/repeat
#3     Name: Super Command Block Minecart        Combination: command_block_minecart, command_block_minecart         Path: double/minecart
#4     Name: Giga Structure                      Combination: structure_block, structure_block                       Path: double/structure
#5     Name: Biome Replacer                      Combination: jigsaw, jigsaw                                         Path: double/jigsaw
#6     Name: Super Debug Stick                   Combination: debug_stick, debug_stick                               Path: double/debug
#7     Name: Super Knowledge Book                Combination: knowledge_book, knowledge_book                         Path: double/knowledge

#8     Name: Stack Gambler                       Combination: command_block, chain_command_block                     Path: command/chain
#9     Name: Stack Generator                     Combination: command_block, repeating_command_block                 Path: command/repeat
#10    Name: Component Gambler                   Combination: chain_command_block, repeating_command_block           Path: command/chain_repeat

#11    Name: Stack Minecart                      Combination: command_block_minecart, command_block                  Path: command/minecart
#12    Name: Multiplied Minecart                 Combination: command_block_minecart, chain_command_block            Path: command/chain_minecart
#13    Name: Loot Generator                      Combination: command_block_minecart, repeating_command_block        Path: command/repeat_minecart

#14    Name: Random Cube                         Combination: structure_block, command_block_minecart                Path: structure/minecart
#15    Name: Command Cube                        Combination: structure_block, command_block                         Path: structure/command
#16    Name: Clone Paste                         Combination: structure_block, chain_command_block                   Path: structure/chain
#17    Name: Structure Generator                 Combination: structure_block, repeating_command_block               Path: structure/repeat

#18    Name: Block Shifter                       Combination: jigsaw, structure_block                                Path: jigsaw/structure
#19    Name: Block Randomizer                    Combination: jigsaw, command_block_minecart                         Path: jigsaw/minecart
#20    Name: Block Replacer                      Combination: jigsaw, command_block                                  Path: jigsaw/command
#21    Name: Clone Copy                          Combination: jigsaw, chain_command_block                            Path: jigsaw/chain
#22    Name: Jigsaw Generator                    Combination: jigsaw, repeating_command_block                        Path: jigsaw/repeat

#23    Name: Vein Miner                          Combination: debug_stick, jigsaw                                    Path: debug/jigsaw
#24    Name: Inverse Vein Miner                  Combination: debug_stick, structure_block                           Path: debug/structure
#25    Name: Loot Miner                          Combination: debug_stick, command_block_minecart                    Path: debug/minecart
#26    Name: Command Miner                       Combination: debug_stick, command_block                             Path: debug/command
#27    Name: Chain Miner                         Combination: debug_stick, chain_command_block                       Path: debug/chain
#28    Name: Block Miner                         Combination: debug_stick, repeating_command_block                   Path: debug/repeat

#29    Name: Knowledge Reroller                  Combination: knowledge_book, debug_stick                            Path: knowledge/debug
#30    Name: Jigsaw Book                         Combination: knowledge_book, jigsaw                                 Path: knowledge/jigsaw
#31    Name: Structure Book                      Combination: knowledge_book, structure_block                        Path: knowledge/structure
#32    Name: Loot Book                           Combination: knowledge_book, command_block_minecart                 Path: knowledge/minecart
#33    Name: Stack Book                          Combination: knowledge_book, command_block                          Path: knowledge/command
#34    Name: Knowledge Multiplier                Combination: knowledge_book, chain_command_block                    Path: knowledge/chain
#35    Name: Knowledge Generator                 Combination: knowledge_book, repeating_command_block                Path: knowledge/repeat