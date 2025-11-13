particle white_smoke

$execute unless block ~ ~ ~ $(block) run return run scoreboard players set #temp ris.timer -1
setblock ~ ~ ~ air destroy
# loot spawn ~ ~ ~ mine ~ ~ ~ shears[enchantments={levels:{silk_touch:1}},tool={rules:[{blocks:"#ris:not_air",correct_for_drops:true}]}]
# setblock ~ ~ ~ air

#$execute store result score #temp ris.timer run data get storage ris:vein miners[{id:$(id)}].mined
# already run in `marker_tick`, not modified between
scoreboard players add #temp ris.timer 1
$execute store result storage ris:vein miners[{id:$(id)}].mined int 1 run scoreboard players get #temp ris.timer