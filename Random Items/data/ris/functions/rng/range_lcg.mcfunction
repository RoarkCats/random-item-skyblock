scoreboard players add in1 risRNG 1
scoreboard players operation #range risRNG = in1 risRNG
scoreboard players operation #range risRNG -= in risRNG

scoreboard players operation #m1 risRNG = #range risRNG
scoreboard players remove #m1 risRNG 1
function ris:rng/next_int_lcg
scoreboard players operation out risRNG += in risRNG

scoreboard players reset #m1 risRNG
scoreboard players remove in1 risRNG 1