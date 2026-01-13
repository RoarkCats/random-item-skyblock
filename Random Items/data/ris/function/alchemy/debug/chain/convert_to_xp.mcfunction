# Checks
execute if items entity @s contents *[!count=1] positioned ~ ~-0.5 ~ run return run function ris:custom_items/chain/fail
execute if items entity @s contents #bundles[!bundle_contents=[]] positioned ~ ~-0.5 ~ run return run function ris:custom_items/chain/fail
execute if score shulker_dupe ris.settings matches 0 if entity @s[tag=ris.contains_items] positioned ~ ~-0.5 ~ run return run function ris:custom_items/chain/fail

## __ XP Comparisons __
# 5 xp ~ enderman
# 7 xp ~ xp bottle
# 10 xp ~ blaze, guardian
# 22 xp ~ piglin brute, natural creaking heart
# 29 xp ~ spawner
# 50 xp ~ wither
# 500 xp ~ respawned dragon

execute if items entity @s contents *[rarity="common"] run summon experience_orb ~ ~ ~ {Value:128}
execute if items entity @s contents *[rarity="uncommon"] run summon experience_orb ~ ~ ~ {Value:178}
execute if items entity @s contents *[rarity="rare"] run summon experience_orb ~ ~ ~ {Value:306}
execute if items entity @s contents *[rarity="epic"] run summon experience_orb ~ ~ ~ {Value:384}

scoreboard players set #value ris.rng 36
execute store result score #loops ris.rng run data get entity @s Item.components
function ris:alchemy/debug/chain/summon_xp

scoreboard players set #value ris.rng 72
#-
execute store result score #loops ris.rng run data get entity @s Item.components."minecraft:enchantments".levels
execute store result score #temp ris.rng run data get entity @s Item.components."minecraft:stored_enchantments".levels
scoreboard players operation #loops ris.rng += #temp ris.rng
#-
execute if items entity @s contents #ris:unstackable run scoreboard players add #loops ris.rng 1
#-
execute if entity @s[tag=ris.contains_items] store result score #temp ris.rng run data get entity @s Item.components."minecraft:container"
execute if entity @s[tag=ris.contains_items] run scoreboard players operation #loops ris.rng += #temp ris.rng
#-
function ris:alchemy/debug/chain/summon_xp

scoreboard players set #loops ris.rng 1
execute if entity @s[tag=ris.components] store result score #value ris.rng run data get entity @s Item.components."minecraft:custom_data".ris.components[{id:"level"}].ref.level
execute if entity @s[tag=ris.components] run scoreboard players operation #value ris.rng *= #16 ris.timer
execute if entity @s[tag=ris.components,tag=ris.components_locked] run scoreboard players operation #value ris.rng /= #2 ris.timer
execute if entity @s[tag=ris.components] run function ris:alchemy/debug/chain/summon_xp



playsound entity.splash_potion.break block @a ~ ~ ~ 1 1.1
playsound entity.splash_potion.break block @a ~ ~ ~ 1 1.2
playsound block.beacon.power_select block @a ~ ~ ~ 1 1.3

scoreboard players set #count ris.rng 0
execute as @p[distance=..16,gamemode=!spectator] if entity @s[advancements={ris:alchemy/transmutation/divide_by_zero=false}] as @e[type=experience_orb,distance=0] run function ris:alchemy/debug/chain/count_xp
execute if score #count ris.rng matches 500.. run advancement grant @p[distance=..16,gamemode=!spectator] only ris:alchemy/transmutation/divide_by_zero
# tellraw @a ["Experience: ",{"score":{"name":"#count","objective":"ris.rng"}}]

execute at @s run function ris:alchemy/break_particle with entity @s[type=item] Item
kill @s[type=item]
setblock ~ ~-0.5 ~ air