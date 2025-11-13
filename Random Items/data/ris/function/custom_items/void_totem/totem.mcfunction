tag @s[tag=ris.a_dance_with_death] remove ris.a_dance_with_death

advancement grant @s[advancements={ris:ris/an_endless_abyss/void_totem=false}] only ris:ris/an_endless_abyss/void_totem


particle totem_of_undying ~ ~ ~ 0.2 0.2 0.2 1 100
playsound item.totem.use player @a ~ ~ ~

tag @s add ris.totem_fx
schedule function ris:custom_items/void_totem/fx 2t
# effects need to be before tp to not trigger star_gazer adv, also why it has to be 2t instead of 1t

execute if predicate ris:overworld run tp @s ~ 384 ~
execute unless predicate ris:overworld run tp @s ~ 320 ~

damage @s 10000 ris:knowledge