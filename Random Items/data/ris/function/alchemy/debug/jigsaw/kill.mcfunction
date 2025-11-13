# $tellraw @a ["Debug: mined - ",{"storage":"ris:vein","nbt":"miners[{id:$(id)}].mined"}]

$execute store result score #count ris.timer if data storage ris:vein miners[{id:$(id)}].items[]
# tellraw @a ["Debug: mined unique - ",{"score":{"name":"#count","objective":"ris.timer"}}]
execute if score #count ris.timer matches 64.. run advancement grant @p[distance=..64] only ris:alchemy/transmutation/clean_slate

$data remove storage ris:vein miners[{id:$(id)}]

tag @s add ris.dead
kill @s[type=marker]