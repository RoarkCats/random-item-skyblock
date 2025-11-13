scoreboard players set #temp ris.timer 0
execute store success score #temp ris.timer unless block ~ ~ ~ #ris:chain_repeat run setblock ~ ~ ~ repeating_command_block[facing=up] destroy
execute if score #temp ris.timer matches 0 run return fail


execute align xyz run summon area_effect_cloud ~0.5 ~0.85 ~0.5 {Tags:["ris.alchemy_generator","ris.structure_generator"],Duration:2147000000,CustomName:'{"text":"Structure Generator"}',Particle:{type:"item",item:{id:"stone",components:{"custom_data":{ris:{structure:""}}}}}}
scoreboard players set @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] ris.generator 2

function ris:custom_items/structure/get_structure
data modify entity @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] Particle.item.components.minecraft:custom_data.ris.structure set string storage ris:random structure


playsound block.stone.place block @a ~ ~ ~ 1 0.8

kill @s[type=item]