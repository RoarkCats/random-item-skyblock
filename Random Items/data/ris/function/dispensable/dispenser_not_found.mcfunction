# run as/at item, last resort, default first try for sides now
# scoreboard players add fail ris.timer 1

execute if block ~1 ~ ~ dropper[facing=west] run return fail
execute if block ~-1 ~ ~ dropper[facing=east] run return fail
execute if block ~ ~1 ~ dropper[facing=down] run return fail
execute if block ~ ~-1 ~ dropper[facing=up] run return fail
execute if block ~ ~ ~1 dropper[facing=north] run return fail
execute if block ~ ~ ~-1 dropper[facing=south] run return fail
# should be using #ris:dispenser_candidate_false block tag including crafters (uses orientation over facing), but realistically ppl aren't gonna have special items/buckets coming out of those, so I'll take the performance gain 

execute positioned ~1 ~ ~ if block ~ ~ ~ dropper[facing=west] run return run function ris:dispensable/dispenser_found
execute positioned ~-1 ~ ~ if block ~ ~ ~ dropper[facing=east] run return run function ris:dispensable/dispenser_found
# execute positioned ~ ~1 ~ if block ~ ~ ~ dropper[facing=down] run return run function ris:dispensable/dispenser_found
# execute positioned ~ ~-1 ~ if block ~ ~ ~ dropper[facing=up] run return run function ris:dispensable/dispenser_found
execute positioned ~ ~ ~1 if block ~ ~ ~ dropper[facing=north] run return run function ris:dispensable/dispenser_found
execute positioned ~ ~ ~-1 if block ~ ~ ~ dropper[facing=south] run return run function ris:dispensable/dispenser_found
# detection so damn good for up/down dispensers that we don't even need to consider backups for them, better to optimize for performance lmao