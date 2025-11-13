# run as/at all stack gamblers from /alchemy/main every tick

execute unless block ~ ~-0.5 ~ chain_command_block run return run kill @s


execute as @n[type=item,tag=ris.tagged_item,tag=!ris.failed_dupe,tag=!ris.spawned_item,distance=..0.5,nbt={PickupDelay:0s},sort=arbitrary] run function ris:alchemy/command/chain/dupe

particle sneeze ~ ~0.4 ~ 0.15 0.15 0.15 0 3