function ris:custom_items/trader/add_trade

scoreboard players remove count ris.rng 1
execute if score count ris.rng matches 1.. run return run function ris:custom_items/trader/trades
tag @s remove ris.new

execute if score #hint ris.alchemy_hint matches 1.. run function ris:alchemy/book/hint_trade