# Run by generators in-between item generation rounds when not disabled

# for alchemy ones already run as/at all generators
execute if entity @s run return run execute if entity @s[tag=!ris.gen_off] run particle reverse_portal ~ ~0.5 ~ .05 .05 .05 0.01 3
# for normal ones run by main
execute as @e[tag=ris.generator,tag=!ris.gen_off] at @s run particle reverse_portal ~ ~0.5 ~ .05 .05 .05 0.01 3