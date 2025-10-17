scoreboard objectives add risRNG dummy

#scoreboard players set in risRNG 100
#scoreboard players set in1 risRNG 0

scoreboard players set #lcg_constant risRNG 1103515245
execute unless score #lcg risRNG matches ..0 unless score #lcg risRNG matches 1.. run function ris:rng/uuid_reset