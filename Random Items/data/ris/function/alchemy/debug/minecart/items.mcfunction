# shulker copy method (fix differing data structures)
data modify storage ris:random container set from block ~ ~ ~ Items
# this has to be run here to prevent duping
data modify block ~ ~ ~ LootTable set value ""
setblock ~ ~ ~ shulker_box{Items:[]}
data modify block ~ ~ ~ Items set from storage ris:random container
loot replace block ~ ~ ~ container.0 mine ~ ~ ~
data modify entity @s Item.components."minecraft:container" set from block ~ ~ ~ Items[{Slot:0b}].components."minecraft:container"