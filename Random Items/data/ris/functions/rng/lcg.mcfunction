# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg ris.rng *= #lcg_constant ris.rng
scoreboard players add #lcg ris.rng 12345
scoreboard players operation out ris.rng = #lcg ris.rng