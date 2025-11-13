execute unless block ~ ~ ~ water_cauldron run return run function ris:alchemy/_recipe/out_cauldron


execute if entity @s[tag=ris.transmuted] run return run function ris:alchemy/_recipe/transmuted


tag @s add this
execute align xyz positioned ~ ~-0.5 ~ run tag @n[type=item,tag=ris.in_cauldron,tag=!this,tag=!ris.dead,dx=0] add that
execute unless entity @n[type=item,tag=that] run return run tag @s remove this

tag @s add ris.recipe
tag @n[type=item,tag=that] add ris.recipe

execute store result score #recipe ris.timer run function ris:alchemy/_recipe/check
execute unless score #recipe ris.timer matches -1 run function ris:alchemy/_recipe/craft

tag @s remove ris.recipe
tag @n[type=item,tag=that] remove ris.recipe

tag @n[type=item,tag=that] remove that
tag @s remove this