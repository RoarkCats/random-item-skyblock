$scoreboard players set #temp ris.timer $(m)

$execute if score #temp ris.timer matches 0..1 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~ ~-$(dy) ~-$(dz) $(x) 0 0 0.0 $(p) force @s
$execute if score #temp ris.timer matches 0..0 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~ ~-$(dy) ~$(dz) $(x) 0 0 0.0 $(p) force @s
$execute if score #temp ris.timer matches 0..0 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~$(dx) ~-$(dy) ~ 0 0 $(z) 0.0 $(p) force @s
$execute if score #temp ris.timer matches 0..1 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~-$(dx) ~-$(dy) ~ 0 0 $(z) 0.0 $(p) force @s

$execute if score #temp ris.timer matches 0..0 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~$(dx) ~ ~$(dz) 0 $(y) 0 0.0 $(p) force @s
$execute if score #temp ris.timer matches 0..0 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~$(dx) ~ ~-$(dz) 0 $(y) 0 0.0 $(p) force @s
$execute if score #temp ris.timer matches 0..0 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~-$(dx) ~ ~$(dz) 0 $(y) 0 0.0 $(p) force @s
$execute if score #temp ris.timer matches 0..1 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~-$(dx) ~ ~-$(dz) 0 $(y) 0 0.0 $(p) force @s

$execute if score #temp ris.timer matches 0..0 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~ ~$(dy) ~-$(dz) $(x) 0 0 0.0 $(p) force @s
$execute if score #temp ris.timer matches 0..0 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~ ~$(dy) ~$(dz) $(x) 0 0 0.0 $(p) force @s
$execute if score #temp ris.timer matches 0..0 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~$(dx) ~$(dy) ~ 0 0 $(z) 0.0 $(p) force @s
$execute if score #temp ris.timer matches 0..0 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,0,0],scale:1} ~-$(dx) ~$(dy) ~ 0 0 $(z) 0.0 $(p) force @s

$execute if score #temp ris.timer matches 0..1 positioned ~$(ox) ~$(oy) ~$(oz) run particle dust{color:[1,2,0],scale:1} ~ ~ ~ $(x) $(y) $(z) 0.0 $(p) force @s


# particle trail{color:[1,0,0],target:[x,y,z],duration:5} not better, need to store dest coords in data and just using corners no good (floppy and too fast), would need to somehow place manually at each block not worth