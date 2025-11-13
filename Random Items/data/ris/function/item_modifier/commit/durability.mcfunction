data modify entity @s Item.components merge from storage ris:generator components[{id:"durability"}].nbt
data modify entity @s Item.components.minecraft:lore append from storage ris:generator components[{id:"durability"}].lore

# need to do this stupid work-around because "set_components" item modifiers don't work period when the item is illegal -,- (durability without max_stack_size 1)
execute store result score #max_stack_size ris.rng run data get entity @s Item.components.minecraft:max_stack_size
execute if score #max_stack_size ris.rng matches 0 store result score #max_stack_size ris.rng run function ris:alchemy/custom_stack_none
data modify entity @s Item.components.minecraft:max_stack_size set value 1