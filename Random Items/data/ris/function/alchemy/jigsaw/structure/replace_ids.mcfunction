function ris:alchemy/get_random_block
$execute as @e[type=marker,tag=ris.block_shift,distance=..20,nbt={data:{id:$(id)}}] at @s run function ris:alchemy/jigsaw/structure/setblock with storage ris:random 

execute store result score #success ris.rng store result storage ris:random id int 0.9999 run data get storage ris:random id 1
execute unless score #success ris.rng matches 0 run function ris:alchemy/jigsaw/structure/replace_ids with storage ris:random