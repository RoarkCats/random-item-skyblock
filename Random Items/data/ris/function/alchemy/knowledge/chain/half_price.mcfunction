# only run as blank_item from ../knowledge/chain/multiply_trades when a stack is being sold (stack trader) 
execute unless data storage ris:random trades[0].buyB run return run function ris:alchemy/knowledge/chain/swap


# determine which buy item to remove
execute store result score #buy ris.rng run random value 0..1

execute if score #buy ris.rng matches 0 run data modify storage ris:random trades[0].buy set from storage ris:random trades[0].buyB

data remove storage ris:random trades[0].buyB