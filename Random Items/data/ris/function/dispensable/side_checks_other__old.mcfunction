## !! LOCATIONAL !!  (no longer in use)



execute if score #temp2 ris.timer matches -102..102 if score #temp3 ris.timer matches 99..400 positioned ~ ~ ~-1 run return run function ris:dispensable/dispenser_found
execute if score #temp2 ris.timer matches -102..102 if score #temp3 ris.timer matches -400..-99 positioned ~ ~ ~1 run return run function ris:dispensable/dispenser_found
execute if score #temp2 ris.timer matches -400..-99 if score #temp3 ris.timer matches -102..102 positioned ~1 ~ ~ run return run function ris:dispensable/dispenser_found
execute if score #temp2 ris.timer matches 99..400 if score #temp3 ris.timer matches -102..102 positioned ~-1 ~ ~ run return run function ris:dispensable/dispenser_found
# extremely good rates optimized for air (4/200k*all sides)

# reached when collidable block in way (sometimes)
execute if score #temp2 ris.timer matches 1.. positioned ~-1 ~ ~ run return run function ris:dispensable/dispenser_found
execute if score #temp3 ris.timer matches 1.. positioned ~ ~ ~-1 run return run function ris:dispensable/dispenser_found
execute if score #temp2 ris.timer < #temp3 ris.timer positioned ~1 ~ ~ run return run function ris:dispensable/dispenser_found
execute if score #temp2 ris.timer > #temp3 ris.timer positioned ~ ~ ~1 run return run function ris:dispensable/dispenser_found

# tellraw @a [{"score":{"name":"#temp2","objective":"ris.timer"}}," : ",{"score":{"name":"#temp3","objective":"ris.timer"}}]

function ris:dispensable/dispenser_not_found