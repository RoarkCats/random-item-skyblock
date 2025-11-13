scoreboard players set #smaller ris.rng 0
execute if score cmd_special_items ris.settings matches 32.. run return 0

$setblock ~ ~ ~ $(block) destroy
execute if block ~ ~ ~ #ris:special_blocks run scoreboard players set #smaller ris.rng 1