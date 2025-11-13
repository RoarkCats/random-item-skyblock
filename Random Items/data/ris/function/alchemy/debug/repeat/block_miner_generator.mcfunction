# run from alchemy/generator as/at @e[tag=ris.block_miner_generator]

scoreboard players operation #temp ris.generator = block_miner_range ris.settings
execute positioned ~ ~-0.5 ~ align xyz positioned ~0.5 ~0.5 ~0.5 run function ris:alchemy/debug/repeat/ray
execute if score #temp ris.generator matches -1 run playsound block.anvil.hit block @a ~ ~ ~ 1 0.5