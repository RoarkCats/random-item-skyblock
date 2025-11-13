execute unless entity @s[nbt={variant:"minecraft:all_black"}] run return fail

data merge entity @s {CustomName:'"Moro"'}
advancement grant @p[scores={ris.cats=1..}] only ris:ris/curious_creatures/cats_moro