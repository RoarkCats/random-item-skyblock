# run as/at all multipliers from custom_items/main every tick

execute if score generator_names ris.settings matches 1 if entity @s[tag=!ris.name_showing] run function ris:custom_items/toggle_name
execute if score generator_names ris.settings matches 0 if entity @s[tag=!ris.name_hidden] run function ris:custom_items/toggle_name

execute unless block ~ ~-0.5 ~ chain_command_block run return run kill @s


# exit if disabled
execute if score chain_command_block ris.special_item_settings matches 0 run return 0
#

execute as @n[type=item,tag=!ris.spawned_item,distance=..0.5,nbt={PickupDelay:0s,Item:{count:1}},sort=arbitrary] run function ris:custom_items/chain/dup_item

particle dragon_breath ~ ~0.4 ~ 0.15 0.15 0.15 0 3