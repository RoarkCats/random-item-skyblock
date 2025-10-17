execute as @e[tag=RISgen] at @s if block ~ ~-1 ~ repeating_command_block{powered:1b} run tag @s add gen_off


tag @e[tag=!gen_off,tag=RISgen,limit=1,sort=random] add itemOrigin

execute as @e[tag=RISgen,tag=itemOrigin] at @s run function ris:custom-items/repeat/dif_item

execute as @e[tag=!gen_off,tag=RISgen,tag=!itemOrigin] at @s run summon item ~ ~ ~ {Tags:["spawned","blankItem"],Item:{id:"minecraft:stone",Count:1b}}
execute at @e[tag=RISgen,tag=itemOrigin] as @e[type=item,tag=blankItem] run data modify entity @s Item merge from entity @e[type=item,nbt={Age:0s},limit=1,sort=nearest] Item

tag @e[type=item,tag=blankItem] remove blankItem
tag @e[tag=RISgen,tag=itemOrigin] remove itemOrigin


tag @e[tag=RISgen] remove gen_off