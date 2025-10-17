scoreboard players add in1 ris.rng 1
scoreboard players operation #range ris.rng = in1 ris.rng
scoreboard players operation #range ris.rng -= in ris.rng

scoreboard players operation #m1 ris.rng = #range ris.rng
scoreboard players remove #m1 ris.rng 1
function ris:rng/next_int_lcg
scoreboard players operation out ris.rng += in ris.rng

scoreboard players reset #m1 ris.rng
scoreboard players remove in1 ris.rng 1