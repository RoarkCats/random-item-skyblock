data remove entity @s Item.components.minecraft:custom_data.ris.pos
item modify entity @s contents [{"function":"set_lore","entity":"this","lore":[],"mode":"replace_section","offset":1,"size":1}]

particle end_rod ~ ~.4 ~ 0.2 0.2 0.2 0 10
playsound item.axe.scrape block @a ~ ~ ~ 1 0.6

function ris:alchemy/empty_cauldron