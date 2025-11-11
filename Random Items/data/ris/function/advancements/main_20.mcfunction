execute as @a[advancements={ris:skull_enthusiast={player_head=false}}] run function ris:advancements/player_head_checks

execute as @a[advancements={ris:cobblestone_generator=false}] at @s run function ris:advancements/cobblestone_generator
execute as @e[type=marker,tag=ris.cobble_gen] at @s unless entity @a[advancements={ris:cobblestone_generator=false},distance=..8] run kill @s



schedule function ris:advancements/main_20 20t