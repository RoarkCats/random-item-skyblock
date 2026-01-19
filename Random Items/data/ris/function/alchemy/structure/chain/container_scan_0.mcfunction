# run by alchemy/structure/chain/row_y at a container block pre-clone

execute if block ~ ~ ~ #ris:holds_items unless data block ~ ~ ~ Items[] run return 0
execute if block ~ ~ ~ #ris:holds_item unless data block ~ ~ ~ item run return 0

execute align xyz run summon marker ~.5 ~.5 ~.5 {Tags:["ris.clone_container_scan"]}
execute store result entity @n[type=marker,tag=ris.clone_container_scan] data.index int 1 run scoreboard players get #containers ris.rng
scoreboard players add #containers ris.rng 1

execute if block ~ ~ ~ #ris:holds_items run return run data modify storage ris:random containers append from block ~ ~ ~ Items
# else must be #ris:holds_item
data modify storage ris:random containers append value [{Slot:0b}]
data modify storage ris:random containers[-1][0] merge from block ~ ~ ~ item