# run by alchemy/structure/chain/row_y at a container block post-clone

execute if block ~ ~ ~ #ris:holds_items unless data block ~ ~ ~ Items[] run return 0
execute if block ~ ~ ~ #ris:holds_item unless data block ~ ~ ~ item run return 0

# <block> -> new container (wipe)
execute if block ~ ~ ~ #ris:holds_items align xyz unless entity @n[type=marker,tag=ris.clone_container_scan,dx=0] run return run data remove block ~ ~ ~ Items
execute if block ~ ~ ~ #ris:holds_item align xyz unless entity @n[type=marker,tag=ris.clone_container_scan,dx=0] run return run data remove block ~ ~ ~ item

# old container -> old container (do nothing)
execute align xyz run function ris:alchemy/structure/chain/get_container_index with entity @n[type=marker,tag=ris.clone_container_scan,dx=0] data
execute if block ~ ~ ~ #ris:holds_items store success score #container_changed ris.rng run data modify storage ris:random container set from block ~ ~ ~ Items
execute if block ~ ~ ~ #ris:holds_item store success score #container_changed ris.rng run data modify storage ris:random container[0] merge from block ~ ~ ~ item
execute if score #container_changed ris.rng matches 0 align xyz run return run kill @n[type=marker,tag=ris.clone_container_scan,dx=0]

# old container -> new container (wipe, drop old items)
execute if block ~ ~ ~ #ris:holds_items run data remove block ~ ~ ~ Items
execute if block ~ ~ ~ #ris:holds_item run data remove block ~ ~ ~ item

execute align xyz as @n[type=marker,tag=ris.clone_container_scan,dx=0] at @s run function ris:alchemy/structure/chain/drop_container_index_items with entity @s data
# NOTE: "old container -> <block>" handled back in clone function