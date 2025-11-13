# run as/at all multipliers from custom_items/main every tick

execute unless block ~ ~-0.5 ~ chain_command_block run return run kill @s


# exit if disabled
execute if score chain_command_block ris.special_item_settings matches 0 run return 0
#

execute as @n[type=item,tag=ris.tagged_item,tag=!ris.failed_dupe,tag=!ris.spawned_item,distance=..0.5,nbt={PickupDelay:0s},sort=arbitrary] run function ris:custom_items/chain/dupe

particle dragon_breath ~ ~0.4 ~ 0.15 0.15 0.15 0 3