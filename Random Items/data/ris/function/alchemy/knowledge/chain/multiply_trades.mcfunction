# run as blank_item from ../knowledge/chain/multiply
execute unless data storage ris:random trades[0].priceMultiplier run function ris:alchemy/knowledge/chain/multiply_trade

data modify storage ris:random trades append from storage ris:random trades[0]
data remove storage ris:random trades[0]
scoreboard players remove rng ris.rng 1

execute if score rng ris.rng matches 1.. run return run function ris:alchemy/knowledge/chain/multiply_trades
kill @s[type=item]