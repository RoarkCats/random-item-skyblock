# Item Giver
execute if score special_items ris.settings matches 1 unless score creator_heads ris.special_item_settings matches 0 if score same_items ris.settings matches 1 if score time ris.timer = half_delay ris.timer run loot give @a[tag=!ris.non_receiver,gamemode=!spectator,nbt=!{Health:0f},predicate=ris:creator_heads/phoenixsc] loot ris:random_item
execute if score special_items ris.settings matches 1 unless score creator_heads ris.special_item_settings matches 0 if score same_items ris.settings matches 0 if score time ris.timer = half_delay ris.timer as @a[predicate=ris:creator_heads/phoenixsc] run loot give @s[tag=!ris.non_receiver,gamemode=!spectator,nbt=!{Health:0f}] loot ris:random_item

execute unless score item_giver ris.settings matches 0 if score same_items ris.settings matches 1 if score time ris.timer >= delay ris.timer as @r[tag=!ris.non_receiver,gamemode=!spectator] run loot give @a[tag=!ris.non_receiver,gamemode=!spectator,nbt=!{Health:0f}] loot ris:random_item
execute unless score item_giver ris.settings matches 0 if score same_items ris.settings matches 0 if score time ris.timer >= delay ris.timer as @a run loot give @s[tag=!ris.non_receiver,gamemode=!spectator,nbt=!{Health:0f}] loot ris:random_item


# Timer Stuff
execute unless score item_giver ris.settings matches 0 if score time ris.timer >= delay ris.timer run scoreboard players set time ris.timer 0
execute if score delay ris.timer matches ..4 run scoreboard players set delay ris.timer 5
scoreboard players add time ris.timer 1

scoreboard players operation half_delay ris.timer = delay ris.timer
scoreboard players operation half_delay ris.timer /= #2 ris.timer


# Functions
execute as @a run function ris:trigger/main
execute if score compendium_auto_revise ris.settings matches 1 run function ris:alchemy/book/update_book_auto
execute if score void_totems ris.settings matches 1 as @a[predicate=ris:y_range_void,gamemode=!spectator] if items entity @s weapon.* *[death_protection] at @s run function ris:custom_items/void_totem/totem
execute if score dragon_spawn_egg_prot ris.settings matches 1 as @e[type=ender_dragon,tag=!ris.dragon] at @s run function ris:dragon_spawned
execute if score special_items ris.settings matches 1 if score alchemy_items ris.settings matches 1 run function ris:alchemy/main
execute if score special_items ris.settings matches 1 run function ris:custom_items/main
execute if score special_items ris.settings matches 1 as @e[type=item] unless entity @s[tag=ris.normal_item,tag=!ris.custom_stack] at @s run function ris:custom_items/item
execute as @a[gamemode=!spectator] run function ris:advancements/main
tag @e[type=#ris:spawnable,tag=!ris.spawnable_old] add ris.spawnable_old
function ris:itembar

execute if score in_game ris.skywars matches 1 run function ris:skywars/main
execute as @e[tag=ris.firework] at @s run function ris:skywars/firework
execute as @e[type=marker,tag=!ris.spawned_marker] unless entity @s[tag=!ris.p1,tag=!ris.m1] at @s run function ris:skywars/spawn_markers