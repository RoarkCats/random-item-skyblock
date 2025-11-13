execute store result score @s ris.generator run data get entity @s Offers.Recipes
# +(x)       : 12>+12, 8>+8, 4>+4, 3>+3, 2>+2, 1>+1 : 12>24, 8>16, 4>8, 3>6, 2>4, 1>2
# +(x/2 + 2) : 12>+8, 8>+6,  4>+4, 3>+3, 2>+3, 1>+2 : 12>20, 8>14, 4>8, 3>6, 2>5, 1>3
# +(x/2 + 1) : 12>+7, 8>+5,  4>+3, 3>+2, 2>+2, 1>+1 : 12>19, 8>13, 4>7, 3>5, 2>4, 1>2
scoreboard players operation @s ris.generator /= #2 ris.timer
scoreboard players add @s ris.generator 1
execute if predicate {"condition":"random_chance","chance":0.4} run scoreboard players add @s ris.generator 1