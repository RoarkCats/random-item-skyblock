# run as/at players holding #ris:destroy_range from custom_items/main
# looks bad when item is moving since most particles linger, so only from player when held in mainhand

# structure : 48 blocks in xyz
# jigsaw : 32* blocks in all dir
# giga structure : 150? blocks in all? dir
#...

execute if items entity @s weapon.mainhand repeating_command_block[!custom_data~{ris:{transmuted:1b}}] run return 0

data remove storage ris:destroy_range cube
# size values halved_ (spills over and should be more than halved, though half is convenient)
execute if score structure_block ris.special_item_settings matches 1 if items entity @s weapon.mainhand structure_block run data merge storage ris:destroy_range {cube:{x:10,y:10,z:10, dx:24,dy:24,dz:24, ox:24,oy:24,oz:24, p:25, m:0}}
execute if score jigsaw ris.special_item_settings matches 1 if items entity @s weapon.mainhand jigsaw run data merge storage ris:destroy_range {cube:{x:14,y:14,z:14, dx:32,dy:32,dz:32, ox:0,oy:0,oz:0, p:25, m:0}}
execute if items entity @s weapon.mainhand jigsaw[custom_data~{ris:{function:"double/jigsaw"}}] run return 0
execute if items entity @s weapon.mainhand jigsaw[custom_data~{ris:{function:"jigsaw/structure"}}] run data merge storage ris:destroy_range {cube:{x:1.5,y:1.5,z:1.5, dx:3,dy:3,dz:3, ox:0,oy:0,oz:0, p:4, m:0}}
execute if items entity @s weapon.mainhand jigsaw[custom_data~{ris:{function:"jigsaw/minecart"}}] run data merge storage ris:destroy_range {cube:{x:1.5,y:1.5,z:1.5, dx:3,dy:3,dz:3, ox:0,oy:0,oz:0, p:4, m:0}}
execute if items entity @s weapon.mainhand jigsaw[custom_data~{ris:{function:"jigsaw/command"}}] run data merge storage ris:destroy_range {cube:{x:2,y:2,z:2, dx:4,dy:4,dz:4, ox:0,oy:0,oz:0, p:5, m:0}}
execute if items entity @s weapon.mainhand jigsaw[custom_data~{ris:{function:"jigsaw/chain"}}] run return 0
execute if items entity @s weapon.mainhand repeating_command_block[custom_data~{ris:{function:"jigsaw/repeat"}}] run data merge storage ris:destroy_range {cube:{x:14,y:14,z:14, dx:32,dy:32,dz:32, ox:0,oy:0,oz:0, p:25, m:0}}
execute if items entity @s weapon.mainhand structure_block[custom_data~{ris:{function:"double/structure"}}] run data merge storage ris:destroy_range {cube:{x:70,y:70,z:70, dx:150,dy:150,dz:150, ox:0,oy:0,oz:0, p:40, m:0}}
execute if items entity @s weapon.mainhand structure_block[custom_data~{ris:{function:"structure/minecart"}}] run data merge storage ris:destroy_range {cube:{x:1,y:1,z:1, dx:2,dy:2,dz:2, ox:0,oy:0,oz:0, p:2, m:0}}
execute if items entity @s weapon.mainhand structure_block[custom_data~{ris:{function:"structure/command"}}] run data merge storage ris:destroy_range {cube:{x:1.5,y:1.5,z:1.5, dx:3,dy:3,dz:3, ox:0,oy:0,oz:0, p:4, m:0}}
execute if items entity @s weapon.mainhand structure_block[custom_data~{ris:{function:"structure/chain"}}] run data merge storage ris:destroy_range {cube:{x:1.4,y:1.4,z:1.4, dx:3,dy:3,dz:3, ox:3,oy:3,oz:3, p:3, m:1}}
execute if items entity @s weapon.mainhand repeating_command_block[custom_data~{ris:{function:"structure/repeat"}}] run data merge storage ris:destroy_range {cube:{x:10,y:10,z:10, dx:24,dy:24,dz:24, ox:24,oy:24,oz:24, p:25, m:0}}

function ris:custom_items/destroy_range_disabled with entity @s SelectedItem.components.minecraft:custom_data.ris
execute unless data storage ris:destroy_range cube run return fail
function ris:custom_items/destroy_range_particles with storage ris:destroy_range cube