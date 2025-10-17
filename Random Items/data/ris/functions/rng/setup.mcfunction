scoreboard objectives add ris.rng dummy

#scoreboard players set in ris.rng 100
#scoreboard players set in1 ris.rng 0

scoreboard players set #lcg_constant ris.rng 1103515245
execute unless score #lcg ris.rng matches ..0 unless score #lcg ris.rng matches 1.. run function ris:rng/uuid_reset