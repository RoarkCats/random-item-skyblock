data remove storage ris:generator Item.seeds
data modify storage ris:generator Item.seeds append value 0
execute store result storage ris:generator Item.seeds[-1] int 1 run random value 1..2147483647
execute if predicate {condition:random_chance,chance:0.65} run function ris:item_modifier/component/consumable_converts_seeds
# should there be a check here to prevent duping if it's a special item..? (for now: revisit after playtest)
data modify storage ris:generator components[{id:"consumable_converts"}].seeds append from storage ris:generator Item.seeds[]