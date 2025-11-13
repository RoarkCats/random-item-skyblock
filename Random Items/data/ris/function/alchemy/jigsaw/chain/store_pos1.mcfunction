execute store result entity @s Item.components.minecraft:custom_data.ris.pos.x1 int 1 run scoreboard players get #temp0 ris.timer
execute store result entity @s Item.components.minecraft:custom_data.ris.pos.y1 int 1 run scoreboard players get #temp1 ris.timer
execute store result entity @s Item.components.minecraft:custom_data.ris.pos.z1 int 1 run scoreboard players get #temp2 ris.timer
data modify entity @s Item.components.minecraft:custom_data.ris.pos.dim set from entity @p Dimension
# can technically do without player with temp Piglin Brute entity data: Brain.memories.minecraft:home.value.dimension

item modify entity @s contents [{"function":"minecraft:set_lore","entity":"this","lore":[[{"text":"","italic":true,"color":"blue"},{"text":"Corner 2:  ","italic":false},{"score":{"name":"#temp0","objective":"ris.timer"}},{"text":", "},{"score":{"name":"#temp1","objective":"ris.timer"}},{"text":", "},{"score":{"name":"#temp2","objective":"ris.timer"}}],[{"text":"Dimension:  ","color":"blue","italic":false},{"nbt":"Dimension","entity":"@p","italic":true}],[{"text":"Block Count:  ","color":"blue","italic":false},{"score":{"name":"#temp","objective":"ris.timer"},"italic":true}]],"mode":"append"}]

playsound entity.villager.work_cartographer block @a ~ ~ ~ 1 1