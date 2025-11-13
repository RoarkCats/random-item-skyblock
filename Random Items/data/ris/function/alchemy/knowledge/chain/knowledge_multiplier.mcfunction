# run as/at all knowledge multipliers from /alchemy/main every tick

execute unless block ~ ~-0.5 ~ chain_command_block run return run kill @s


execute positioned ~ ~.5 ~ align xyz as @n[type=wandering_trader,tag=ris.trader,tag=!ris.trader_multiplied,dx=0] run function ris:alchemy/knowledge/chain/multiply

particle scrape ~ ~0.4 ~ 0.15 0.15 0.15 1 3