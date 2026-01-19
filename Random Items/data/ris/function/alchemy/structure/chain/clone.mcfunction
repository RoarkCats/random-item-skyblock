#~~~# forceload (need to do chunks individually to not overwrite existing forceloads)
$scoreboard players set #temp0 ris.timer $(x)
$scoreboard players set #temp2 ris.timer $(z)
scoreboard players operation #temp0 ris.timer /= #16 ris.timer
scoreboard players operation #temp2 ris.timer /= #16 ris.timer
$scoreboard players set #temp3 ris.timer $(x1)
$scoreboard players set #temp5 ris.timer $(z1)
scoreboard players operation #temp3 ris.timer /= #16 ris.timer
scoreboard players operation #temp5 ris.timer /= #16 ris.timer 
# remember direction separately
execute if score #temp0 ris.timer > #temp3 ris.timer run scoreboard players set #temp1 ris.timer -1
execute if score #temp0 ris.timer < #temp3 ris.timer run scoreboard players set #temp1 ris.timer 1
execute if score #temp2 ris.timer > #temp5 ris.timer run scoreboard players set #temp4 ris.timer -1
execute if score #temp2 ris.timer < #temp5 ris.timer run scoreboard players set #temp4 ris.timer 1
# align to chunk via precision loss hack
scoreboard players operation #temp ris.timer = #temp2 ris.timer
data remove storage ris:random forceload
$execute in $(dim) positioned $(x) $(y) $(z) positioned ~29999992 ~-8 ~29999992 positioned ~108086391056891904 ~108086391056891904 ~108086391056891904 positioned ~-108086391056891904 ~-108086391056891904 ~-108086391056891904 positioned ~-30000000 ~ ~-30000000 run function ris:alchemy/structure/chain/chunk_row_x

# scan containers
$scoreboard players set #temp0 ris.timer $(ox)
$scoreboard players set #temp1 ris.timer $(oy)
$scoreboard players set #temp2 ris.timer $(oz)
data modify storage ris:random containers set value []
scoreboard players set #containers ris.rng 0
scoreboard players set #success ris.rng 0
function ris:alchemy/structure/chain/row_x

# clone
$execute store success score #success ris.rng run clone from $(dim) $(x) $(y) $(z) $(x1) $(y1) $(z1) ~ ~ ~ filtered #ris:clonable
$execute in $(dim) run function ris:alchemy/structure/chain/forceload_remove with storage ris:random forceload[0]
execute if score #success ris.rng matches 0 run return run function ris:alchemy/structure/chain/fail_fx

# remove block item data
$fill ~ ~ ~ ~$(ox) ~$(oy) ~$(oz) jukebox replace jukebox
$fill ~ ~ ~ ~$(ox) ~$(oy) ~$(oz) lectern replace lectern
$scoreboard players set #temp0 ris.timer $(ox)
$scoreboard players set #temp1 ris.timer $(oy)
$scoreboard players set #temp2 ris.timer $(oz)
function ris:alchemy/structure/chain/row_x
execute as @e[type=marker,tag=ris.clone_container_scan] at @s run function ris:alchemy/structure/chain/drop_container_index_items with entity @s data

# effects
playsound entity.villager.work_cartographer block @a ~ ~ ~ 2 1
playsound block.vault.close_shutter block @a ~ ~ ~ 2 0.8
playsound item.trident.return block @a ~ ~ ~ 2 0.7

kill @s[type=item]
kill @n[type=item,distance=..1,tag=ris.schematic]