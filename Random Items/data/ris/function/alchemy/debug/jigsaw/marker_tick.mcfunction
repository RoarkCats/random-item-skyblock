$execute unless data storage ris:vein miners[{id:$(id)}].todo[0] unless data storage ris:vein miners[{id:$(id)}].priority[0] run return run function ris:alchemy/debug/jigsaw/kill with entity @s data
$execute if entity @s[tag=ris.vein_inverse] store result score #temp ris.timer run data get storage ris:vein miners[{id:$(id)}].done
execute if score #temp ris.timer >= inverse_vein_miner_range ris.settings if entity @s[tag=ris.vein_inverse] run return run function ris:alchemy/debug/jigsaw/kill with entity @s data
$execute store result score #temp ris.timer run data get storage ris:vein miners[{id:$(id)}].mined
execute if score #temp ris.timer >= vein_miner_block_limit ris.settings run return run function ris:alchemy/debug/jigsaw/kill_max

$data modify storage ris:vein pos.id set value $(id)
$execute if entity @s[tag=ris.vein_inverse] if data storage ris:vein miners[{id:$(id)}].priority[0] run function ris:alchemy/debug/structure/get_priority with entity @s data
$function ris:alchemy/debug/jigsaw/process_pos with storage ris:vein miners[{id:$(id)}].todo[0]
$data remove storage ris:vein miners[{id:$(id)}].todo[0]

execute if entity @s[tag=ris.vein_inverse] run return 0
$execute unless score #temp ris.timer matches -1 run data modify storage ris:vein miners[{id:$(id)}].todo append from storage ris:vein update[]
$execute unless score #temp ris.timer matches -1 run data modify storage ris:vein miners[{id:$(id)}].done append from storage ris:vein update[]