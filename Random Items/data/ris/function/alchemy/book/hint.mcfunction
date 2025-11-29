# run by custom_items/trader/knowledge as thrower (origin)
scoreboard players reset #hint ris.alchemy_hint
execute if score @s ris.alchemy_hint matches 3.. run return 0

# chances: 100%, 50%, 33% (1/1+n)
execute store result score rng ris.rng run random value 1..1000
scoreboard players set #chance ris.rng 1
scoreboard players operation #chance ris.rng += @s ris.alchemy_hint
scoreboard players operation rng ris.rng %= #chance ris.rng

execute unless score rng ris.rng matches 0 run return 0
scoreboard players add @s ris.alchemy_hint 1
scoreboard players operation #hint ris.alchemy_hint = @s ris.alchemy_hint