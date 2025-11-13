execute store result score rng ris.rng run random value 1..1728
execute if score rng ris.rng matches ..63 on origin run advancement grant @s only ris:alchemy/transmutation/unlucky
execute if score rng ris.rng matches ..63 run advancement grant @p[distance=..16] only ris:alchemy/transmutation/unlucky

# Spawn items (1-1728, rolls rounds on .5)
scoreboard players add rng ris.rng 31
loot spawn ~ ~ ~ loot {"pools":[{"rolls":{"type":"score","target":{"type":"fixed","name":"rng"},"score":"ris.rng","scale":0.015625},"entries":[{"type":"item","name":"minecraft:stone","functions":[{"function":"set_components","components":{"max_stack_size":1,"custom_data":"{ris:{blank_item:1b}}"}}]}]}]}
scoreboard players remove rng ris.rng 31
execute as @e[type=item,distance=0] if items entity @s contents stone[custom_data~{ris:{blank_item:1b}}] run tag @s add ris.blank_item
execute unless score cmd_special_items ris.settings matches 0 run loot replace entity @e[type=item,tag=ris.blank_item,distance=0] contents loot ris:random_item
execute if score cmd_special_items ris.settings matches 0 run loot replace entity @e[type=item,tag=ris.blank_item,distance=0] contents loot ris:random_item_trader

# tellraw @a ["Debug: ",{"selector":"@n[type=item,tag=ris.blank_item,distance=0]"}," - ",{"score":{"name":"rng","objective":"ris.rng"}}]

scoreboard players add rng ris.rng 64
execute as @e[type=item,tag=ris.blank_item,distance=0] run function ris:alchemy/double/command/set_count
#

summon firework_rocket ~ ~-0.05 ~ {FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16777215]}]}}}}

kill @s[type=item]