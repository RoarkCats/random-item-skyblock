# run by custom_items/trader/knowledge as thrower (origin)
scoreboard players reset #hint ris.alchemy_hint
execute if score @s ris.alchemy_hint matches 3.. run return 0
scoreboard players add @s ris.alchemy_hint 1

execute store result score rng ris.rng run random value 1..1000
scoreboard players operation rng ris.rng %= @s ris.alchemy_hint

execute unless score rng ris.rng matches 0 run scoreboard players remove @s ris.alchemy_hint 1
execute if score rng ris.rng matches 0 run scoreboard players operation #hint ris.alchemy_hint = @s ris.alchemy_hint
# execute if score rng ris.rng matches 0 run scoreboard players add count ris.rng 1