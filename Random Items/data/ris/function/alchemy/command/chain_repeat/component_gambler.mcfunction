# run as/at all component gamblers from /alchemy/main every tick

execute unless block ~ ~-0.5 ~ chain_command_block run return run kill @s[type=!player]


execute store result score #temp ris.timer if entity @e[type=item,tag=ris.tagged_item,tag=ris.components,tag=!ris.components_locked,tag=!ris.spawned_item,distance=..0.5,nbt={PickupDelay:0s,Item:{count:1}}]
execute if score #temp ris.timer matches 2.. as @n[type=item,tag=ris.tagged_item,tag=ris.components,tag=!ris.components_locked,tag=!ris.spawned_item,distance=..0.5,nbt={PickupDelay:0s,Item:{count:1}},sort=arbitrary] run function ris:alchemy/command/chain_repeat/combine
execute if score #temp ris.timer matches 1 as @n[type=item,tag=ris.normal_item,tag=!ris.components,tag=!ris.spawned_item,distance=..0.5,nbt={PickupDelay:0s,Item:{count:1}},sort=arbitrary] run function ris:alchemy/command/chain_repeat/combine
# for transferring components to a normal item (lossy), just works, don't overthink/question it :p

particle end_rod ~ ~0.4 ~ 0.15 0.15 0.15 0.01 2