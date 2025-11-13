scoreboard players add firework ris.skywars 1

execute if score firework ris.skywars matches 10 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:1b,colors:[I;7384831,1869567,3920383,1497431],fade_colors:[I;13631468]}]}}}}
execute if score firework ris.skywars matches 20 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_trail:1b,colors:[I;16775511,16769577,14251314],fade_colors:[I;13631468]}]}}}}
execute if score firework ris.skywars matches 30 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:1b,colors:[I;16728313,13186047,7350745],fade_colors:[I;13631468]}]}}}}
execute if score firework ris.skywars matches 40 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_trail:1b,colors:[I;16711680,16729907,16743434],fade_colors:[I;13631468]}]}}}}
execute if score firework ris.skywars matches 50 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_trail:1b,colors:[I;12472319,4607,4243455],fade_colors:[I;13631468]}]}}}}
execute if score firework ris.skywars matches 60 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{"minecraft:fireworks":{explosions:[{shape:"creeper",has_trail:1b,colors:[I;3547233,1354,1923189],fade_colors:[I;13631468]}]}}}}
execute if score firework ris.skywars matches 70 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{"minecraft:fireworks":{explosions:[{shape:"star",has_trail:1b,colors:[I;5818626,5042722,13762327],fade_colors:[I;13631468]}]}}}}
execute if score firework ris.skywars matches 80 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",has_trail:1b,colors:[I;393198,7986126,12000222],fade_colors:[I;13631468]}]}}}}

rotate @s ~5 ~
execute if score firework ris.skywars matches 80 run kill @s
execute if score firework ris.skywars matches 80 run scoreboard players reset firework ris.skywars