advancement revoke @s only ris:alchemy/transmutation/true_random/component_connoisseur/tasty/houdini_trigger

tag @s add ris.houdini
execute if entity @s run summon marker ~ ~ ~ {Tags:["ris.houdini"]}
execute if entity @s run return run schedule function ris:advancements/houdini 1t replace

# scheduled
execute as @a[tag=ris.houdini] at @s unless entity @n[type=marker,tag=ris.houdini,distance=..100] run advancement grant @s only ris:alchemy/transmutation/true_random/component_connoisseur/tasty/houdini
kill @e[type=marker,tag=ris.houdini]
tag @a[tag=ris.houdini] remove ris.houdini