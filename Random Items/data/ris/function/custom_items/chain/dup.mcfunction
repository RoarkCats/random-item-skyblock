playsound block.beacon.power_select block @a ~ ~ ~ 1 0.9

data merge entity @s {Item:{count:16}}
data merge entity @s[predicate=ris:item_unstackable] {Item:{components:{max_stack_size:16}}}

tag @s add ris.spawned_item
tag @s add ris.normal_item

setblock ~ ~-0.5 ~ air