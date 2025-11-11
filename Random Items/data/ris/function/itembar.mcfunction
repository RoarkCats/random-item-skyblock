bossbar set ris:rdtimer players @a
execute store result bossbar ris:rdtimer max run scoreboard players get delay ris.timer
execute store result bossbar ris:rdtimer value run scoreboard players get time ris.timer
#execute if score delay ris.timer matches ..99 run bossbar set ris:rdtimer visible false