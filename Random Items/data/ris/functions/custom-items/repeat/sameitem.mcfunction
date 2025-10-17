forceload add 0 0
setblock 0 255 0 chest


execute unless entity @e[tag=RISgen,limit=1,tag=sameGen] store result score genrng item_timer run loot insert 0 255 0 loot ris:rng
tag @e[tag=RISgen,limit=1] add sameGen

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn

execute as @e[tag=RISgen,limit=1,tag=!generated] at @s run function ris:custom-items/repeat/spawn


forceload remove 0 0
setblock 0 255 0 air