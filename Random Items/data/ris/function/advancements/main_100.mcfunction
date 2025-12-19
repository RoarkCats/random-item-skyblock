scoreboard players remove @a[scores={ris.containers=1..}] ris.containers 1
scoreboard players remove @a[scores={ris.mob_kills=1..}] ris.mob_kills 2

function ris:advancements/true_alchemist_fix

function ris:alchemy/book/sync_progress

# Fix spectators count up for advancement
scoreboard players remove @a[gamemode=spectator,scores={ris.time_since_death=100..}] ris.time_since_death 100


schedule function ris:advancements/main_100 100t