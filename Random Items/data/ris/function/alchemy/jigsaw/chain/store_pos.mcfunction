execute store result entity @s Item.components.minecraft:custom_data.ris.pos.x int 1 run scoreboard players get #temp0 ris.timer
execute store result entity @s Item.components.minecraft:custom_data.ris.pos.y int 1 run scoreboard players get #temp1 ris.timer
execute store result entity @s Item.components.minecraft:custom_data.ris.pos.z int 1 run scoreboard players get #temp2 ris.timer

item modify entity @s contents [{"function":"minecraft:set_lore","entity":"this","lore":[[{"text":"","italic":true,"color":"blue"},{"text":"Corner 1:  ","italic":false},{"score":{"name":"#temp0","objective":"ris.timer"}},{"text":", "},{"score":{"name":"#temp1","objective":"ris.timer"}},{"text":", "},{"score":{"name":"#temp2","objective":"ris.timer"}}]],"mode":"append"}]

playsound entity.villager.work_cartographer block @a ~ ~ ~ 1 1
particle end_rod ~ ~.4 ~ 0.2 0.2 0.2 0 10