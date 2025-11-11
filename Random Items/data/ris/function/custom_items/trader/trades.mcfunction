function ris:custom_items/trader/add_trade
scoreboard players remove rng ris.rng 1
execute if score rng ris.rng matches 1.. run function ris:custom_items/trader/trades