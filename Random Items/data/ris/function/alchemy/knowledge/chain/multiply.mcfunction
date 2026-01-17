# run as a trader
data modify storage ris:random trades set from entity @s Offers.Recipes

execute store result score rng ris.rng run data get storage ris:random trades
execute store result score #temp ris.timer if data storage ris:random trades[{priceMultiplier:1f}]
execute if score rng ris.rng = #temp ris.timer run return run tag @s add ris.trader_multiplied

execute at @s run summon item ~ ~ ~ {Tags:["ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
execute at @s as @n[type=item,tag=ris.blank_item] run function ris:alchemy/knowledge/chain/multiply_trades

data modify entity @s Offers.Recipes set from storage ris:random trades
tag @s add ris.trader_multiplied

playsound block.enchantment_table.use block @a ~ ~ ~ 1 0.8
playsound entity.wandering_trader.yes neutral @a ~ ~ ~ 1 0.7

setblock ~ ~-0.5 ~ air
# kick player out of GUI (prevents (dupe) bugs)
execute at @s run tp @s ~ ~ ~