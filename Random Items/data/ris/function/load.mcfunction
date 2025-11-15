## Welcome Message
execute unless entity @a run schedule function ris:msgs/reload 50t
execute if entity @a run schedule function ris:msgs/reload 1t

## Setup
execute store result score #prior_value ris.timer run gamerule maxCommandChainLength
execute if score #prior_value ris.timer matches ..1000000 run gamerule maxCommandChainLength 1000000

execute store result score #prior_value ris.timer run gamerule commandModificationBlockLimit
execute if score #prior_value ris.timer matches ..120000 run gamerule commandModificationBlockLimit 120000

# Scoreboard Objectives
scoreboard objectives add ris.rng dummy
scoreboard objectives add ris.timer dummy
scoreboard objectives add ris.generator dummy
scoreboard objectives add ris.alchemy_hint dummy
scoreboard objectives add ris.auto_revise_cooldown dummy
scoreboard objectives add ris.settings dummy
scoreboard objectives add ris.special_item_settings dummy
scoreboard objectives add ris.alchemy_item_settings dummy
scoreboard objectives add ris.skywars dummy
scoreboard objectives add ris.deaths deathCount

scoreboard objectives add ris.receive_items trigger
scoreboard objectives add ris.destroy_range_preview trigger
scoreboard objectives add ris.update_compendium trigger

scoreboard objectives add ris.time_since_death minecraft.custom:minecraft.time_since_death
scoreboard objectives add ris.use_crafting_table minecraft.custom:minecraft.interact_with_crafting_table
scoreboard objectives add ris.mined_reinforced_deepslate minecraft.mined:minecraft.reinforced_deepslate
scoreboard objectives add ris.mined_trial_spawner minecraft.mined:minecraft.trial_spawner
scoreboard objectives add ris.mined_vault minecraft.mined:minecraft.vault
scoreboard objectives add ris.mined_ender_chest minecraft.mined:minecraft.ender_chest
scoreboard objectives add ris.mined_cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add ris.mined_stone minecraft.mined:minecraft.stone
scoreboard objectives add ris.sweaty_palms dummy
scoreboard objectives add ris.gotta_spawn_em_all dummy
scoreboard objectives add ris.containers dummy
scoreboard objectives add ris.placed_block dummy
scoreboard objectives add ris.bundle_use dummy
scoreboard objectives add ris.drop_item minecraft.custom:minecraft.drop
scoreboard objectives add ris.open_barrel minecraft.custom:minecraft.open_barrel
scoreboard objectives add ris.open_chest minecraft.custom:minecraft.open_chest
scoreboard objectives add ris.open_trapped_chest minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add ris.open_ender_chest minecraft.custom:minecraft.open_enderchest
scoreboard objectives add ris.open_shulker_box minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add ris.pedro minecraft.used:minecraft.panda_spawn_egg
scoreboard objectives add ris.cats minecraft.used:minecraft.cat_spawn_egg
scoreboard objectives add ris.mob_kills totalKillCount
scoreboard objectives add ris.air_lift dummy
scoreboard objectives add ris.firework_use minecraft.used:minecraft.firework_rocket
scoreboard objectives add ris.stonks dummy
scoreboard objectives add ris.transmutations dummy
scoreboard objectives add ris.health health
scoreboard objectives add ris.mined_obsidian minecraft.mined:minecraft.obsidian
scoreboard objectives add ris.mined_crying_obsidian minecraft.mined:minecraft.crying_obsidian

# Default Score Settings
execute if score delay ris.timer matches ..4 run scoreboard players set delay ris.timer 5
execute unless score delay ris.timer matches 1.. run scoreboard players set delay ris.timer 600
scoreboard players set #-1 ris.timer -1
scoreboard players set #2 ris.timer 2
scoreboard players set #4 ris.timer 4
scoreboard players set #8 ris.timer 8
scoreboard players set #20 ris.timer 20
scoreboard players set #16 ris.timer 16
scoreboard players set #64 ris.timer 64
scoreboard players set #100 ris.timer 100
scoreboard players set #125 ris.timer 125
scoreboard players set #1000 ris.timer 1000
scoreboard players set #1000000 ris.timer 1000000

function ris:settings/_load_defaults

# Msc. Setup
bossbar add ris:rdtimer "Next Item"
bossbar set ris:rdtimer color green

schedule function ris:advancements/main_5 1t
schedule function ris:advancements/main_20 2t
schedule function ris:advancements/main_100 3t
# staggered so they don't converge on the same tick as much

function ris:alchemy/double/repeat/setup_sherds