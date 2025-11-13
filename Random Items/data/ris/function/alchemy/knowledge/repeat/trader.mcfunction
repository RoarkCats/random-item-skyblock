execute if entity @s[tag=ris.trader_maxed] run return run function ris:alchemy/knowledge/repeat/damage

execute unless score @s ris.generator matches 0.. run function ris:alchemy/knowledge/repeat/get_trade_max

function ris:alchemy/knowledge/repeat/new_trade

tag @s[tag=ris.trader_multiplied] remove ris.trader_multiplied

scoreboard players remove @s ris.generator 1
execute if score @s ris.generator matches 0 run tag @s add ris.trader_maxed
execute if score @s ris.generator matches 0 run scoreboard players reset @s ris.generator