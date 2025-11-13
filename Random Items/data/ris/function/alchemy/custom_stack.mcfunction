# Run by custom_items/item as/at item[tag=ris.normal_item,tag=ris.custom_stack] in water_cauldron


# Tag 2nd item to compare with
tag @s add this
execute align xyz as @n[type=item,tag=!this,tag=ris.normal_item,dx=0,sort=random] run tag @s add that
execute unless entity @n[type=item,tag=that] run return run tag @s remove this
tag @s remove this

# Save nbt for comparison
data modify storage ris:stack item1 set from entity @s Item
execute store result score #temp1 ris.timer run data get storage ris:stack item1.components.minecraft:max_stack_size
data remove storage ris:stack item1.components.minecraft:max_stack_size
data modify storage ris:stack item1.components merge value {}
data remove storage ris:stack item1.count

data modify storage ris:stack item2 set from entity @n[type=item,tag=that] Item
execute store result score #temp2 ris.timer run data get storage ris:stack item2.components.minecraft:max_stack_size
data remove storage ris:stack item2.components.minecraft:max_stack_size
data modify storage ris:stack item2.components merge value {}
data remove storage ris:stack item2.count

# Check nbt matches
scoreboard players set #temp ris.timer 0
execute store success score #temp ris.timer run data modify storage ris:stack item1 set from storage ris:stack item2
execute if score #temp ris.timer matches 1 run return run tag @n[type=item,tag=that] remove that

# Fix normal max stack sizes (1, 16, 64)
execute if score #temp1 ris.timer matches 0 store result score #temp1 ris.timer run function ris:alchemy/custom_stack_none
execute if score #temp2 ris.timer matches 0 store result score #temp2 ris.timer as @n[type=item,tag=that] run function ris:alchemy/custom_stack_none

# Set max_stack_size to highest value of the two
execute if score #temp1 ris.timer = #temp2 ris.timer run return run tag @n[type=item,tag=that] remove that
execute if score #temp1 ris.timer > #temp2 ris.timer store result entity @n[type=item,tag=that] Item.components.minecraft:max_stack_size int 1 run scoreboard players get #temp1 ris.timer
execute if score #temp1 ris.timer < #temp2 ris.timer store result entity @s Item.components.minecraft:max_stack_size int 1 run scoreboard players get #temp2 ris.timer

function ris:alchemy/empty_cauldron

advancement grant @p[distance=..8] only ris:alchemy/transmutation/stack_size_transmutation

#particle witch ~ ~0.5 ~ .1 .1 .1 0 6
particle sneeze ~ ~0.5 ~ .1 .1 .1 0 10
playsound block.amethyst_cluster.step block @a ~ ~ ~ 1 1.1

tag @n[type=item,tag=that] remove that