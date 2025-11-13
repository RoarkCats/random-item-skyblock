playsound entity.item.break block @a ~ ~ ~ 1 0.9
execute at @s run function ris:alchemy/break_particle with entity @s Item
damage @s[type=item] 100