## !! LOCATIONAL !!  (no longer in use)



execute if score #temp2 ris.timer matches -90..90 if score #temp3 ris.timer matches 70..400 positioned ~ ~ ~-1 run return run function ris:dispensable/dispenser_found
execute if score #temp2 ris.timer matches -90..90 if score #temp3 ris.timer matches -400..-70 positioned ~ ~ ~1 run return run function ris:dispensable/dispenser_found
execute if score #temp2 ris.timer matches -400..-70 if score #temp3 ris.timer matches -90..90 positioned ~1 ~ ~ run return run function ris:dispensable/dispenser_found
execute if score #temp2 ris.timer matches 70..400 if score #temp3 ris.timer matches -90..90 positioned ~-1 ~ ~ run return run function ris:dispensable/dispenser_found
# extremely good rates for cauldrons (4/175k*all sides)

# tellraw @a [{"score":{"name":"#temp2","objective":"ris.timer"}}," : ",{"score":{"name":"#temp3","objective":"ris.timer"}}]

function ris:dispensable/dispenser_not_found