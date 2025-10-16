scoreboard players add firework risSkywars 1

execute if score firework risSkywars matches 10 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1b,Colors:[I;7384831,1869567,3920383,1497431],FadeColors:[I;13631468]}]}}}}
execute if score firework risSkywars matches 20 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Trail:1b,Colors:[I;16775511,16769577,14251314],FadeColors:[I;13631468]}]}}}}
execute if score firework risSkywars matches 30 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1b,Colors:[I;16728313,13186047,7350745],FadeColors:[I;13631468]}]}}}}
execute if score firework risSkywars matches 40 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Trail:1b,Colors:[I;16711680,16729907,16743434],FadeColors:[I;13631468]}]}}}}
execute if score firework risSkywars matches 50 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Trail:1b,Colors:[I;12472319,4607,4243455],FadeColors:[I;13631468]}]}}}}
execute if score firework risSkywars matches 60 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Trail:1b,Colors:[I;3547233,1354,1923189],FadeColors:[I;13631468]}]}}}}
execute if score firework risSkywars matches 70 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1b,Colors:[I;5818626,5042722,13762327],FadeColors:[I;13631468]}]}}}}
execute if score firework risSkywars matches 80 run summon firework_rocket ^ ^ ^2 {LifeTime:30,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Trail:1b,Colors:[I;393198,7986126,12000222],FadeColors:[I;13631468]}]}}}}

tp @s ~ ~ ~ ~5 ~
execute if score firework risSkywars matches 80 run kill @s
execute if score firework risSkywars matches 80 run scoreboard players set firework risSkywars 0