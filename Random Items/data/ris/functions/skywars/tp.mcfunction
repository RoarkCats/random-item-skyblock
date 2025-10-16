setblock ~ ~-.5 ~ repeating_command_block[facing=up]
execute align xyz run summon armor_stand ~.5 ~ ~.5 {Tags:["RISgen","ris-g"],DisabledSlots:4144959,NoGravity:1b,Invisible:1b,Small:1,CustomNameVisible:1b,CustomName:'{"text":"Item Generator"}'}
tp @r[tag=!ris-tp] ~ ~ ~

gamemode survival @p
#tp @p ~ ~ ~
clear @p
xp set @p 0 levels
xp set @p 0 points
effect give @p regeneration 1 255 true
effect give @p saturation 1 255 true
spawnpoint @p ~ ~ ~

tag @p add ris-tp
tag @s add ris-p2