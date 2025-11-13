## methods of comparing blocks:
# "if blocks" annoying to store coords and check, cares about blockstate
# "loot ... mine" requires exceptions for blocks without drops/with different drop ids, 
# "if block" hardcoded (vanilla) list, inefficient, wall_torch vs torch

execute if block ~ ~-0.1 ~ #ris:debug_breakable run return run function ris:alchemy/structure/chain/fail_fx
execute if block ~ ~-0.1 ~ #ris:fluid run return 0

execute positioned ~ ~-0.1 ~ align xyz run summon marker ~ ~ ~ {Tags:["ris.vein","ris.new"],data:{block:"",id:0}}
execute positioned ~ ~-0.1 ~ align xyz as @n[type=marker,tag=ris.vein,tag=ris.new] run function ris:alchemy/debug/jigsaw/init

execute align y run particle end_rod ~ ~-0.5 ~ 0.4 0.4 0.4 0 20

playsound item.axe.scrape block @a ~ ~ ~ 1 0.6
playsound entity.tnt.primed block @a ~ ~ ~ 1 1.8

kill @s[type=item]