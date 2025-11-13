scoreboard players add #temp1 ris.timer 1
# particle wax_on ^ ^ ^

execute unless block ^ ^ ^ #ris:dispenser_candidate if score #temp1 ris.timer matches ..25 positioned ^ ^ ^0.02 run return run function ris:dispensable/find_dispenser
# 0.63% fail rate @ .01
# 0.69% fail rate @ .02
# 0.76% fail rate @ .03
# 0.79% fail rate @ .04

function ris:dispensable/dispenser_found