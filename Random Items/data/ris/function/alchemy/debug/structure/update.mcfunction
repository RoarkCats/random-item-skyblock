$data modify storage ris:vein miners[{id:$(id)}].done append from storage ris:vein update[]

$execute if block ~ ~ ~ $(block) run return run data modify storage ris:vein miners[{id:$(id)}].todo append from storage ris:vein update[]
$execute if block ~ ~ ~ #ris:fluid run return run data modify storage ris:vein miners[{id:$(id)}].todo append from storage ris:vein update[]
$data modify storage ris:vein miners[{id:$(id)}].priority append from storage ris:vein update[]

execute if block ~ ~ ~ #ris:debug_breakable align xyz positioned ~0.5 ~0.5 ~0.5 run return run function ris:alchemy/debug/fail_fx
setblock ~ ~ ~ air destroy
# log unique drops for adv
data modify entity @s data.item set from entity @n[type=item,distance=..1,tag=!ris.tagged_item] Item.id
function ris:alchemy/debug/structure/log_unique_drops with entity @s data
#$execute store result score #temp ris.timer run data get storage ris:vein miners[{id:$(id)}].mined
# already run in `marker_tick`, not modified between
scoreboard players add #temp ris.timer 1
$execute store result storage ris:vein miners[{id:$(id)}].mined int 1 run scoreboard players get #temp ris.timer