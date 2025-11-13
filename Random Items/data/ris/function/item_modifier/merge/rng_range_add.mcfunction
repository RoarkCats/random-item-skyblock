## Given: 2 scores `in ris.rng` and `in1 ris.rng`
## Output: 1 score `rng ris.rng` between (in,in+in1)

# in=min, in1=max (unless they're negative, then flip it)
execute if score in ris.rng > in1 ris.rng run scoreboard players operation in ris.rng >< in1 ris.rng
execute if score in1 ris.rng matches ..0 run scoreboard players operation in ris.rng >< in1 ris.rng
# in=min, in1=(max+min)-min + 1 (for % to return including)
scoreboard players add in1 ris.rng 1
execute store result score rng ris.rng run random value 1..1000000000
scoreboard players operation rng ris.rng %= in1 ris.rng
scoreboard players operation rng ris.rng += in ris.rng
# rng now in range (min,max+min)