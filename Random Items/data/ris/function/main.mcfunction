# Triggers
scoreboard players enable @a ris.receive_items
execute as @a[scores={ris.receive_items=1..}] at @s run function ris:receive_trigger
scoreboard players set @a ris.receive_items 0


# Item Giver
execute if score special_items ris.settings matches 1 unless score creator_heads ris.special_item_settings matches 0 if score same_items ris.settings matches 1 if score time ris.timer = half_delay ris.timer run loot give @a[tag=!ris.non_receiver,predicate=ris:creator_heads/phoenixsc] loot ris:random_item
execute if score special_items ris.settings matches 1 unless score creator_heads ris.special_item_settings matches 0 if score same_items ris.settings matches 0 if score time ris.timer = half_delay ris.timer as @a[predicate=ris:creator_heads/phoenixsc] run loot give @s[tag=!ris.non_receiver] loot ris:random_item

execute unless score item_giver ris.settings matches 0 if score same_items ris.settings matches 1 if score time ris.timer >= delay ris.timer as @r run loot give @a[tag=!ris.non_receiver] loot ris:random_item
execute unless score item_giver ris.settings matches 0 if score same_items ris.settings matches 0 if score time ris.timer >= delay ris.timer as @a run loot give @s[tag=!ris.non_receiver] loot ris:random_item


# Timer Stuff
execute unless score item_giver ris.settings matches 0 if score time ris.timer >= delay ris.timer run scoreboard players set time ris.timer 0
execute if score delay ris.timer matches ..4 run scoreboard players set delay ris.timer 5
scoreboard players add time ris.timer 1

scoreboard players operation half_delay ris.timer = delay ris.timer
scoreboard players operation half_delay ris.timer /= #2 ris.timer


# Functions
execute if score dragon_spawn_egg_prot ris.settings matches 1 as @e[type=ender_dragon,tag=!ris.retagged] at @s run function ris:dragon_spawned
execute as @e[tag=!ris.retagged] run function ris:retag_old_tags
execute if score special_items ris.settings matches 1 run function ris:custom_items/main
execute if score special_items ris.settings matches 1 as @e[type=item,tag=!ris.normal_item] at @s run function ris:custom_items/item
execute as @a run function ris:advancements/main
execute as @e[type=#ris:untamable,tag=!ris.tamed] run function ris:untamable_fix
function ris:itembar

execute if score in_game ris.skywars matches 1 run function ris:skywars/main
execute as @e[tag=ris.firework] at @s run function ris:skywars/firework
execute as @e[type=marker,tag=!ris.spawned_marker] unless entity @s[tag=!ris.p1,tag=!ris.m1] at @s run function ris:skywars/spawn_markers