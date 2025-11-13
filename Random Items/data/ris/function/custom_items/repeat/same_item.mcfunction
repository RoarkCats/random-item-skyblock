tag @e[tag=!ris.gen_off,tag=ris.generator,limit=1,sort=random] add ris.origin_item

execute as @n[tag=ris.generator,tag=ris.origin_item] at @s positioned ~ ~0.4 ~ run function ris:custom_items/repeat/dif_item

execute as @e[tag=!ris.gen_off,tag=ris.generator,tag=!ris.origin_item] at @s positioned ~ ~0.4 ~ run summon item ~ ~ ~ {Tags:["ris.spawned_item","ris.blank_item"],Item:{id:"minecraft:stone",count:1}}
item replace entity @e[type=item,tag=ris.blank_item] contents from entity @n[type=item,tag=ris.origin_item] contents

tag @e[type=item,tag=ris.blank_item] remove ris.blank_item
tag @e[tag=ris.origin_item] remove ris.origin_item