data modify storage ris:generator Item.seeds append value 0
execute store result storage ris:generator Item.seeds[-1] int 1 run random value 1..2147483647

execute if predicate {condition:random_chance,chance:0.45} run function ris:item_modifier/component/consumable_converts_seeds