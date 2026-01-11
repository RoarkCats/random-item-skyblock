tag @s add ris.transmuted_ignore


# NOTE: have to do in-cauldron functionally elsewhere... this func wont run there

execute store result score #temp0 ris.timer run data get entity @s Pos[0]
execute store result score #temp1 ris.timer run data get entity @s Pos[1]
execute store result score #temp2 ris.timer run data get entity @s Pos[2]

execute unless items entity @s contents *[custom_data~{ris:{pos:{}}}] run return run function ris:alchemy/jigsaw/chain/store_pos

execute unless function ris:alchemy/jigsaw/chain/check_size run return run function ris:alchemy/jigsaw/chain/fail

function ris:alchemy/jigsaw/chain/store_pos1
item modify entity @s contents [{"function":"set_name","name":{"text":"Clone Schematic"},"target":"item_name"},{"function":"set_lore","entity":"this","lore":[{"text":"Consumed by a Clone Paste","italic":false,"color":"gray"}],"mode":"replace_section","offset":0,"size":1},{"function":"set_components","components":{"rarity":"rare"}}]
data remove entity @s Item.components.minecraft:custom_data.ris.function
data modify entity @s Item.id set value "paper"

particle end_rod ~ ~.4 ~ 0.2 0.2 0.2 0 10
playsound item.book.page_turn block @a ~ ~ ~ 1 1.2
playsound item.axe.scrape block @a ~ ~ ~ 1 1.6