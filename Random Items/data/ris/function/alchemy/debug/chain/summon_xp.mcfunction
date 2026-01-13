execute if score #loops ris.rng matches ..0 run return 0
scoreboard players remove #loops ris.rng 1

execute store result storage ris:random experience int 1 run scoreboard players get #value ris.rng
function ris:alchemy/debug/chain/new_orb with storage ris:random

function ris:alchemy/debug/chain/summon_xp