# run by alchemy/structure/chain/container_scan_1|clone as container marker
# uses index macro from container marker to extract container from array and drop contents as items
summon chest_minecart ~ ~ ~ {Tags:[ris.clone_container_items]}
$data modify entity @n[type=chest_minecart,tag=ris.clone_container_items] Items set from storage ris:random containers[$(index)]
kill @n[type=chest_minecart,tag=ris.clone_container_items]
kill @s[type=marker]