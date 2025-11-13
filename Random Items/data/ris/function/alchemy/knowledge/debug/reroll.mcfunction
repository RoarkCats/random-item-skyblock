# run as/at a trader
data modify storage ris:random trades set from entity @s Offers.Recipes
data modify entity @s Offers.Recipes set value []

execute store result score rng ris.rng run data get storage ris:random trades
function ris:alchemy/knowledge/debug/reroll_trades

tag @s[tag=ris.trader_multiplied] remove ris.trader_multiplied

scoreboard players set #success ris.rng 1