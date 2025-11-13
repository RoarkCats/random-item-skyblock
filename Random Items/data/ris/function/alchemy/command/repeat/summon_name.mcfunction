$execute align xyz run summon area_effect_cloud ~0.5 ~0.85 ~0.5 {Tags:["ris.alchemy_generator","ris.stack_generator"],Duration:2147000000,CustomName:'$(name)',Particle:{type:"item",item:$(item)}}


scoreboard players set @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] ris.generator 2

execute unless items entity @s contents *[custom_data~{ris:{custom_item:1b}}] run return 1
# if custom item
advancement grant @a[distance=..64] only ris:alchemy/transmutation/especially_special
scoreboard players operation @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] ris.generator *= #64 ris.timer
scoreboard players operation @n[type=area_effect_cloud,tag=ris.alchemy_generator,nbt={Age:0}] ris.generator /= cmd_special_items ris.settings