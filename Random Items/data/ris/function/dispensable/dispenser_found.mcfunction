execute unless block ~ ~ ~ dispenser at @s run return run function ris:dispensable/dispenser_not_found
# scoreboard players add success ris.timer 1

execute if score #mode ris.timer matches 1 run function ris:dispensable/dispensed_on_cauldron
execute if score #mode ris.timer matches 2 run function ris:dispensable/dispensed_special_item

return 1