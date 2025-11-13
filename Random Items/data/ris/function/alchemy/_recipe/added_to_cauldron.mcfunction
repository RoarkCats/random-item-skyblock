tag @s add ris.in_cauldron
execute if entity @s[tag=ris.transmuted,tag=!ris.alchemy_book] run return 1

playsound entity.witch.drink block @a ~ ~ ~ 1 0.7
playsound item.ink_sac.use block @a ~ ~ ~ 1 0.5
# or
# playsound item.bucket.fill block @a ~ ~ ~ 1 0.7
# playsound item.ink_sac.use block @a ~ ~ ~ 1 0.5

particle wax_off ~ ~ ~ .1 .1 .1 1 4
particle splash ~ ~ ~ .2 .1 .2 0 6
particle mycelium ~ ~ ~ .3 .1 .3 2 6
particle dolphin ~ ~ ~ .3 .1 .3 2 12
particle ominous_spawning ~ ~ ~ .3 .1 .3 0.1 4