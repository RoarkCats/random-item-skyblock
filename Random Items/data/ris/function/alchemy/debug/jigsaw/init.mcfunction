tag @s remove ris.new

summon item_display ~ ~ ~ {item:{id:"stone"},Tags:["ris.temp_item"]}
function ris:alchemy/debug/jigsaw/get_block

data modify entity @s data.id set from entity @s UUID[0]


data modify storage ris:vein pos set value {}
execute store result storage ris:vein pos.x int 1 run data get entity @s Pos[0]
execute store result storage ris:vein pos.y int 1 run data get entity @s Pos[1]
execute store result storage ris:vein pos.z int 1 run data get entity @s Pos[2]

data modify storage ris:vein miners append value {id:0,todo:[],done:[]}
data modify storage ris:vein miners[-1].id set from entity @s data.id
data modify storage ris:vein miners[-1].todo append from storage ris:vein pos
data modify storage ris:vein miners[-1].done append from storage ris:vein pos


function ris:alchemy/debug/jigsaw/marker_tick with entity @s data