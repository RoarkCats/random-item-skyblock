advancement revoke @s only ris:ris/lets_get_crafting/rocket_launcher_trigger
execute if entity @s[advancements={ris:ris/lets_get_crafting/rocket_launcher=true}] run return 0

execute anchored eyes positioned ^ ^ ^ if entity @n[type=firework_rocket,distance=..1,nbt={Life:0}] run advancement grant @s only ris:ris/lets_get_crafting/rocket_launcher