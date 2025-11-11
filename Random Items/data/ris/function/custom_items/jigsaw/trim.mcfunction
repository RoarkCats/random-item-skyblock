# Lava Check
execute if score #trim ris.rng matches 0 store success score #lava ris.rng positioned ~ ~ ~1 run fill ~ ~ ~ ~15 ~-4 ~ jigsaw{name:"ris:temp"} replace lava
execute if score #trim ris.rng matches 1 store success score #lava ris.rng positioned ~1 ~ ~ run fill ~ ~ ~ ~ ~-4 ~15 jigsaw{name:"ris:temp"} replace lava
execute if score #trim ris.rng matches 2 store success score #lava ris.rng positioned ~ ~ ~-1 run fill ~15 ~ ~15 ~ ~-4 ~15 jigsaw{name:"ris:temp"} replace lava
execute if score #trim ris.rng matches 3 store success score #lava ris.rng positioned ~-1 ~ ~ run fill ~15 ~ ~15 ~15 ~-4 ~ jigsaw{name:"ris:temp"} replace lava
execute if score #trim ris.rng matches 4 store success score #lava ris.rng positioned ~ ~1 ~ run fill ~ ~-4 ~ ~15 ~-4 ~15 jigsaw{name:"ris:temp"} replace lava

execute if score #trim ris.rng matches 0 if score #lava ris.rng matches 1 positioned ~ ~ ~1 run fill ~ ~ ~ ~15 ~-4 ~ lava replace jigsaw{name:"ris:temp"}
execute if score #trim ris.rng matches 1 if score #lava ris.rng matches 1 positioned ~1 ~ ~ run fill ~ ~ ~ ~ ~-4 ~15 lava replace jigsaw{name:"ris:temp"}
execute if score #trim ris.rng matches 2 if score #lava ris.rng matches 1 positioned ~ ~ ~-1 run fill ~15 ~ ~15 ~ ~-4 ~15 lava replace jigsaw{name:"ris:temp"}
execute if score #trim ris.rng matches 3 if score #lava ris.rng matches 1 positioned ~-1 ~ ~ run fill ~15 ~ ~15 ~15 ~-4 ~ lava replace jigsaw{name:"ris:temp"}
execute if score #trim ris.rng matches 4 if score #lava ris.rng matches 1 positioned ~ ~1 ~ run fill ~ ~-4 ~ ~15 ~-4 ~15 lava replace jigsaw{name:"ris:temp"}

# Trim
execute if score #trim ris.rng matches 0 if score #lava ris.rng matches 0 run fill ~ ~ ~ ~15 ~-4 ~ air replace stone
execute if score #trim ris.rng matches 1 if score #lava ris.rng matches 0 run fill ~ ~ ~ ~ ~-4 ~15 air replace stone
execute if score #trim ris.rng matches 2 if score #lava ris.rng matches 0 run fill ~15 ~ ~15 ~ ~-4 ~15 air replace stone
execute if score #trim ris.rng matches 3 if score #lava ris.rng matches 0 run fill ~15 ~ ~15 ~15 ~-4 ~ air replace stone
execute if score #trim ris.rng matches 4 if score #lava ris.rng matches 0 run fill ~ ~-4 ~ ~15 ~-4 ~15 air replace stone

# Loop
execute if score #lava ris.rng matches 1 run scoreboard players add #trim ris.rng 1

execute if score #trim ris.rng matches 4 if score #lava ris.rng matches 0 positioned ~ ~1 ~ run function ris:custom_items/jigsaw/trim
execute if score #trim ris.rng matches 3 if score #lava ris.rng matches 0 positioned ~-1 ~ ~ run function ris:custom_items/jigsaw/trim
execute if score #trim ris.rng matches 2 if score #lava ris.rng matches 0 positioned ~ ~ ~-1 run function ris:custom_items/jigsaw/trim
execute if score #trim ris.rng matches 1 if score #lava ris.rng matches 0 positioned ~1 ~ ~ run function ris:custom_items/jigsaw/trim
execute if score #trim ris.rng matches 0 if score #lava ris.rng matches 0 positioned ~ ~ ~1 run function ris:custom_items/jigsaw/trim