# run by ../component_gambler as oldest component item if there's at least 2 total component items
tag @s add ris.this
tag @n[type=item,tag=!ris.this,tag=ris.tagged_item,tag=ris.components,tag=!ris.components_locked,tag=!ris.spawned_item,distance=..0.5,nbt={PickupDelay:0s,Item:{count:1}},sort=arbitrary] add ris.that

execute as @n[type=item,tag=ris.that] run function ris:item_modifier/_util/get
data modify storage ris:generator components_merge set from storage ris:generator components
kill @n[type=item,tag=ris.that]

function ris:item_modifier/_util/get

function ris:item_modifier/_util/merge

function ris:item_modifier/_util/commit

tag @s remove ris.this
tag @s add ris.spawned_item


setblock ~ ~-0.5 ~ air

playsound block.amethyst_block.resonate block @a ~ ~ ~ 1 0.5
playsound block.beacon.power_select block @a ~ ~ ~ 1 1.1
playsound block.anvil.use block @a ~ ~ ~ 1 1.2

particle trial_spawner_detection_ominous ~ ~-0.2 ~ 0.2 0.2 0.2 0 25