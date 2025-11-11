tag @s[tag=ris.a_dance_with_death] remove ris.a_dance_with_death


particle totem_of_undying ~ ~ ~ 0.2 0.2 0.2 1 100
playsound item.totem.use player @a ~ ~ ~

execute if predicate ris:overworld run tp @s ~ 384 ~
execute unless predicate ris:overworld run tp @s ~ 320 ~

effect give @s instant_damage 1 101

tag @s add ris.totem_fx
schedule function ris:custom_items/totem/fx 1t