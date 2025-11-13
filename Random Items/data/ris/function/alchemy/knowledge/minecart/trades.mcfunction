function ris:alchemy/knowledge/minecart/add_trade

scoreboard players remove rng ris.rng 1
execute if score rng ris.rng matches 1.. run return run function ris:alchemy/knowledge/minecart/trades
tag @s remove ris.new