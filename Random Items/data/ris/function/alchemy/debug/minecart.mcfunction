execute unless block ~ ~-0.1 ~ #ris:holds_items unless block ~ ~-0.1 ~ decorated_pot run return run function ris:alchemy/structure/chain/fail_fx
# deliberately not also `ris:holds_item` bc sus blocks dupable...

summon item ~ ~-0.1 ~ {Tags:["ris.blank_item","ris.spawned_item"],Item:{id:"minecraft:stone",count:1}}
execute positioned ~ ~-0.1 ~ as @n[type=item,tag=ris.blank_item] run function ris:alchemy/debug/minecart/container_to_item

playsound block.barrel.close block @a ~ ~ ~ 2 1.2
playsound block.anvil.break block @a ~ ~ ~ 2 0.9
playsound block.chain.fall block @a ~ ~ ~ 2 0.7
execute positioned ~ ~-0.1 ~ align xyz run particle smoke ~.5 ~.5 ~.5 0.3 0.3 0.3 0.01 10
execute positioned ~ ~-0.1 ~ align xyz run particle end_rod ~.5 ~.5 ~.5 0.3 0.3 0.3 0.05 4

kill @s[type=item]