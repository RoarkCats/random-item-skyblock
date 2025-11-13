forceload add ~ ~

data modify storage ris:random forceload append value {}
execute store result storage ris:random forceload[-1].x int 16 run scoreboard players get #temp0 ris.timer
execute store result storage ris:random forceload[-1].z int 16 run scoreboard players get #temp2 ris.timer