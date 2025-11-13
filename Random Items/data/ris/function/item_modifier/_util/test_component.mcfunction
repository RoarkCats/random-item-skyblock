# for testing purposes, to be run as @s[type=item] with `ris:generator component` set

execute as @n[type=item] run function ris:item_modifier/_util/get
execute as @n[type=item] run function ris:alchemy/double/repeat/component with storage ris:generator
execute as @n[type=item] run function ris:item_modifier/_util/commit