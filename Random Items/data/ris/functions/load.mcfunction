## Welcome Message
execute unless entity @a run schedule function ris:msgs/reload 50t
execute if entity @a run schedule function ris:msgs/reload 1t

## Setup
gamerule maxCommandChainLength 1000000

# Scoreboard Objectives
scoreboard objectives add ris.timer dummy
scoreboard objectives add ris.settings dummy
scoreboard objectives add ris.special_item_settings dummy
scoreboard objectives add ris.skywars dummy
scoreboard objectives add ris.deaths deathCount
scoreboard objectives add ris.receive_items trigger

scoreboard objectives add ris.time_since_death minecraft.custom:minecraft.time_since_death
scoreboard objectives add ris.use_crafting_table minecraft.custom:minecraft.interact_with_crafting_table
scoreboard objectives add ris.mined_reinforced_deepslate minecraft.mined:minecraft.reinforced_deepslate
scoreboard objectives add ris.mined_ender_chest minecraft.mined:minecraft.ender_chest
scoreboard objectives add ris.mined_cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add ris.mined_stone minecraft.mined:minecraft.stone
scoreboard objectives add ris.sweaty_palms dummy
scoreboard objectives add ris.gotta_spawn_em_all dummy
scoreboard objectives add ris.containers dummy
scoreboard objectives add ris.placed_block dummy
scoreboard objectives add ris.open_barrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add ris.open_chest minecraft.custom:minecraft.open_chest
scoreboard objectives add ris.open_trapped_chest minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add ris.open_ender_chest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add ris.open_shulker_box minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add ris.use_bundle minecraft.used:minecraft.bundle
scoreboard objectives add ris.pedro minecraft.used:minecraft.panda_spawn_egg

# Defaults Score Settings
execute if score delay ris.timer matches ..4 run scoreboard players set delay ris.timer 5
execute unless score delay ris.timer matches 1.. run scoreboard players set delay ris.timer 600
scoreboard players set #2 ris.timer 2

execute unless score item_giver ris.settings matches 0..1 run scoreboard players set item_giver ris.settings 1
execute unless score same_items ris.settings matches 0..1 run scoreboard players set same_items ris.settings 0
execute unless score special_items ris.settings matches 0..1 run scoreboard players set special_items ris.settings 1
execute unless score op_cmd ris.settings matches 0..1 run scoreboard players set op_cmd ris.settings 0
execute unless score shulker_dup ris.settings matches 0..1 run scoreboard players set shulker_dup ris.settings 0
execute unless score written_book_dup ris.settings matches 0..1 run scoreboard players set written_book_dup ris.settings 0
execute unless score debug_items ris.settings matches 0..2 run scoreboard players set debug_items ris.settings 1
execute unless score trader_special_items ris.settings matches 0..1 run scoreboard players set trader_special_items ris.settings 0
execute unless score generator_names ris.settings matches 0..1 run scoreboard players set generator_names ris.settings 1
execute unless score void_totems ris.settings matches 0..1 run scoreboard players set void_totems ris.settings 1

execute unless score command_block ris.special_item_settings matches 0..1 run scoreboard players set command_block ris.special_item_settings 1
execute unless score chain_command_block ris.special_item_settings matches 0..1 run scoreboard players set chain_command_block ris.special_item_settings 1
execute unless score repeating_command_block ris.special_item_settings matches 0..1 run scoreboard players set repeating_command_block ris.special_item_settings 1
execute unless score command_block_minecart ris.special_item_settings matches 0..1 run scoreboard players set command_block_minecart ris.special_item_settings 1
execute unless score structure_block ris.special_item_settings matches 0..1 run scoreboard players set structure_block ris.special_item_settings 1
execute unless score jigsaw_block ris.special_item_settings matches 0..1 run scoreboard players set jigsaw_block ris.special_item_settings 1
execute unless score debug_stick ris.special_item_settings matches 0..1 run scoreboard players set debug_stick ris.special_item_settings 1
execute unless score knowledge_book ris.special_item_settings matches 0..1 run scoreboard players set knowledge_book ris.special_item_settings 1
execute unless score creator_heads ris.special_item_settings matches 0..1 run scoreboard players set creator_heads ris.special_item_settings 1

# Msc. Setup
bossbar add ris:rdtimer "Next Item"
bossbar set ris:rdtimer color green

function ris:rng/setup

schedule function ris:advancements/main_20 20t
schedule function ris:advancements/main_100 100t