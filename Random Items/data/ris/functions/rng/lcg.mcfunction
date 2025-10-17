# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg risRNG *= #lcg_constant risRNG
scoreboard players add #lcg risRNG 12345
scoreboard players operation out risRNG = #lcg risRNG