execute store result score rng1 ris.rng run random value 1..100
execute if score rng1 ris.rng > trade_reroll_chance ris.settings run data modify entity @s Offers.Recipes append from storage ris:random trades[0]
execute if score rng1 ris.rng <= trade_reroll_chance ris.settings run function ris:alchemy/knowledge/debug/new_trade
execute if score rng1 ris.rng <= trade_reroll_chance ris.settings run scoreboard players add #success ris.rng 1

data remove storage ris:random trades[0]
scoreboard players remove rng ris.rng 1

execute if score rng ris.rng matches 1.. run function ris:alchemy/knowledge/debug/reroll_trades