# data modifying existing orb doesn't update orb size
$execute unless entity @s[type=experience_orb] run summon experience_orb ~ ~ ~ {Value:$(experience),Tags:["ris.new_xp"]}
execute unless entity @s[type=experience_orb] as @n[type=experience_orb,tag=ris.new_xp] run return run function ris:alchemy/debug/chain/new_orb with storage ris:random

tag @s remove ris.new_xp
# random motion
execute store result entity @s Motion[0] double 0.001 run random value -100..100
execute store result entity @s Motion[1] double 0.001 run random value 0..200
execute store result entity @s Motion[2] double 0.001 run random value -100..100