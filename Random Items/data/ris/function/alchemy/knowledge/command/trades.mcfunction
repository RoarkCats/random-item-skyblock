function ris:alchemy/knowledge/command/add_trade

scoreboard players remove rng ris.rng 1
execute if score rng ris.rng matches 1.. run return run function ris:alchemy/knowledge/command/trades
tag @s remove ris.new