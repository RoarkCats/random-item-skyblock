particle end_rod ~ ~.4 ~ 0.2 0.2 0.2 0.04 1
particle smoke ~ ~.4 ~ 0.2 0.2 0.2 0 1
playsound block.dispenser.fail block @a ~ ~ ~ 0.2 2

function ris:alchemy/structure/chain/clone with entity @n[type=item,distance=..1,tag=ris.schematic] Item.components.minecraft:custom_data.ris.pos