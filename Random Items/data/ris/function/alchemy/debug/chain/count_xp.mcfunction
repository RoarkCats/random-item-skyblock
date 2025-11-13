# run by Void Multiplier when nearest player lacks Divide By Zero advancement as all new xp orbs
execute store result score #temp ris.rng run data get entity @s Value
scoreboard players operation #count ris.rng += #temp ris.rng 