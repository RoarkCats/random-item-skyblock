# run when firework used, must check if holding duration 3 rocket & not used on block
execute if predicate ris:maximal_thrust run advancement grant @s only ris:ris/lets_get_crafting/maximal_thrust

scoreboard players reset @s ris.firework_use
advancement revoke @s only ris:ris/lets_get_crafting/maximal_thrust_trigger