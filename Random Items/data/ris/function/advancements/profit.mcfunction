advancement revoke @s only ris:alchemy/transmutation/profit_trigger
execute if entity @s[advancements={ris:alchemy/transmutation/profit=true}] run return 0

execute as @n[type=wandering_trader,tag=ris.trader] unless entity @s[tag=!ris.feature_trader,tag=!ris.structure_trader] run return fail
advancement grant @s only ris:alchemy/transmutation/profit