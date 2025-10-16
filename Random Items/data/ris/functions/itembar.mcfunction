bossbar set minecraft:rdtimer players @a
execute unless score delay rdtimer matches 0 run execute store result bossbar minecraft:rdtimer max run scoreboard players get give_item item_timer
execute unless score delay rdtimer matches 0 run execute store result bossbar minecraft:rdtimer value run scoreboard players get give item_timer
#execute unless score delay rdtimer matches 0 run execute if score give_item item_timer matches ..99 run bossbar set minecraft:rdtimer visible false