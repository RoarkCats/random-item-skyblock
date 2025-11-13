# derivative of jigsaw Vein Miner

execute if block ~ ~-0.1 ~ #ris:fluid run return 0

execute positioned ~ ~-0.1 ~ align xyz run summon marker ~ ~ ~ {Tags:["ris.vein","ris.vein_inverse","ris.new"],data:{block:"",id:0}}
execute positioned ~ ~-0.1 ~ align xyz as @n[type=marker,tag=ris.vein,tag=ris.new] run function ris:alchemy/debug/jigsaw/init

execute align y run particle end_rod ~ ~ ~ 0.4 0.2 0.4 0 20
execute align y run particle totem_of_undying ~ ~ ~ 0.4 0.2 0.4 0 20

playsound block.grindstone.use block @a ~ ~ ~ 1 0.7
playsound entity.tnt.primed block @a ~ ~ ~ 1 1.6

kill @s[type=item]