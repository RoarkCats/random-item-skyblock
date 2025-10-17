tag @s[nbt={Item:{tag:{custom_item:1b}}}] add ris.custom_item

data merge entity @s[tag=!ris.custom_item] {Item:{Count:64b},Motion:[0,0,0]}
execute if score op_cmd ris.settings matches 0 run data merge entity @s[tag=ris.custom_item] {Item:{Count:8b},Motion:[0,0,0]}
execute if score op_cmd ris.settings matches 1 run data merge entity @s[tag=ris.custom_item] {Item:{Count:32b},Motion:[0,0,0]}

tag @s[tag=ris.custom_item] remove ris.custom_item


tag @s add ris.spawned_item