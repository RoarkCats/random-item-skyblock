$execute unless entity @s[tag=ris.vein_inverse] positioned $(x) $(y) $(z) run function ris:alchemy/debug/jigsaw/check_block with entity @s data
$execute if entity @s[tag=ris.vein_inverse] positioned $(x) $(y) $(z) run function ris:alchemy/debug/structure/check_block with entity @s data
execute if score #temp ris.timer matches -1 run return 0

$scoreboard players set #temp0 ris.timer $(x)
$scoreboard players set #temp1 ris.timer $(y)
$scoreboard players set #temp2 ris.timer $(z)
data modify storage ris:vein update set value []


scoreboard players add #temp0 ris.timer 1
function ris:alchemy/debug/jigsaw/score_to_pos
function ris:alchemy/debug/jigsaw/new_pos_todo with storage ris:vein pos

scoreboard players remove #temp0 ris.timer 2
function ris:alchemy/debug/jigsaw/score_to_pos
function ris:alchemy/debug/jigsaw/new_pos_todo with storage ris:vein pos

scoreboard players add #temp0 ris.timer 1
scoreboard players add #temp1 ris.timer 1
function ris:alchemy/debug/jigsaw/score_to_pos
function ris:alchemy/debug/jigsaw/new_pos_todo with storage ris:vein pos

scoreboard players remove #temp1 ris.timer 2
function ris:alchemy/debug/jigsaw/score_to_pos
function ris:alchemy/debug/jigsaw/new_pos_todo with storage ris:vein pos

scoreboard players add #temp1 ris.timer 1
scoreboard players add #temp2 ris.timer 1
function ris:alchemy/debug/jigsaw/score_to_pos
function ris:alchemy/debug/jigsaw/new_pos_todo with storage ris:vein pos

scoreboard players remove #temp2 ris.timer 2
function ris:alchemy/debug/jigsaw/score_to_pos
function ris:alchemy/debug/jigsaw/new_pos_todo with storage ris:vein pos


$execute if entity @s[tag=ris.vein_inverse] positioned $(x) $(y) $(z) run function ris:alchemy/debug/structure/update with entity @s data