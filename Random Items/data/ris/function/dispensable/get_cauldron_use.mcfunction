# run by dispensable_cauldrons/used_on_cauldron as/at item
execute if items entity @s contents potion[potion_contents=water] if block ~ ~ ~ water_cauldron unless block ~ ~ ~ water_cauldron[level=3] run return 1
execute if items entity @s contents potion[potion_contents=water] if block ~ ~ ~ cauldron run return 1
execute if items entity @s contents water_bucket if block ~ ~ ~ water_cauldron unless block ~ ~ ~ water_cauldron[level=3] run return 2
execute if items entity @s contents water_bucket if block ~ ~ ~ cauldron run return 2
execute if items entity @s contents lava_bucket if block ~ ~ ~ cauldron run return 3
execute if items entity @s contents powder_snow_bucket if block ~ ~ ~ cauldron run return 4
execute if items entity @s contents glass_bottle if block ~ ~ ~ water_cauldron run return 5
execute if items entity @s contents bucket if block ~ ~ ~ water_cauldron[level=3] run return 6
execute if items entity @s contents bucket if block ~ ~ ~ lava_cauldron run return 7
execute if items entity @s contents bucket if block ~ ~ ~ powder_snow_cauldron[level=3] run return 8

return 0