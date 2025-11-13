execute unless entity @s[nbt={variant:"minecraft:jellie"}] run return fail

data merge entity @s {CustomName:'"Spot"'}
advancement grant @p[scores={ris.cats=1..}] only ris:ris/curious_creatures/cats_spot