title @a title {"text":"Round Over","color":"red","bold":true}
title @a subtitle [{"selector":"@a[tag=!ris-dead]","color":"red"},{"text":" Wins!","color":"red","bold":true}]
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1
execute at @a run playsound block.note_block.chime master @a ~ ~ ~ 2 1

execute at @a[tag=!ris-dead] run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["ris-firework"]}

function ris:skywars/stop
stopsound @s master minecraft:block.anvil.land
title @a actionbar {"text":""}