title @a title {"text":"Game Over","color":"red","bold":true}
title @a subtitle [{"selector":"@s","color":"red"}," Wins!"]
playsound block.note_block.chime master @a ~ ~ ~ 16 1
playsound block.note_block.chime master @a ~ ~ ~ 16 1
playsound block.note_block.chime master @a ~ ~ ~ 16 1
playsound block.note_block.chime master @a ~ ~ ~ 16 1
playsound block.note_block.chime master @a ~ ~ ~ 16 1
playsound block.note_block.chime master @a ~ ~ ~ 16 1
playsound block.note_block.chime master @a ~ ~ ~ 16 1
playsound block.note_block.chime master @a ~ ~ ~ 16 1

summon marker ~ ~ ~ {Tags:["ris.firework"]}

function ris:skywars/stop
stopsound @s master block.anvil.land
title @s actionbar {"text":""}